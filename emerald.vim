" Vim syntax file
" Language:	emerald
" Maintainer:	Vegar Molvig (vegarmol@ifi.uio.no)
" Last Change:	2015 Jan 20

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword emeraldKeyword all at builtin codeof elseif export fix function isfixed monitor object primitive refix signal to unfix wait and attached by confirm end external for if islocal move op process restrict syntactictypeof typeobject var when as awaiting checkpoint const enumeration failure forall immutable locate nameof operation record return suchthat typeof view where assert begin class else exit field from initially loop new or recovery returnandfail then unavailable visit while

" Types


" Matches
syn keyword emeraldTodo contained TODO FIXME XXX NOTE
syn match emeraldComment "%.*$" contains=emeraldTodo

"----------------------------------------------------------------
" Celestia Star Catalog Numbers
"----------------------------------------------------------------

" Regular int like number with - + or nothing in front
syn match emeraldNumber '\d\+'
syn match emeraldNumber '[-+]\d\+'

" Floating point number with decimal no E or e (+,-)
syn match emeraldNumber '\d\+\.\d*'
syn match emeraldNumber '[-+]\d\+\.\d*'

" Floating point like number with E and no decimal point (+,-)
syn match emeraldNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match emeraldNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Floating point like number with E and decimal point (+,-)
syn match emeraldNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match emeraldNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

" Assign / type
syn match emeraldAssign '<-'
syn match emeraldType ':'

" Regions
syn region emeraldString start='"' end='"' contained

" highlight
let b:current_syntax = "emerald"

hi def link emeraldTodo        Todo
hi def link emeraldComment     Comment
hi def link emeraldKeyword     Statement
hi def link emeraldType        Type
hi def link emeraldString      Constant
hi def link emeraldNumber      Constant
