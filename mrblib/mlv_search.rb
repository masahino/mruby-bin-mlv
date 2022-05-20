class Mlv
  def echo_gets
    text = ''
    x = 1
    Termbox.set_cursor(x, Termbox.height - 1)
    Termbox.present
    while (ev = Termbox.poll_event)
      case ev.type
      when Termbox::EVENT_KEY
        return text if ev.key == Termbox::KEY_ENTER

        ch = ''
        ch = ' ' if ev.key == Termbox::KEY_SPACE
        ch = ev.ch if ev.key.zero?
        if ch != ''
          Termbox.change_cell(x, Termbox.height - 1, ch.chr, @theme[:base06], @theme[:base02])
          text += ch
          x += 1
          Termbox.set_cursor(x, Termbox.height - 1)
          Termbox.present
        end
      end
    end
  end

  def end_of_mark_pos
    pos = @sci.sci_position_from_point(0, @sci.sci_lines_on_screen - 1)
    @sci.sci_get_line_end_position(@sci.sci_line_from_position(pos))
  end

  def mark_all(str)
    @sci.sci_set_target_start(0)
    @sci.sci_set_target_end(end_of_mark_pos)
    loop do
      ret = @sci.sci_search_in_target(str.length, str)
      break if ret == -1

      @sci.sci_add_selection(@sci.sci_get_target_start, @sci.sci_get_target_end)
      @sci.sci_set_target_start(@sci.sci_get_target_end + 1)
      @sci.sci_set_target_end(end_of_mark_pos)
    end
  end

  def search_and_mark(search_text, direction = :forward)
    @sci.sci_set_target_start(@sci.sci_get_current_pos)
    if direction == :forward
      @sci.sci_set_target_end(@sci.sci_get_length)
    else
      @sci.sci_set_target_end(0)
    end
    ret = @sci.sci_search_in_target(search_text.length, search_text)
    if ret != -1
      if direction == :forward
        @last_search_pos = @sci.sci_get_target_end
        @sci.sci_goto_pos(@sci.sci_get_target_end)
      else
        @last_search_pos = @sci.sci_get_target_start
        @sci.sci_goto_pos(@sci.sci_get_target_start)
      end
      @sci.sci_set_first_visible_line(@sci.sci_line_from_position(@sci.sci_get_target_end))
      mark_all(search_text)
    end
    ret
  end

  def search(prompt, direction)
    @sci.sci_clear_selections
    @sci.sci_set_current_pos(@sci.sci_position_from_point(0, 0))
    print_prompt(prompt)
    @search_text = echo_gets
    ret = search_and_mark(@search_text, direction) if @search_text != ''
    if ret == -1
      print_message('not found')
    end
  end

  def search_forward
    search('/', :forward)
  end

  def search_backward
    search('?', :backward)
  end

  def search_repeat(direction)
    if @sci.sci_line_from_position(@sci.sci_position_from_point(0, 0)) != @sci.sci_line_from_position(@last_search_pos)
      @sci.sci_set_current_pos(@sci.sci_position_from_point(0, 0))
    else
      @sci.sci_set_current_pos(@last_search_pos)
    end
    search_and_mark(@search_text, direction)
  end

  def search_next
    search_repeat(:forward) if @search_text != ''
  end

  def search_prev
    search_repeat(:backward) if @search_text != ''
  end
end
