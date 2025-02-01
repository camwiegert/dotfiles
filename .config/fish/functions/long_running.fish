function long_running
	set -l sec (math floor $CMD_DURATION / 1000)
	if test $sec -gt 60
		printf "%sm%ss" (math floor $sec / 60) (math floor $sec % 60)
	else if test $sec -gt 1
		printf "%ss" $sec
	end
end
