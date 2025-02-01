function fish_right_prompt
	switch $fish_bind_mode
		case insert
		case '*'
			printf " %s" 👈 # Print for any non-insert mode
	end
end
