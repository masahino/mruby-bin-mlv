class Mlv
  LANG_CONFIG = {
    indent:
    {
      lexer: 'indent',
      keywords: '',
      colors:
      [
        [:base05, :base00, nil, nil]
      ]
    },
    bash:
{
  lexer: 'bash',
  keywords: '',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base08, :base00, nil, true],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil]
]
},
    cpp:
{
  lexer: 'cpp',
  keywords: 'and and_eq asm auto bitand bitor bool break case catch char class compl const const_cast constexpr continue default delete do double dynamic_cast else enum explicit export extern false float for friend goto if inline int long mutable namespace new not not_eq operator or or_eq private protected public register reinterpret_cast return short signed sizeof static static_cast struct switch template this throw true try typedef typeid typename union unsigned using virtual void volatile wchar_t while xor xor_eq',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0D, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base0E, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil]
]
},
    css:
{
  lexer: 'css',
  keywords: '',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base08, :base00, nil, nil]
]
},
    diff:
{
  lexer: 'diff',
  keywords: '',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base08, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base08, :base00, nil, nil],
  [:base08, :base00, nil, nil],
  [:base08, :base00, nil, nil]
]
},
    go:
{
  lexer: 'cpp',
  keywords: 'break default func interface select case defer go map struct chan else goto package switch const fallthrough if range type continue for import return var bool int int8 int16 int32 int64 byte uint uint8 uint16 uint32 uint64 uintptr float float32 float64 string nil true false',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0D, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base0E, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil]
]
},
    haskell:
{
  lexer: 'haskell',
  keywords: 'case class data default deriving do else hiding if       import in infix infixl infixr instance let module       newtype of then type where forall foreign',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0A, :base00, nil, true],
  [:base0A, :base00, nil, true],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0D, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil]
]
},
    html:
{
  lexer: 'hypertext',
  keywords: '',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base08, :base00, nil, true],
  [:base08, :base00, nil, nil],
  [:base08, :base00, nil, true],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil]
]
},
    json:
{
  lexer: 'json',
  keywords: '',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base09, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0D, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base09, :base00, nil, nil],
  [:base09, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base08, :base00, nil, true]
]
},
    java:
{
  lexer: 'cpp',
  keywords: 'and and_eq asm auto bitand bitor bool break case catch char class compl const const_cast constexpr continue default delete do double dynamic_cast else enum explicit export extern false float for friend goto if inline int long mutable namespace new not not_eq operator or or_eq private protected public register reinterpret_cast return short signed sizeof static static_cast struct switch template this throw true try typedef typeid typename union unsigned using virtual void volatile wchar_t while xor xor_eq',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0D, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base0E, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil]
]
},
    javascript:
{
  lexer: 'cpp',
  keywords: 'and and_eq asm auto bitand bitor bool break case catch char class compl const const_cast constexpr continue default delete do double dynamic_cast else enum explicit export extern false float for friend goto if inline int long mutable namespace new not not_eq operator or or_eq private protected public register reinterpret_cast return short signed sizeof static static_cast struct switch template this throw true try typedef typeid typename union unsigned using virtual void volatile wchar_t while xor xor_eq',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0D, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base0E, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil]
]
},
    lisp:
{
  lexer: 'lisp',
  keywords: 'not defun + - * / = < > <= >= princ       eval apply funcall quote identity function complement backquote lambda set setq setf       defun defmacro gensym make symbol intern symbol name symbol value symbol plist get       getf putprop remprop hash make array aref car cdr caar cadr cdar cddr caaar caadr cadar       caddr cdaar cdadr cddar cdddr caaaar caaadr caadar caaddr cadaar cadadr caddar cadddr       cdaaar cdaadr cdadar cdaddr cddaar cddadr cdddar cddddr cons list append reverse last nth       nthcdr member assoc subst sublis nsubst  nsublis remove length list length       mapc mapcar mapl maplist mapcan mapcon rplaca rplacd nconc delete atom symbolp numberp       boundp null listp consp minusp zerop plusp evenp oddp eq eql equal cond case and or let l if prog       prog1 prog2 progn go return do dolist dotimes catch throw error cerror break       continue errset baktrace evalhook truncate float rem min max abs sin cos tan expt exp sqrt       random logand logior logxor lognot bignums logeqv lognand lognor       logorc2 logtest logbitp logcount integer length nil',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0D, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base08, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil]
]
},
    make:
{
  lexer: 'make',
  keywords: '',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base0D, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0D, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil]
]
},
    markdown:
{
  lexer: 'markdown',
  keywords: '',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0A, :base00, nil, true],
  [:base0E, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, true, true]
]
},
    perl:
{
  lexer: 'perl',
  keywords: 'NULL __FILE__ __LINE__ __PACKAGE__ __DATA__ __END__ AUTOLOAD       BEGIN CORE DESTROY END EQ GE GT INIT LE LT NE CHECK abs accept       alarm and atan2 bind binmode bless caller chdir chmod chomp chop       chown chr chroot close closedir cmp connect continue cos crypt       dbmclose dbmopen defined delete die do dump each else elsif endgrent       endhostent endnetent endprotoent endpwent endservent eof eq eval       exec exists exit exp fcntl fileno flock for foreach fork format       formline ge getc getgrent getgrgid getgrnam gethostbyaddr gethostbyname       gethostent getlogin getnetbyaddr getnetbyname getnetent getpeername       getpgrp getppid getpriority getprotobyname getprotobynumber getprotoent       getpwent getpwnam getpwuid getservbyname getservbyport getservent       getsockname getsockopt glob gmtime goto grep gt hex if index       int ioctl join keys kill last lc lcfirst le length link listen       local localtime lock log lstat lt map mkdir msgctl msgget msgrcv       msgsnd my ne next no not oct open opendir or ord our pack package       pipe pop pos print printf prototype push quotemeta qu       rand read readdir readline readlink readpipe recv redo       ref rename require reset return reverse rewinddir rindex rmdir       scalar seek seekdir select semctl semget semop send setgrent       sethostent setnetent setpgrp setpriority setprotoent setpwent       setservent setsockopt shift shmctl shmget shmread shmwrite shutdown       sin sleep socket socketpair sort splice split sprintf sqrt srand       stat study sub substr symlink syscall sysopen sysread sysseek       system syswrite tell telldir tie tied time times truncate       uc ucfirst umask undef unless unlink unpack unshift untie until       use utime values vec wait waitpid wantarray warn while write       xor       given when default say state UNITCHECK',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base08, :base00, nil, true],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0D, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil]
]
},
    python:
{
  lexer: 'python',
  keywords: 'and as assert break class continue def del elif else except exec finally for from       global if import in is lambda not or pass print raise return try while with yield',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0A, :base00, nil, true],
  [:base0D, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil]
]
},
    r:
{
  lexer: 'r',
  keywords: 'if else repeat while function for in next break TRUE FALSE NULL NA Inf NaN',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil]
]
},
    ruby:
{
  lexer: 'ruby',
  keywords: 'attr_accessor attr_reader attr_writer module_function begin break elsif module retry unless end case next return until class ensure nil self when def false not super while alias defined? for or then yield and do if redo true else in rescue undef',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base08, :base00, nil, true],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0A, :base00, nil, true],
  [:base0D, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0C, :base00, nil, nil],
  [:base08, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0D, :base00, nil, nil],
  [:base08, :base00, nil, nil],
  [:base08, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil]
]
},
    rust:
{
  lexer: 'rust',
  keywords: 'as fn let const static if else match for in loop       while break continue return crate extern use mod self super struct       enum union trait type where impl Self self pub unsafe true false       move mut ref box do catch default',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base08, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base08, :base00, nil, true],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil]
]
},
    latex:
{
  lexer: 'latex',
  keywords: '',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base08, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base08, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base08, :base00, nil, true]
]
},
    xml:
{
  lexer: 'xml',
  keywords: '',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base08, :base00, nil, true],
  [:base08, :base00, nil, nil],
  [:base08, :base00, nil, true],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base0B, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil]
]
},
    yaml:
{
  lexer: 'yaml',
  keywords: '',
  colors:
[
  [:base05, :base00, nil, nil],
  [:base03, :base00, true, nil],
  [:base0B, :base00, nil, nil],
  [:base0E, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base05, :base00, nil, nil],
  [:base0B, :base00, true, nil],
  [:base0B, :base00, nil, nil],
  [:base08, :base00, nil, true],
  [:base05, :base00, nil, nil]
]
}
  }.freeze
end
