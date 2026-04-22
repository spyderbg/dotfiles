source ~/.vim/_vimrc
source ~/.vim/_gvimrc


if has("gui_running")
	" Guid is running or is about to start.
	" Maximaze gvim window (for an alternative on Windows, see simulat below)
	set lines=999 columns=122
else
	" This is console Vim.
	if exists("+lines")
		set lines=34
	endif
	if exists("+columns")
		set columns=130
	endif
endif


