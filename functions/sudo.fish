# -----------------------------------------------------------------------------
# A wrapper for sudo that integrates better with the fish shell.
# Copyright (C) 2018 eth-p
# -----------------------------------------------------------------------------
function sudo
	env SHELL=(which fish) sudo -sE $argv
end
