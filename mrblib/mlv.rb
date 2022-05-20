class Mlv
  def parse_args(argv)
    op = OptionParser.new
    op.program_name = 'mlv'
    opts = {
      line_numbers: false
    }
    op.on('-h', '--help', 'Prints this help') do
      puts op.to_s
      exit
    end
    op.on_tail('-v', '--version', 'Show version') do
      puts "#{op.program_name} #{VERSION}"
      exit
    end
    op.on('-n', '--line-numbers', 'Supress line numbers') do
      opts[:line_numbers] = false
    end
    op.on('-N', '--LINE-NUMBERS', 'Display line numbers') do
      opts[:line_numbers] = true
    end
    op.banner = "Usage: #{op.program_name} [OPTION-OR-FILENAME]..."
    begin
      files = op.parse(argv)
    rescue InvalidArgument => e
      puts e.message
      puts op.to_s
      exit
    end
    if files.size.zero?
      puts op.to_s
      exit
    end
    if files.size == 1 && File.exist?(files[0]) == false
      puts "#{files[0]}: No such file or directory"
      exit
    end
    [opts, files]
  end

  def set_style
    @sci.sci_style_clear_all
    @sci.sci_style_set_fore(Scintilla::STYLE_DEFAULT, @theme[:base05])
    @sci.sci_style_set_back(Scintilla::STYLE_DEFAULT, @theme[:base00])
    @sci.sci_set_margin_widthn(1, 0)
    if @opts[:line_numbers] == false
      @sci.sci_set_margin_widthn(0, 0)
    else
      @sci.sci_set_margin_maskn(0, ~Scintilla::SC_MASK_FOLDERS)
      @sci.sci_set_margin_widthn(0, 5)
      @sci.sci_style_set_fore(Scintilla::STYLE_LINENUMBER, @theme[:base04])
      @sci.sci_style_set_back(Scintilla::STYLE_LINENUMBER, @theme[:base01])
    end
    @sci.sci_set_sel_fore(true, @theme[:base00])
    @sci.sci_set_sel_back(true, @theme[:base05])
    @sci.sci_set_end_at_last_line(true)
    @sci.refresh
  end

  def init_scintilla_options
    @sci.sci_set_multiple_selection(true)
  end

  def initialize(args = [])
    @file_encodings = ['iso-2022-jp', 'euc-jp', 'utf-8', 'cp932']
    @opts, @files = parse_args(args)
    Termbox.init
    Termbox.select_output_mode(Termbox::OUTPUT_TRUECOLOR)
    Termbox.select_input_mode(Termbox::INPUT_ESC | Termbox::INPUT_MOUSE)
    @width = Termbox.width
    @height = Termbox.height - 1
    @sci = Scintilla::ScintillaTermbox.new
    @sci.resize(Termbox.width, Termbox.height - 1)
    @theme = THEME_LIST[:default_dark]
    init_scintilla_options
    set_style
    @sci.sci_set_caret_style(0)
    @sci.sci_set_focus(true)
    @sci.refresh
    @search_text = ''
    @last_search_pos = nil
    @message = ''
  end

  def print_utf8_text(str)
    str.each_char.with_index do |c, x|
      uni = Termbox.utf8_char_to_unicode(c)
      Termbox.change_cell(x, Termbox.height - 1, uni, @theme[:base02], @theme[:base06])
    end
    Termbox.set_cursor(str.length, Termbox.height - 1)
    (str.length..(Termbox.width - 1)).each do |x|
      Termbox.change_cell(x, Termbox.height - 1, ' '.chr, @theme[:base06], @theme[:base02])
    end
    Termbox.present
  end

  def print_message(message)
    @message = message
  end

  def print_prompt(prompt)
    print_utf8_text(prompt)
  end

  def parse_key(command)
    if command.instance_of?(Symbol)
      send(command)
    else
      @sci.send_message(command, 0, 0)
    end
  end

  def end_of_file
    return true if @sci.sci_pointy_from_position(0, @sci.sci_get_length) < @height

    false
  end

  def view_loop
    while (ev = Termbox.poll_event)
      case ev.type
      when Termbox::EVENT_KEY
        @message = ''
        key = ev.key.zero? ? ev.ch : ev.key
        parse_key(COMMAND_MAP[key]) if COMMAND_MAP.key? key
      end
      mark_all(@search_text) if @search_text != ''
      @sci.refresh
      if @message != ''
        print_prompt(@message)
      else
        if end_of_file
          print_prompt('(end):')
        else
          print_prompt(':')
        end
      end
    end
  end

  def mlv_exit
    Termbox.shutdown
    exit
  end

  def run
    load_file(@files[0])
    view_loop
    mlv_exit
  end
end
