class Mlv
  def print_filename(filename)
    x = 0
    filename.each_char do |c|
      uni = Termbox.utf8_char_to_unicode(c)
      Termbox.change_cell(x, Termbox.height - 1, uni, @theme[:base02], @theme[:base06])
      x += 1
    end
    Termbox.present
  end

  def detect_encoding(text)
    @file_encodings.each do |from|
      begin
        Iconv.conv('utf-8', from, text)
      rescue RuntimeError
        next
      end
      return from
    end
    'utf-8'
  end

  def detect_eolmode(text)
    cr = text.scan(/\r/).length
    lf = text.scan(/\n/).length
    crlf = text.scan(/\r\n/).length
    if crlf.positive?
      Scintilla::SC_EOL_CRLF
    elsif lf > cr
      Scintilla::SC_EOL_LF
    elsif cr.positive?
      Scintilla::SC_EOL_CR
    else
      @sci.sci_get_eolmode
    end
  end

  def load_file(filename)
    text = File.open(filename).read
    file_encoding = detect_encoding(text)
    text = Iconv.conv('utf-8', file_encoding, text) if file_encoding != 'utf-8'
    @sci.sci_set_codepage(Scintilla::SC_CP_UTF8)
    @sci.sci_set_text(text)
    eolmode = detect_eolmode(text)
    @sci.sci_set_eolmode(eolmode)
    select_lexer(filename)
    @sci.refresh
    print_filename(filename)
  end
end
