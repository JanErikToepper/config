{ ... } @ inputs: {
  programs.nixvim.extraConfigLua = ''
local function branch_name()
	local branch = io.popen("git rev-parse --abbrev-ref HEAD 2>/dev/null")
  local commit = io.popen("git log -1 --pretty=%B HEAD 2>/dev/null")
	if branch then
		local name = branch:read("*l")
    local com = commit:read("*l")
		branch:close()
    commit:close()
		if name then
			return string.format('%s: %s', name, com)
		else
			return ""
		end
	end
end

function _G.status_line()
	return branch_name()
end

vim.opt.statusline = "%f   %=   %{%v:lua.status_line()%}"
  '';
}

