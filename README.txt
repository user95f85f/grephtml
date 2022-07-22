======================================
grephtml version 100.0 (just like Chrome and Firefox!)
======================================


I created this program because I needed to grep the vim HTML documentation (because in Vim :he is a nightmare)
However, I needed the HTML tags to be gone and a little cleaning (excessive spaces gone. &amp;/&quot;/&gt;/&lt; gone.)
Voila!

--------------

sudo bash install.sh #get the party started.
cd ~/where/your/html/directory/is/with/html/files
grephtml 'my search string' vim-html-documentation-directory-name
# you'll be asked to execute an automatically-executed `html-dir2txtdir.sh vim-html-documentation-directory-name`
# which will generate a 'vim-txt-documentation-directory-name' directory in PWD to use `grep -E` on
# the search will commense and future grephtml command of the same arguments won't need to re-execute
#   `html-dir2txtdir.sh` for that directory again.


ENVIROMENTAL VARIABLES:
export GREPHTML_GREPPER_EXEC=/usr/bin/ack        #<--this is an example
export GREPHTML_GREPPER_OPTIONS='-i'             #<--this is an example
#If these are not set the default searcher is:   /usr/bin/grep --extended-regexp #and of course: --recursive

(AWKWARDNESS) USER-KNOWLEDGE ASSUMPTION:
Replace the .txt extension with .html (in your search output) and the local files should exist within the grephtml-given '*html*' directory search-directory argument.
For example: `grephtml blahblahblah doc-vim-html` creates directory (in the same directory) 'doc-vim-txt' and all '.html' files are translated/converted to '.txt' within the 'doc-vim-txt' directory. That 'doc-vim-txt' directory is what is "grepped."

---------------

#here's an example:
unset GREPHTML_GREPPER_EXEC GREPHTML_GREPPER_OPTIONS; grephtml :syntax vim-doc-html
you need to run:  html-dir2txtdir.sh 'doc-vim-html/' to create text files in directory 'doc-vim-txt/' for egrep to search in.

bash html-dir2txtdir.sh 'doc-vim-html/'

found 122 HTML files in 'doc-vim-html/'
~/Documents/doc-vim-html ~/Documents
~/Documents
found 122 TXT files in 'doc-vim-txt/'
`grep -ER  :syntax doc-vim-txt/`doc-vim-txt/gui.txt:disabling the Buffers menu must be done before ":syntax on".
doc-vim-txt/gui.txt:Note that the menu.vim is sourced when `:syntax on` or `:filetype on` is
doc-vim-txt/tags.txt:|:syntax|	syntax.txt
doc-vim-txt/tags.txt:|:syntax-enable|	syntax.txt
doc-vim-txt/tags.txt:|:syntax-off|	syntax.txt
doc-vim-txt/tags.txt:|:syntax-on|	syntax.txt
doc-vim-txt/tags.txt:|:syntax-reset|	syntax.txt
doc-vim-txt/tags.txt:|g:syntax_on|	syntax.txt
doc-vim-txt/todo.txt:The :syntax cchar value can only be a single character.  It would be useful to
doc-vim-txt/todo.txt:Patch to add "combine" to :syntax, combines highlight attributes. (Nate
doc-vim-txt/todo.txt:Add ":syntax contains {pattern} add=@Spell" command?  A bit like ":syn
doc-vim-txt/todo.txt:"&#37;" match.  :syntax nomatch cMatchError (,{,[,),},] [contained]
doc-vim-txt/todo.txt:8   Add more command line completion for :syntax.
doc-vim-txt/todo.txt:7   Should find a better way to parse the :syntax and :highlight commands.
doc-vim-txt/todo.txt:'compatible' after ":syntax on" has been used.
doc-vim-txt/options.txt:of 'background' is used (e.g., before ":syntax on").
doc-vim-txt/options.txt:done with ":syntax on".
doc-vim-txt/options.txt:`:syntax on` and `:filetype on` commands load the menu too).
doc-vim-txt/options.txt:syntax highlighting has been switched off with ":syntax off".
doc-vim-txt/usr_90.txt::syntax enable
doc-vim-txt/syntax.txt:7.  :syntax arguments		|:syn-arguments|
doc-vim-txt/syntax.txt:12. Listing syntax items	|:syntax|
doc-vim-txt/syntax.txt:*:syn-enable* *:syntax-enable*
doc-vim-txt/syntax.txt::syntax enable
doc-vim-txt/syntax.txt:*:syn-on* *:syntax-on*
doc-vim-txt/syntax.txt:The `:syntax enable` command will keep most of your current color settings.
doc-vim-txt/syntax.txt::syntax on
doc-vim-txt/syntax.txt::syntax on	" start highlighting, use 'background' to set colors
doc-vim-txt/syntax.txt:*g:syntax_on*
doc-vim-txt/syntax.txt::if exists("g:syntax_on") | syntax off | else | syntax enable | endif
doc-vim-txt/syntax.txt::map <F7> :if exists("g:syntax_on") <Bar>
doc-vim-txt/syntax.txt:The ":syntax" commands are implemented by sourcing a file.  To see exactly how
doc-vim-txt/syntax.txt::syntax enable	$VIMRUNTIME/syntax/syntax.vim
doc-vim-txt/syntax.txt::syntax on		$VIMRUNTIME/syntax/syntax.vim
doc-vim-txt/syntax.txt::syntax manual	$VIMRUNTIME/syntax/manual.vim
doc-vim-txt/syntax.txt::syntax off		$VIMRUNTIME/syntax/nosyntax.vim
doc-vim-txt/syntax.txt:automatically with ":syntax enable", do this:
doc-vim-txt/syntax.txt:This explains the details that happen when the command ":syntax enable" is
doc-vim-txt/syntax.txt:":syntax enable" and ":syntax on" do the following:
doc-vim-txt/syntax.txt:&#124;	&#124;   ":runtime! syntax/syncolor.vim" is used.  ":syntax on" overrules
doc-vim-txt/syntax.txt:&#124;	&#124;   existing colors, ":syntax enable" only sets groups that weren't
doc-vim-txt/syntax.txt:// vim:syntax=c.doxygen
doc-vim-txt/syntax.txt:in your .vimrc prior to the :syntax on command.  If you always use fixed source
doc-vim-txt/syntax.txt:in your .vimrc prior to the :syntax on command.
doc-vim-txt/syntax.txt:placed prior to the :syntax on command.  Unfortunately, the use of tabs will
doc-vim-txt/syntax.txt:This defines if the following ":syntax" commands will work with
doc-vim-txt/syntax.txt:items until the next ":syntax case" command are affected.
doc-vim-txt/syntax.txt::syntax iskeyword @,48-57,192-255,$,_
doc-vim-txt/syntax.txt::syntax keyword   Type   int long char
doc-vim-txt/syntax.txt::syntax keyword   Type   contained int long char
doc-vim-txt/syntax.txt::syntax keyword   Type   int long contained char
doc-vim-txt/syntax.txt::syntax keyword   Type   int long char contained
doc-vim-txt/syntax.txt::syntax keyword   vimCommand	 ab[breviate] n[ext]
doc-vim-txt/syntax.txt::syntax match Character /'.'/hs=s+1,he=e-1
doc-vim-txt/syntax.txt::syntax region String   start=+"+  skip=+\\"+  end=+"+
doc-vim-txt/syntax.txt::syntax region String matchgroup=Quote start=+"+  skip=+\\"+	end=+"+
doc-vim-txt/syntax.txt:7. :syntax arguments					*:syn-arguments*
doc-vim-txt/syntax.txt:The :syntax commands that define syntax items take a number of arguments.
doc-vim-txt/syntax.txt::syntax keyword		 -	 -	 -	 -	 -      -
doc-vim-txt/syntax.txt::syntax match		yes	 -	yes	yes	yes     -
doc-vim-txt/syntax.txt::syntax region		yes	yes	yes	yes	yes    yes
doc-vim-txt/syntax.txt::syntax match Entity "&amp;" conceal cchar=&
doc-vim-txt/syntax.txt::syntax keyword Todo    TODO    contained
doc-vim-txt/syntax.txt::syntax match   Comment "//.*"  contains=Todo
doc-vim-txt/syntax.txt::syntax region Block start="{" end="}" ... contains=ALLBUT,Function
doc-vim-txt/syntax.txt::syntax match  ccFoobar  "Foo.\{-}Bar"  contains=ccFoo
doc-vim-txt/syntax.txt::syntax match  ccFoo     "Foo"	    contained nextgroup=ccFiller
doc-vim-txt/syntax.txt::syntax region ccFiller  start="."  matchgroup=ccBar  end="Bar"  contained
doc-vim-txt/syntax.txt:This defines if the following ":syntax" commands will define keywords,
doc-vim-txt/syntax.txt::syntax region Comment  start="/\*"  end="\*/"
doc-vim-txt/syntax.txt::syntax region String   start=+"+    end=+"+	 skip=+\\"+
doc-vim-txt/syntax.txt::syntax region Comment start="/\*"hs=e+1 end="\*/"he=s-1
doc-vim-txt/syntax.txt::syntax match Thing "# [^#]\+ #" contains=@ThingMembers
doc-vim-txt/syntax.txt::syntax cluster ThingMembers contains=ThingMember1,ThingMember2
doc-vim-txt/syntax.txt::syntax keyword A aaa
doc-vim-txt/syntax.txt::syntax keyword B bbb
doc-vim-txt/syntax.txt::syntax cluster AandB contains=A
doc-vim-txt/syntax.txt::syntax match Stuff "( aaa bbb )" contains=@AandB
doc-vim-txt/syntax.txt::syntax cluster AandB add=B	  " now both keywords are matched in Stuff
doc-vim-txt/syntax.txt::syntax keyword A aaa
doc-vim-txt/syntax.txt::syntax keyword B bbb
doc-vim-txt/syntax.txt::syntax cluster SmallGroup contains=B
doc-vim-txt/syntax.txt::syntax cluster BigGroup contains=A,@SmallGroup
doc-vim-txt/syntax.txt::syntax match Stuff "( aaa bbb )" contains=@BigGroup
doc-vim-txt/syntax.txt::syntax cluster BigGroup remove=B	" no effect, since B isn't in BigGroup
doc-vim-txt/syntax.txt::syntax cluster SmallGroup remove=B	" now bbb isn't matched within Stuff
doc-vim-txt/syntax.txt:":syntax include" command:
doc-vim-txt/syntax.txt::syntax include @Pod <sfile>:p:h/pod.vim
doc-vim-txt/syntax.txt::syntax region perlPOD start="^=head" end="^=cut" contains=@Pod
doc-vim-txt/syntax.txt::syntax sync maxlines=500 ccomment
doc-vim-txt/syntax.txt::syntax sync linebreaks=1
doc-vim-txt/syntax.txt::syntax sync fromstart
doc-vim-txt/syntax.txt::syntax sync ccomment
doc-vim-txt/syntax.txt::syntax sync ccomment javaComment
doc-vim-txt/syntax.txt::syntax sync minlines=50
doc-vim-txt/syntax.txt::syntax sync match {sync-group-name} grouphere {group-name} "pattern" ..
doc-vim-txt/syntax.txt::syntax sync match {sync-group-name} groupthere {group-name} "pattern" ..
doc-vim-txt/syntax.txt::syntax sync match ..
doc-vim-txt/syntax.txt::syntax sync region ..
doc-vim-txt/syntax.txt::syntax sync linecont {pattern}
doc-vim-txt/syntax.txt::syntax sync maxlines=100
doc-vim-txt/syntax.txt::syntax sync clear
doc-vim-txt/syntax.txt::syntax sync clear {sync-group-name} ..
doc-vim-txt/syntax.txt:12. Listing syntax items		*:syntax* *:sy* *:syn* *:syn-list*
doc-vim-txt/syntax.txt:See above for other arguments for the ":syntax" command.
doc-vim-txt/syntax.txt:Note that the ":syntax" command can be abbreviated to ":sy", although ":syn"
doc-vim-txt/syntax.txt::syntax clear
doc-vim-txt/syntax.txt::syntax clear {group-name} ..
doc-vim-txt/syntax.txt::syntax clear @{grouplist-name} ..
doc-vim-txt/syntax.txt:*:syntax-off* *:syn-off*
doc-vim-txt/syntax.txt::syntax off
doc-vim-txt/syntax.txt:*:syntax-reset* *:syn-reset*
doc-vim-txt/syntax.txt::syntax reset
doc-vim-txt/syntax.txt:let g:syntax_cmd = "reset"
doc-vim-txt/syntax.txt:the default colors.  This way these colors will be used after the ":syntax
doc-vim-txt/syntax.txt:"on"		":syntax on" command.  Highlight colors are overruled but
doc-vim-txt/syntax.txt:"enable"	":syntax enable" command.  Only define colors for groups that
doc-vim-txt/syntax.txt:don't have highlighting yet.  Use ":syntax default".
doc-vim-txt/syntax.txt:"reset"	":syntax reset" command or loading a color scheme.  Define all
doc-vim-txt/syntax.txt:on the same buffer (including :syntax clear) have no effect. Conversely,
doc-vim-txt/syntax.txt:Note: Do these settings BEFORE doing ":syntax on".  Otherwise the colors may
doc-vim-txt/vimindex.txt:|:syntax|	:sy[ntax]	syntax highlighting
doc-vim-txt/filetype.txt:The file types are also used for syntax highlighting.  If the ":syntax on"
doc-vim-txt/filetype.txt:to do ":filetype on" after ":syntax on".
doc-vim-txt/usr_44.txt::syntax clear
doc-vim-txt/usr_44.txt::syntax
doc-vim-txt/usr_44.txt::syntax list {group-name}
doc-vim-txt/usr_44.txt::syntax case match
doc-vim-txt/usr_44.txt::syntax case ignore
doc-vim-txt/usr_44.txt:The ":syntax case" commands can appear anywhere in a syntax file and affect
doc-vim-txt/usr_44.txt:the syntax definitions that follow.  In most cases, you have only one ":syntax
doc-vim-txt/usr_44.txt:scatter the ":syntax case" command throughout the file.
doc-vim-txt/usr_44.txt::syntax keyword {group} {keyword} ...
doc-vim-txt/usr_44.txt::syntax keyword xType int long char
doc-vim-txt/usr_44.txt::syntax keyword xStatement if then else endif
doc-vim-txt/usr_44.txt::syntax keyword xStatement when-not
doc-vim-txt/usr_44.txt::syntax keyword xStatement n[ext]
doc-vim-txt/usr_44.txt::syntax match xIdentifier /\<\l\+\>/
doc-vim-txt/usr_44.txt:"then", etc., will be keywords, as defined with the ":syntax keyword"
doc-vim-txt/usr_44.txt::syntax match xComment /#.*/
doc-vim-txt/usr_44.txt::syntax region xString start=/"/ end=/"/
doc-vim-txt/usr_44.txt::syntax region xString start=/"/ skip=/\\"/ end=/"/
doc-vim-txt/usr_44.txt::syntax keyword xTodo TODO contained
doc-vim-txt/usr_44.txt::syntax match xComment /%.*/ contains=xTodo
doc-vim-txt/usr_44.txt::syntax region xBlock start=/{/ end=/}/ contains=xBlock
doc-vim-txt/usr_44.txt::syntax region xComment start=/%/ end=/$/ contained
doc-vim-txt/usr_44.txt::syntax region xPreProc start=/#/ end=/$/ contains=xComment
doc-vim-txt/usr_44.txt::syntax region xComment start=/%/ end=/$/ contained
doc-vim-txt/usr_44.txt::syntax region xPreProc start=/#/ end=/$/ contains=xComment keepend
doc-vim-txt/usr_44.txt::syntax region xList start=/\[/ end=/\]/ contains=ALL
doc-vim-txt/usr_44.txt::syntax region xList start=/\[/ end=/\]/ contains=ALLBUT,xString
doc-vim-txt/usr_44.txt::syntax match xIf /if/ nextgroup=xIfCondition skipwhite
doc-vim-txt/usr_44.txt::syntax match xIfCondition /([^)]*)/ contained nextgroup=xThen skipwhite
doc-vim-txt/usr_44.txt::syntax match xThen /then/ contained
doc-vim-txt/usr_44.txt::syntax region xInside start=/(/ end=/)/
doc-vim-txt/usr_44.txt::syntax region xInside matchgroup=xParen start=/(/ end=/)/
doc-vim-txt/usr_44.txt::syntax region xInside matchgroup=xParen start=/(/
doc-vim-txt/usr_44.txt::syntax region cWhile matchgroup=cWhile start=/while\s*(/ end=/)/
doc-vim-txt/usr_44.txt::syntax region cFor matchgroup=cFor start=/for\s*(/ end=/)/
doc-vim-txt/usr_44.txt::syntax region cCondNest start=/(/ end=/)/ contained transparent
doc-vim-txt/usr_44.txt::syntax region xCond start=/if\s*(/ms=e+1 end=/)/me=s-1
doc-vim-txt/usr_44.txt::syntax region xIfThen start=/if/ end=/then/ oneline
doc-vim-txt/usr_44.txt::syntax region xPreProc start=/^#/ end=/$/ contains=xLineContinue
doc-vim-txt/usr_44.txt::syntax match xLineContinue "\\$" contained
doc-vim-txt/usr_44.txt::syntax region xPreProc start=/^#/ end=/$/
doc-vim-txt/usr_44.txt::syntax match xPreProcEnd excludenl /end$/ contained
doc-vim-txt/usr_44.txt::syntax match xLineContinue "\\$" contained
doc-vim-txt/usr_44.txt::syntax match xFor /^for.*/ contains=xNumber,xIdent
doc-vim-txt/usr_44.txt::syntax match xIf /^if.*/ contains=xNumber,xIdent
doc-vim-txt/usr_44.txt::syntax match xWhile /^while.*/ contains=xNumber,xIdent
doc-vim-txt/usr_44.txt::syntax cluster xState contains=xNumber,xIdent
doc-vim-txt/usr_44.txt::syntax match xFor /^for.*/ contains=@xState
doc-vim-txt/usr_44.txt::syntax match xIf /^if.*/ contains=@xState
doc-vim-txt/usr_44.txt::syntax match xWhile /^while.*/ contains=@xState
doc-vim-txt/usr_44.txt::syntax cluster xState add=xString
doc-vim-txt/usr_44.txt::syntax cluster xState remove=xNumber
doc-vim-txt/usr_44.txt::syntax keyword cppStatement	new delete this friend using
doc-vim-txt/usr_44.txt:syntax file.  The ":syntax include" command reads in a syntax file and stores
doc-vim-txt/usr_44.txt::syntax include @Pod <sfile>:p:h/pod.vim
doc-vim-txt/usr_44.txt::syntax region perlPOD start=/^=head/ end=/^=cut/ contains=@Pod
doc-vim-txt/usr_44.txt:The ":syntax include" command is clever enough to ignore a ":syntax clear"
doc-vim-txt/usr_44.txt:The secret is the ":syntax sync" command.  This tells Vim how to figure out
doc-vim-txt/usr_44.txt::syntax sync ccomment
doc-vim-txt/usr_44.txt::syntax sync ccomment minlines=10 maxlines=500
doc-vim-txt/usr_44.txt::syntax sync ccomment xAltComment
doc-vim-txt/usr_44.txt::syntax sync minlines=150
doc-vim-txt/usr_44.txt::syntax sync match {sync-group-name}
doc-vim-txt/usr_44.txt::syntax sync match shIfSync grouphere shIf "\<if\>"
doc-vim-txt/usr_44.txt::syntax sync match shIfSync groupthere NONE "\<fi\>"
doc-vim-txt/usr_44.txt::syntax sync match xSpecial /{.*}/
doc-vim-txt/usr_44.txt::syntax keyword cType off_t uint
doc-vim-txt/starting.txt:and ":syntax on" are not included.  Things like register contents and
doc-vim-txt/usr_06.txt::syntax enable
doc-vim-txt/usr_06.txt:If you always want to use syntax highlighting, put the ":syntax enable"
doc-vim-txt/usr_06.txt:If you want syntax highlighting only in the GUI version, put the ":syntax
doc-vim-txt/usr_06.txt:Make sure you put this _before_ the ":syntax enable" command,
doc-vim-txt/usr_06.txt:":syntax reset" after setting 'background' to make Vim set the default
doc-vim-txt/usr_06.txt::syntax clear
doc-vim-txt/usr_06.txt::syntax off
doc-vim-txt/usr_06.txt:all buffers.  See |:syntax-off| for more details.
doc-vim-txt/usr_06.txt::syntax manual
doc-vim-txt/quickref.txt:|:syn-on|	:syntax on		start using syntax highlighting
doc-vim-txt/quickref.txt:|:syn-off|	:syntax off		stop using syntax highlighting
doc-vim-txt/quickref.txt:|:syn-keyword|	:syntax keyword {group-name} {keyword} ..
doc-vim-txt/quickref.txt:|:syn-match|	:syntax match {group-name} {pattern} ...
doc-vim-txt/quickref.txt:|:syn-region|	:syntax region {group-name} {pattern} ...
doc-vim-txt/quickref.txt:|:syn-sync|	:syntax sync [ccomment &#124; lines {N} &#124; ...]
doc-vim-txt/quickref.txt:|:syntax|	:syntax [list]		list current syntax items
doc-vim-txt/quickref.txt:|:syn-clear|	:syntax clear		clear all syntax info
doc-vim-txt/cmdline.txt::syntax
doc-vim-txt/insert.txt:":syntax list" while editing a PHP file I can see some of these entries:
doc-vim-txt/insert.txt:SQL file (:e syntax.sql) you can use the ":syntax list" command to see the
doc-vim-txt/ft_sql.txt::syntax list
