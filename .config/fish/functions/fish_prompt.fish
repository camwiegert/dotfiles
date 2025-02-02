set __fish_git_prompt_color "--dim"
set __fish_git_prompt_color_branch "--dim"
set __fish_git_prompt_showdirtystate true
set __fish_git_prompt_showcolorhints true

function fish_prompt
	set last_status $status

	set_color cyan
	printf "%s" (prompt_pwd --full-length-dirs=2)

	set_color normal
	printf "%s" (fish_git_prompt)

	if test $CMD_DURATION -gt 1000
		set_color yellow
		printf " %s" (long_running)
	end

	if test $last_status -ne 0
		set_color red
		printf " ✖"
	end

	if test $fish_bind_mode != insert
		set_color green
		printf " ←"
	end

	set_color normal
	printf "\n%s " 🐠
end

function long_running
	set -l sec (math floor $CMD_DURATION / 1000)
	if test $sec -gt 60
		printf "%sm%ss" (math floor $sec / 60) (math floor $sec % 60)
	else if test $sec -gt 1
		printf "%ss" $sec
	end
end
