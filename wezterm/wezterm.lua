local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font_size = 14.0
config.color_scheme = "Dracula"
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.window_decorations = "RESIZE"
config.text_background_opacity = 0.8
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10
config.hide_tab_bar_if_only_one_tab = false
config.show_tab_index_in_tab_bar = true
config.show_new_tab_button_in_tab_bar = false
config.font = wezterm.font("MesloLGS Nerd Font", { weight = "Regular" })
config.window_close_confirmation = "NeverPrompt"
config.inactive_pane_hsb = { saturation = 0.9, brightness = 0.8 }
config.adjust_window_size_when_changing_font_size = false

config.colors = {
  selection_bg = "#44475a",  -- 被选中区域的背景色
  selection_fg = "#f8f8f2",  -- 被选中文字的颜色（可选）
}

config.mouse_bindings = {
  -- 鼠标左键选择后自动复制（可选）
  {
    event = { Up = { streak = 1, button = "Left" } },
    mods = "NONE",
    action = wezterm.action.CompleteSelection "Clipboard",
  },

  -- 鼠标右键点击粘贴剪贴板内容
  {
    event = { Down = { streak = 1, button = "Right" } },
    mods = "NONE",
    action = wezterm.action.PasteFrom "Clipboard",
  },
}

local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local title = " " .. tab.tab_index + 1 .. ". " .. tab.active_pane.title .. " "  -- 保留默认 title，不拼接内容

  if tab.is_active then
    return {
      { Background = { Color = '#2b2042' } },
      { Foreground = { Color = '#0b0022' } },
      { Text = SOLID_LEFT_ARROW },
      { Background = { Color = '#0b0022' } },
      { Foreground = { Color = '#c0c0c0' } },
      { Text = title },
      { Background = { Color = '#2b2042' } },
      { Foreground = { Color = '#0b0022' } },
      { Text = SOLID_RIGHT_ARROW },
    }
  else
    return {
      { Background = { Color = '#1b1032' } },
      { Foreground = { Color = '#0b0022' } },
      { Text = SOLID_LEFT_ARROW },
      { Background = { Color = '#0b0022' } },
      { Foreground = { Color = '#808080' } },
      { Text = title },
      { Background = { Color = '#1b1032' } },
      { Foreground = { Color = '#0b0022' } },
      { Text = SOLID_RIGHT_ARROW },
    }
  end
end)

local is_macos = wezterm.target_triple:find("darwin")
local super_mod = is_macos and "CMD" or "CTRL"

-- 设置 Leader 键：Ctrl + b（按下后 1000ms 内接后续键生效）
config.leader = { key = "b", mods = super_mod, timeout_milliseconds = 1000 }

-- Tmux 风格快捷键绑定
config.keys = {
  -- 分屏
  { key = '"', mods = "LEADER", action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
  { key = "%", mods = "LEADER", action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },

  -- Pane 之间移动（方向键或 hjkl）
  { key = "h", mods = "LEADER", action = wezterm.action.ActivatePaneDirection "Left" },
  { key = "j", mods = "LEADER", action = wezterm.action.ActivatePaneDirection "Down" },
  { key = "k", mods = "LEADER", action = wezterm.action.ActivatePaneDirection "Up" },
  { key = "l", mods = "LEADER", action = wezterm.action.ActivatePaneDirection "Right" },

  -- 放大/还原 Pane（类似 tmux 的 zoom）
  { key = "z", mods = "LEADER", action = wezterm.action.TogglePaneZoomState },

  -- 关闭当前 Pane
  { key = "x", mods = "LEADER", action = wezterm.action.CloseCurrentPane { confirm = true } },

  -- 新建 Tab
  {
    key = "t",
    mods = super_mod,
    action = wezterm.action.SpawnCommandInNewTab {
      cwd = os.getenv("HOME"),
    },
  },

  -- 新建 Tab 并继承当前 Tab 路径
  {
    key = "t",
    mods = super_mod .. "|SHIFT",
    action = wezterm.action.SpawnTab("DefaultDomain"),
  },

  -- 清屏
  {
    key = "k",
    mods = super_mod,
    action = wezterm.action.Multiple {
      wezterm.action.ClearScrollback "ScrollbackAndViewport",
      wezterm.action.SendKey { key = "L", mods = "CTRL" }, -- 类似 bash/zsh 的 clear
    },
  },

  -- 关闭当前 Pane 或者 Tab
  {
    key = "w",
    mods = super_mod,
    action = wezterm.action_callback(function(window, pane)
      local tab = window:active_tab()
      local panes = tab:panes()

      if #panes > 1 then
        window:perform_action(
          wezterm.action.CloseCurrentPane { confirm = false },
          pane
        )
      else
        window:perform_action(
          wezterm.action.CloseCurrentTab { confirm = false },
          pane
        )
      end
    end),
  },

  -- 进入复制模式
  {
    key = "[",
    mods = "LEADER",
    action = wezterm.action.ActivateCopyMode,
  },

  -- 粘贴剪贴板内容
  {
    key = "]",
    mods = "LEADER",
    action = wezterm.action.PasteFrom "Clipboard",
  },
}

return config
