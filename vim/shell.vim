" vim script for shell language

" shell case
:command SHcase call InsertShellCase()
function  InsertShellCase()
	let l:lineno = line(".")
	call append(l:lineno, "case ${var} in")
	call append(l:lineno + 1, "-d|--debug)")
	call append(l:lineno + 2, "	;;")
	call append(l:lineno + 3, "-h|--help)")
	call append(l:lineno + 4, "	;;")
	call append(l:lineno + 5, "*)")
	call append(l:lineno + 6, "	;;")
	call append(l:lineno + 7, "esac")
endf

" shell if
:command SHif call InsertShellIf()
function  InsertShellIf()
	let l:lineno = line(".")
	call append(l:lineno, "if [ ${var} -eq 0  ] ; then")
	call append(l:lineno + 1, "elif [ ${var} -eq 1 ] ; then")
	call append(l:lineno + 2, "else")
	call append(l:lineno + 3, "fi")
endf

" shell for
:command SHfor call InsertShellFor()
function  InsertShellFor()
	let l:lineno = line(".")
	call append(l:lineno, "for var in ${list} ; do")
	call append(l:lineno + 1, "	echo ${var}")
	call append(l:lineno + 2, "done")
endf

" shell while
:command SHwhile call InsertShellWhile()
function  InsertShellWhile()
	let l:lineno = line(".")
	call append(l:lineno, "while [ ${var} -lt 5 ] ; do")
	call append(l:lineno + 1, "	echo ${var}")
	call append(l:lineno + 2, "done")
endf

" shell function
:command SHfunc call InsertShellFunc()
function  InsertShellFunc()
	let l:lineno = line(".")
	call append(l:lineno, "func() {")
	call append(l:lineno + 1, "	local var1=$1")
	call append(l:lineno + 2, "	local var2=$2")
	call append(l:lineno + 3, "")
	call append(l:lineno + 4, "	if [ ${var1} = ${var2} ] ; then")
	call append(l:lineno + 5, "		return 1")
	call append(l:lineno + 6, "	else")
	call append(l:lineno + 7, "		return 0")
	call append(l:lineno + 8, "	fi")
	call append(l:lineno + 9, "}")
endf

