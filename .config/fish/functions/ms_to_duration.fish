function ms_to_duration
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
