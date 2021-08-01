# -----------------------------------------------------------------------------
# A wrapper for sudo that integrates better with the fish shell.
# Copyright (C) 2018,2021 eth-p
# -----------------------------------------------------------------------------
function __ethp_commandline_toggle_sudo --description 'Toggles sudo on the command line'
	set -l buf (commandline -b)
	set -l pos (commandline -C)

	if echo "$buf" | grep "^sudo .*\$" 1>/dev/null 2>/dev/null
		commandline -r (string sub -s 6 -- "$buf")
		commandline -C (math $pos-5)
	else
		commandline -r "sudo $buf"
		commandline -C (math $pos+5)
	end
end

