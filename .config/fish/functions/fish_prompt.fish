set __fish_git_prompt_color "--dim"
set __fish_git_prompt_color_branch "--dim"
set __fish_git_prompt_showdirtystate true
set __fish_git_prompt_showcolorhints true

function fish_prompt
	set_color cyan
	printf "%s" (prompt_pwd --full-length-dirs=2)

	set_color normal
	printf "%s " (fish_git_prompt)

	if test $CMD_DURATION -gt 1000
		set_color yellow
		printf "%s" (long_running)
	end

	set_color normal
	printf "\n%s " 🐠
end
