======================================
grephtml version 100.0 (just like Chrome and Firefox!)
======================================


I created this program because I needed to grep the vim HTML documentation (because in Vim :he is a nightmare)
However, I needed the HTML tags to be gone and a little cleaning (excessive spaces gone. &amp;/&quot;/&gt;/&lt; gone.)
Voila!

--------------

sudo bash install.sh #get the party started.
cd ~/where/your/html/directory/is/with/html/files
grephtml.sh 'my search string in egrep format' vim-html-documentation-directory-name
# you'll get an error, so go:
html-dir2txtdir.sh vim-html-documentation-directory-name
# which will generate a 'vim-txt-documentation-directory-name' directory in PWD to use grep on
grephtml 'my search string in egrep format' vim-html-documentation-directory-name
#works. sweet.


---------------

#here's an example:
grephtml.sh :syntax vim-doc-html
found 122 TXT files in 'vim-doc-txt'
lynx vim-doc-html/gui.html:disabling the Buffers menu must be done before ":syntax on".
lynx vim-doc-html/gui.html:Note that the menu.vim is sourced when `:syntax on` or `:filetype on` is
lynx vim-doc-html/tags.html:|:syntax|	syntax.txt
lynx vim-doc-html/tags.html:|:syntax-enable|	syntax.txt
lynx vim-doc-html/tags.html:|:syntax-off|	syntax.txt
lynx vim-doc-html/tags.html:|:syntax-on|	syntax.txt
lynx vim-doc-html/tags.html:|:syntax-reset|	syntax.txt
lynx vim-doc-html/tags.html:|g:syntax_on|	syntax.txt
lynx vim-doc-html/todo.html:The :syntax cchar value can only be a single character.  It would be useful to
lynx vim-doc-html/todo.html:Patch to add "combine" to :syntax, combines highlight attributes. (Nate
lynx vim-doc-html/todo.html:Add ":syntax contains {pattern} add=@Spell" command?  A bit like ":syn
lynx vim-doc-html/todo.html:"&#37;" match.  :syntax nomatch cMatchError (,{,[,),},] [contained]
lynx vim-doc-html/todo.html:8   Add more command line completion for :syntax.
lynx vim-doc-html/todo.html:7   Should find a better way to parse the :syntax and :highlight commands.
lynx vim-doc-html/todo.html:'compatible' after ":syntax on" has been used.
lynx vim-doc-html/options.html:of 'background' is used (e.g., before ":syntax on").
lynx vim-doc-html/options.html:done with ":syntax on".
lynx vim-doc-html/options.html:`:syntax on` and `:filetype on` commands load the menu too).
lynx vim-doc-html/options.html:syntax highlighting has been switched off with ":syntax off".
lynx vim-doc-html/usr_90.html::syntax enable
lynx vim-doc-html/syntax.html:7.  :syntax arguments		|:syn-arguments|
lynx vim-doc-html/syntax.html:12. Listing syntax items	|:syntax|
lynx vim-doc-html/syntax.html:*:syn-enable* *:syntax-enable*
lynx vim-doc-html/syntax.html::syntax enable
lynx vim-doc-html/syntax.html:*:syn-on* *:syntax-on*
lynx vim-doc-html/syntax.html:The `:syntax enable` command will keep most of your current color settings.
lynx vim-doc-html/syntax.html::syntax on
lynx vim-doc-html/syntax.html::syntax on	" start highlighting, use 'background' to set colors
lynx vim-doc-html/syntax.html:*g:syntax_on*
lynx vim-doc-html/syntax.html::if exists("g:syntax_on") | syntax off | else | syntax enable | endif
lynx vim-doc-html/syntax.html::map <F7> :if exists("g:syntax_on") <Bar>
lynx vim-doc-html/syntax.html:The ":syntax" commands are implemented by sourcing a file.  To see exactly how
lynx vim-doc-html/syntax.html::syntax enable	$VIMRUNTIME/syntax/syntax.vim
lynx vim-doc-html/syntax.html::syntax on		$VIMRUNTIME/syntax/syntax.vim
lynx vim-doc-html/syntax.html::syntax manual	$VIMRUNTIME/syntax/manual.vim
lynx vim-doc-html/syntax.html::syntax off		$VIMRUNTIME/syntax/nosyntax.vim
lynx vim-doc-html/syntax.html:automatically with ":syntax enable", do this:
lynx vim-doc-html/syntax.html:This explains the details that happen when the command ":syntax enable" is
lynx vim-doc-html/syntax.html:":syntax enable" and ":syntax on" do the following:
lynx vim-doc-html/syntax.html:&#124;	&#124;   ":runtime! syntax/syncolor.vim" is used.  ":syntax on" overrules
lynx vim-doc-html/syntax.html:&#124;	&#124;   existing colors, ":syntax enable" only sets groups that weren't
lynx vim-doc-html/syntax.html:// vim:syntax=c.doxygen
lynx vim-doc-html/syntax.html:in your .vimrc prior to the :syntax on command.  If you always use fixed source
lynx vim-doc-html/syntax.html:in your .vimrc prior to the :syntax on command.
lynx vim-doc-html/syntax.html:placed prior to the :syntax on command.  Unfortunately, the use of tabs will
lynx vim-doc-html/syntax.html:This defines if the following ":syntax" commands will work with
lynx vim-doc-html/syntax.html:items until the next ":syntax case" command are affected.
lynx vim-doc-html/syntax.html::syntax iskeyword @,48-57,192-255,$,_
lynx vim-doc-html/syntax.html::syntax keyword   Type   int long char
lynx vim-doc-html/syntax.html::syntax keyword   Type   contained int long char
lynx vim-doc-html/syntax.html::syntax keyword   Type   int long contained char
lynx vim-doc-html/syntax.html::syntax keyword   Type   int long char contained
lynx vim-doc-html/syntax.html::syntax keyword   vimCommand	 ab[breviate] n[ext]
lynx vim-doc-html/syntax.html::syntax match Character /'.'/hs=s+1,he=e-1
lynx vim-doc-html/syntax.html::syntax region String   start=+"+  skip=+\\"+  end=+"+
lynx vim-doc-html/syntax.html::syntax region String matchgroup=Quote start=+"+  skip=+\\"+	end=+"+
lynx vim-doc-html/syntax.html:7. :syntax arguments					*:syn-arguments*
lynx vim-doc-html/syntax.html:The :syntax commands that define syntax items take a number of arguments.
lynx vim-doc-html/syntax.html::syntax keyword		 -	 -	 -	 -	 -      -
lynx vim-doc-html/syntax.html::syntax match		yes	 -	yes	yes	yes     -
lynx vim-doc-html/syntax.html::syntax region		yes	yes	yes	yes	yes    yes
lynx vim-doc-html/syntax.html::syntax match Entity "&amp;" conceal cchar=&
lynx vim-doc-html/syntax.html::syntax keyword Todo    TODO    contained
lynx vim-doc-html/syntax.html::syntax match   Comment "//.*"  contains=Todo
lynx vim-doc-html/syntax.html::syntax region Block start="{" end="}" ... contains=ALLBUT,Function
lynx vim-doc-html/syntax.html::syntax match  ccFoobar  "Foo.\{-}Bar"  contains=ccFoo
lynx vim-doc-html/syntax.html::syntax match  ccFoo     "Foo"	    contained nextgroup=ccFiller
lynx vim-doc-html/syntax.html::syntax region ccFiller  start="."  matchgroup=ccBar  end="Bar"  contained
lynx vim-doc-html/syntax.html:This defines if the following ":syntax" commands will define keywords,
lynx vim-doc-html/syntax.html::syntax region Comment  start="/\*"  end="\*/"
lynx vim-doc-html/syntax.html::syntax region String   start=+"+    end=+"+	 skip=+\\"+
lynx vim-doc-html/syntax.html::syntax region Comment start="/\*"hs=e+1 end="\*/"he=s-1
lynx vim-doc-html/syntax.html::syntax match Thing "# [^#]\+ #" contains=@ThingMembers
lynx vim-doc-html/syntax.html::syntax cluster ThingMembers contains=ThingMember1,ThingMember2
lynx vim-doc-html/syntax.html::syntax keyword A aaa
lynx vim-doc-html/syntax.html::syntax keyword B bbb
lynx vim-doc-html/syntax.html::syntax cluster AandB contains=A
lynx vim-doc-html/syntax.html::syntax match Stuff "( aaa bbb )" contains=@AandB
lynx vim-doc-html/syntax.html::syntax cluster AandB add=B	  " now both keywords are matched in Stuff
lynx vim-doc-html/syntax.html::syntax keyword A aaa
lynx vim-doc-html/syntax.html::syntax keyword B bbb
lynx vim-doc-html/syntax.html::syntax cluster SmallGroup contains=B
lynx vim-doc-html/syntax.html::syntax cluster BigGroup contains=A,@SmallGroup
lynx vim-doc-html/syntax.html::syntax match Stuff "( aaa bbb )" contains=@BigGroup
lynx vim-doc-html/syntax.html::syntax cluster BigGroup remove=B	" no effect, since B isn't in BigGroup
lynx vim-doc-html/syntax.html::syntax cluster SmallGroup remove=B	" now bbb isn't matched within Stuff
lynx vim-doc-html/syntax.html:":syntax include" command:
lynx vim-doc-html/syntax.html::syntax include @Pod <sfile>:p:h/pod.vim
lynx vim-doc-html/syntax.html::syntax region perlPOD start="^=head" end="^=cut" contains=@Pod
lynx vim-doc-html/syntax.html::syntax sync maxlines=500 ccomment
lynx vim-doc-html/syntax.html::syntax sync linebreaks=1
lynx vim-doc-html/syntax.html::syntax sync fromstart
lynx vim-doc-html/syntax.html::syntax sync ccomment
lynx vim-doc-html/syntax.html::syntax sync ccomment javaComment
lynx vim-doc-html/syntax.html::syntax sync minlines=50
lynx vim-doc-html/syntax.html::syntax sync match {sync-group-name} grouphere {group-name} "pattern" ..
lynx vim-doc-html/syntax.html::syntax sync match {sync-group-name} groupthere {group-name} "pattern" ..
lynx vim-doc-html/syntax.html::syntax sync match ..
lynx vim-doc-html/syntax.html::syntax sync region ..
lynx vim-doc-html/syntax.html::syntax sync linecont {pattern}
lynx vim-doc-html/syntax.html::syntax sync maxlines=100
lynx vim-doc-html/syntax.html::syntax sync clear
lynx vim-doc-html/syntax.html::syntax sync clear {sync-group-name} ..
lynx vim-doc-html/syntax.html:12. Listing syntax items		*:syntax* *:sy* *:syn* *:syn-list*
lynx vim-doc-html/syntax.html:See above for other arguments for the ":syntax" command.
lynx vim-doc-html/syntax.html:Note that the ":syntax" command can be abbreviated to ":sy", although ":syn"
lynx vim-doc-html/syntax.html::syntax clear
lynx vim-doc-html/syntax.html::syntax clear {group-name} ..
lynx vim-doc-html/syntax.html::syntax clear @{grouplist-name} ..
lynx vim-doc-html/syntax.html:*:syntax-off* *:syn-off*
lynx vim-doc-html/syntax.html::syntax off
lynx vim-doc-html/syntax.html:*:syntax-reset* *:syn-reset*
lynx vim-doc-html/syntax.html::syntax reset
lynx vim-doc-html/syntax.html:let g:syntax_cmd = "reset"
lynx vim-doc-html/syntax.html:the default colors.  This way these colors will be used after the ":syntax
lynx vim-doc-html/syntax.html:"on"		":syntax on" command.  Highlight colors are overruled but
lynx vim-doc-html/syntax.html:"enable"	":syntax enable" command.  Only define colors for groups that
lynx vim-doc-html/syntax.html:don't have highlighting yet.  Use ":syntax default".
lynx vim-doc-html/syntax.html:"reset"	":syntax reset" command or loading a color scheme.  Define all
lynx vim-doc-html/syntax.html:on the same buffer (including :syntax clear) have no effect. Conversely,
lynx vim-doc-html/syntax.html:Note: Do these settings BEFORE doing ":syntax on".  Otherwise the colors may
lynx vim-doc-html/vimindex.html:|:syntax|	:sy[ntax]	syntax highlighting
lynx vim-doc-html/filetype.html:The file types are also used for syntax highlighting.  If the ":syntax on"
lynx vim-doc-html/filetype.html:to do ":filetype on" after ":syntax on".
lynx vim-doc-html/usr_44.html::syntax clear
lynx vim-doc-html/usr_44.html::syntax
lynx vim-doc-html/usr_44.html::syntax list {group-name}
lynx vim-doc-html/usr_44.html::syntax case match
lynx vim-doc-html/usr_44.html::syntax case ignore
lynx vim-doc-html/usr_44.html:The ":syntax case" commands can appear anywhere in a syntax file and affect
lynx vim-doc-html/usr_44.html:the syntax definitions that follow.  In most cases, you have only one ":syntax
lynx vim-doc-html/usr_44.html:scatter the ":syntax case" command throughout the file.
lynx vim-doc-html/usr_44.html::syntax keyword {group} {keyword} ...
lynx vim-doc-html/usr_44.html::syntax keyword xType int long char
lynx vim-doc-html/usr_44.html::syntax keyword xStatement if then else endif
lynx vim-doc-html/usr_44.html::syntax keyword xStatement when-not
lynx vim-doc-html/usr_44.html::syntax keyword xStatement n[ext]
lynx vim-doc-html/usr_44.html::syntax match xIdentifier /\<\l\+\>/
lynx vim-doc-html/usr_44.html:"then", etc., will be keywords, as defined with the ":syntax keyword"
lynx vim-doc-html/usr_44.html::syntax match xComment /#.*/
lynx vim-doc-html/usr_44.html::syntax region xString start=/"/ end=/"/
lynx vim-doc-html/usr_44.html::syntax region xString start=/"/ skip=/\\"/ end=/"/
lynx vim-doc-html/usr_44.html::syntax keyword xTodo TODO contained
lynx vim-doc-html/usr_44.html::syntax match xComment /%.*/ contains=xTodo
lynx vim-doc-html/usr_44.html::syntax region xBlock start=/{/ end=/}/ contains=xBlock
lynx vim-doc-html/usr_44.html::syntax region xComment start=/%/ end=/$/ contained
lynx vim-doc-html/usr_44.html::syntax region xPreProc start=/#/ end=/$/ contains=xComment
lynx vim-doc-html/usr_44.html::syntax region xComment start=/%/ end=/$/ contained
lynx vim-doc-html/usr_44.html::syntax region xPreProc start=/#/ end=/$/ contains=xComment keepend
lynx vim-doc-html/usr_44.html::syntax region xList start=/\[/ end=/\]/ contains=ALL
lynx vim-doc-html/usr_44.html::syntax region xList start=/\[/ end=/\]/ contains=ALLBUT,xString
lynx vim-doc-html/usr_44.html::syntax match xIf /if/ nextgroup=xIfCondition skipwhite
lynx vim-doc-html/usr_44.html::syntax match xIfCondition /([^)]*)/ contained nextgroup=xThen skipwhite
lynx vim-doc-html/usr_44.html::syntax match xThen /then/ contained
lynx vim-doc-html/usr_44.html::syntax region xInside start=/(/ end=/)/
lynx vim-doc-html/usr_44.html::syntax region xInside matchgroup=xParen start=/(/ end=/)/
lynx vim-doc-html/usr_44.html::syntax region xInside matchgroup=xParen start=/(/
lynx vim-doc-html/usr_44.html::syntax region cWhile matchgroup=cWhile start=/while\s*(/ end=/)/
lynx vim-doc-html/usr_44.html::syntax region cFor matchgroup=cFor start=/for\s*(/ end=/)/
lynx vim-doc-html/usr_44.html::syntax region cCondNest start=/(/ end=/)/ contained transparent
lynx vim-doc-html/usr_44.html::syntax region xCond start=/if\s*(/ms=e+1 end=/)/me=s-1
lynx vim-doc-html/usr_44.html::syntax region xIfThen start=/if/ end=/then/ oneline
lynx vim-doc-html/usr_44.html::syntax region xPreProc start=/^#/ end=/$/ contains=xLineContinue
lynx vim-doc-html/usr_44.html::syntax match xLineContinue "\\$" contained
lynx vim-doc-html/usr_44.html::syntax region xPreProc start=/^#/ end=/$/
lynx vim-doc-html/usr_44.html::syntax match xPreProcEnd excludenl /end$/ contained
lynx vim-doc-html/usr_44.html::syntax match xLineContinue "\\$" contained
lynx vim-doc-html/usr_44.html::syntax match xFor /^for.*/ contains=xNumber,xIdent
lynx vim-doc-html/usr_44.html::syntax match xIf /^if.*/ contains=xNumber,xIdent
lynx vim-doc-html/usr_44.html::syntax match xWhile /^while.*/ contains=xNumber,xIdent
lynx vim-doc-html/usr_44.html::syntax cluster xState contains=xNumber,xIdent
lynx vim-doc-html/usr_44.html::syntax match xFor /^for.*/ contains=@xState
lynx vim-doc-html/usr_44.html::syntax match xIf /^if.*/ contains=@xState
lynx vim-doc-html/usr_44.html::syntax match xWhile /^while.*/ contains=@xState
lynx vim-doc-html/usr_44.html::syntax cluster xState add=xString
lynx vim-doc-html/usr_44.html::syntax cluster xState remove=xNumber
lynx vim-doc-html/usr_44.html::syntax keyword cppStatement	new delete this friend using
lynx vim-doc-html/usr_44.html:syntax file.  The ":syntax include" command reads in a syntax file and stores
lynx vim-doc-html/usr_44.html::syntax include @Pod <sfile>:p:h/pod.vim
lynx vim-doc-html/usr_44.html::syntax region perlPOD start=/^=head/ end=/^=cut/ contains=@Pod
lynx vim-doc-html/usr_44.html:The ":syntax include" command is clever enough to ignore a ":syntax clear"
lynx vim-doc-html/usr_44.html:The secret is the ":syntax sync" command.  This tells Vim how to figure out
lynx vim-doc-html/usr_44.html::syntax sync ccomment
lynx vim-doc-html/usr_44.html::syntax sync ccomment minlines=10 maxlines=500
lynx vim-doc-html/usr_44.html::syntax sync ccomment xAltComment
lynx vim-doc-html/usr_44.html::syntax sync minlines=150
lynx vim-doc-html/usr_44.html::syntax sync match {sync-group-name}
lynx vim-doc-html/usr_44.html::syntax sync match shIfSync grouphere shIf "\<if\>"
lynx vim-doc-html/usr_44.html::syntax sync match shIfSync groupthere NONE "\<fi\>"
lynx vim-doc-html/usr_44.html::syntax sync match xSpecial /{.*}/
lynx vim-doc-html/usr_44.html::syntax keyword cType off_t uint
lynx vim-doc-html/starting.html:and ":syntax on" are not included.  Things like register contents and
lynx vim-doc-html/usr_06.html::syntax enable
lynx vim-doc-html/usr_06.html:If you always want to use syntax highlighting, put the ":syntax enable"
lynx vim-doc-html/usr_06.html:If you want syntax highlighting only in the GUI version, put the ":syntax
lynx vim-doc-html/usr_06.html:Make sure you put this _before_ the ":syntax enable" command,
lynx vim-doc-html/usr_06.html:":syntax reset" after setting 'background' to make Vim set the default
lynx vim-doc-html/usr_06.html::syntax clear
lynx vim-doc-html/usr_06.html::syntax off
lynx vim-doc-html/usr_06.html:all buffers.  See |:syntax-off| for more details.
lynx vim-doc-html/usr_06.html::syntax manual
lynx vim-doc-html/quickref.html:|:syn-on|	:syntax on		start using syntax highlighting
lynx vim-doc-html/quickref.html:|:syn-off|	:syntax off		stop using syntax highlighting
lynx vim-doc-html/quickref.html:|:syn-keyword|	:syntax keyword {group-name} {keyword} ..
lynx vim-doc-html/quickref.html:|:syn-match|	:syntax match {group-name} {pattern} ...
lynx vim-doc-html/quickref.html:|:syn-region|	:syntax region {group-name} {pattern} ...
lynx vim-doc-html/quickref.html:|:syn-sync|	:syntax sync [ccomment &#124; lines {N} &#124; ...]
lynx vim-doc-html/quickref.html:|:syntax|	:syntax [list]		list current syntax items
lynx vim-doc-html/quickref.html:|:syn-clear|	:syntax clear		clear all syntax info
lynx vim-doc-html/cmdline.html::syntax
lynx vim-doc-html/insert.html:":syntax list" while editing a PHP file I can see some of these entries:
lynx vim-doc-html/insert.html:SQL file (:e syntax.sql) you can use the ":syntax list" command to see the
lynx vim-doc-html/ft_sql.html::syntax list
