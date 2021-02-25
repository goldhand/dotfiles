[user]
	email = wfarley@amazon.com

[color]
	ui = auto

[core]
	pager = less -FMRiX
	excludesfile = /home/wfarley/.config/git/excludes

[alias]
	dag = log --graph --format='format:%C(yellow)%h%C(reset) %C(blue)\"%an\" <%ae>%C(reset) %C(magenta)%ar%C(reset)%C(auto)%d%C(reset)%n%s' --date-order
