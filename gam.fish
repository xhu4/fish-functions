# Defined in - @ line 1
function gam --description 'alias gam=git commit --amend --no-edit'
	git commit --amend --no-edit $argv;
end
