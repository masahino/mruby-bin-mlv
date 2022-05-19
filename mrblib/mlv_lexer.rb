class Mlv
  FILE_TYPES = {
    '.rb' => :ruby,
    '.rake' => :ruby,
    'Rakefile' => :ruby,
    '.c' => :cpp,
    '.h' => :cpp,
    '.cpp' => :cpp,
    '.cxx' => :cpp,
    '.css' => :css,
    '.diff' => :diff,
    '.java' => :java,
    '.js' => :javascript,
    '.json' => :json,
    '.md' => :markdown,
    '.hs' => :haskell,
    '.html' => :html,
    '.htm' => :html,
    '.lisp' => :lisp,
    '.erb' => :html,
    '.sh' => :bash,
    '.bash' => :bash,
    '.go' => :go,
    '.pl' => :perl,
    '.py' => :python,
    '.r' => :r,
    '.rs' => :rust,
    '.tex' => :latex,
    '.xml' => :xml,
    '.plist' => :xml,
    '.yml' => :yaml,
    '.yaml' => :yaml,
    'Makefile' => :make,
    'makefile' => :make,
    '.txt' => :indent,
    '' => :indent
  }.freeze

  def lexer_from_file(filename)
    key = File.extname(filename)
    key = File.basename(filename) if key == ''
    if FILE_TYPES.key?(key)
      FILE_TYPES[key]
    else
      :indent
    end
  end

  def style_set_color(lang)
    #    @sci.sci_style_clear_all
    @sci.sci_style_set_fore(Scintilla::STYLE_DEFAULT, @theme[:base05])
    @sci.sci_style_set_back(Scintilla::STYLE_DEFAULT, @theme[:base00])
    lang[:colors].each_with_index do |color, i|
      @sci.sci_style_set_fore(i, @theme[color[0]])
      @sci.sci_style_set_back(i, @theme[color[1]])
      @sci.sci_style_set_italic(i, @theme[color[2]])
      @sci.sci_style_set_bold(i, @theme[color[3]])
    end
#    @sci.sci_set_sel_fore(true, @theme[:base00])
#    @sci.sci_set_sel_back(true, @theme[:base05])
  end

  def select_lexer(filename)
    lang = LANG_CONFIG[lexer_from_file(filename)]
    @sci.sci_set_ilexer(Scintilla.create_lexer(lang[:lexer]))
    style_set_color(lang)
    @sci.sci_set_keywords(0, lang[:keywords])
    @sci.sci_set_property('fold', '1')
  end
end
