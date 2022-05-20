class Mlv
  COMMAND_MAP = {
    'q' => :mlv_exit,
    '/' => :search_forward,
    '?' => :search_backward,
    'n' => :search_next,
    'N' => :search_prev,
    Termbox::KEY_SPACE => Scintilla::SCI_PAGEDOWN,
    'b' => Scintilla::SCI_PAGEUP,
    'j' => Scintilla::SCI_LINESCROLLDOWN,
    'k' => Scintilla::SCI_LINESCROLLUP,
    'g' => Scintilla::SCI_SCROLLTOSTART,
    'G' => Scintilla::SCI_SCROLLTOEND
  }.freeze
end
