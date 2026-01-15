require("starship"):setup {
	config_file = "~/.config/yazi/starship.toml",
}
require("git"):setup {}

Status:children_add(function()
	local h = cx.active.current.hovered
	if h == nil or ya.target_family() ~= "unix" then
		return ui.Line {}
	end

	return ui.Line {
		ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
		ui.Span(":"),
		ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"),
		ui.Span(" "),
	}
end, 500, Status.RIGHT)

require("bunny"):setup({
  hops = (function()
    local hops = {}
    -- ~/.machine_bunny.lua
    -- return {
    --   { key = "w", path = "~/work", desc = "Work" },
    --   { key = "p", path = "~/projects", desc = "Projects" },
    -- }
    local machine_path = os.getenv("HOME") .. "/.machine_bunny.lua"
    local ok, extra = pcall(dofile, machine_path)
    if ok and type(extra) == "table" then
      hops = extra
    end
    return hops
  end)(),
  desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
  ephemeral = true, -- Enable ephemeral hops, default is true
  tabs = true, -- Enable tab hops, default is true
  notify = false, -- Notify after hopping, default is false
  fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
})
