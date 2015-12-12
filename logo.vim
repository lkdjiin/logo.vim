" Vim syntax file
" Language:    Logo
" Maintainer:  Xavier Nayrac <xavier.nayrac@gmail.com>
" Version:     0.5.0
" URL:	       

if version < 600
  syn clear
elseif exists("b:current_syn")
  finish
endif

syn case ignore


" Logo kind of keywords ---------------------------------------
syn keyword logoKeyword bye end stop output
syn keyword logoConditional if ifelse iffalse iff iftrue ift test and or not
syn keyword logoRepeat repeat for forever foreach

" Polish keywords (imagine)
syn keyword LogoKeyword naprzód wstecz prawo lewo powtórz np ws pw lw hop to już cs pokaż czekaj
syn keyword LogoConditional ustalKolPis ustalKolMal ustalGrubość ukp ukm ugp jdl [pod]nieś opu[ść] zam[aluj] okrąg koło kwa[drat] trójkąt słuchaj powiedz lista
syn keyword LogoRepeat nowaklasa pisz[wiersz] nowy przypisz nazwij jdl

" Comment -------------------------------------------------------------
syn match logoComment /;.*/


" Numbers -------------------------------------------------------------
"
" Integer
syn match  logoNumber /\<\d\+\>/


" Procedure declaration -----------------------------------------------
syn match logoTo /\<to\>/ nextgroup=logoProcedureName skipwhite
syn match logoProcedureName /[a-zA-Z][0-9a-zA-Z\._]*?\?/ contained


" Procedure's parameters
" ---------------------------------------------------------------------
syn match logoParameter /:[^[:blank:])\]]*/


" Strings -------------------------------------------------------------
syn match logoWord /"[^[:blank:])\]]*/
syn region logoString start=/"|/ end=/|/


" Highlighting --------------------------------------------------------
highlight link logoKeyword Keyword
highlight link logoConditional Conditional
highlight link logoRepeat Repeat
highlight link logoTo Keyword
highlight link logoNumber Number
highlight link logoWord String
highlight link logoString String
highlight link logoProcedureName Function
highlight link logoParameter Type
highlight link logoComment Comment
