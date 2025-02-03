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
		printf " %s" (ms_to_readable $CMD_DURATION)
	end

	if test $last_status -ne 0
		set_color red
		printf " ✘"
	end

	if test $fish_bind_mode != insert
		set_color green
		printf " ←"
	end

	set_color normal
	printf "\n%s " 🐠
end

function ms_to_readable
	set -l sec (math floor $argv[1] / 1000)
	set -l min (math floor $sec / 60)
	set -l hrs (math floor $min / 60)

	if test $hrs -gt 0
		printf "%sh %sm %ss" $hrs (math floor $min % 60) (math floor $sec % 60)
	else if test $min -gt 0
		printf "%sm %ss" $min (math floor $sec % 60)
	else
		printf "%ss" $sec
	end
end
