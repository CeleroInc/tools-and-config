-- Pull in the wezterm API
local wezterm = require "wezterm"

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

--------------------------------------

local is_linux = function()
  return wezterm.target_triple:find("linux") ~= nil
end

local is_mac = function()
  return wezterm.target_triple:find("darwin") ~= nil
end

local is_windows = function()
  return wezterm.target_triple:find("windows") ~= nil
end

--------------------------------------

if is_windows() then
  -- Spawn a git shell in login mode
  config.default_prog = { os.getenv("HOME") .. "/AppData/Local/Programs/Git/bin/bash.exe --login -i" }
  -- config.win32_system_backdrop = 'Acrylic'
end

if is_mac() then
  config.macos_window_background_blur = 98
  -- is_darwin() and 0.8 or 1.0
end


-- config.default_prog = { "ssh", os.getenv("USER") .. "@" .. os.getenv("HOST") }

config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.window_background_opacity = not is_windows() and 0.98 or 1.0
-- config.window_background_opacity = 0.9
config.window_padding = {
  left = "8px",
  right = "8px",
  top = "8px",
  bottom = "6px"
}
config.disable_default_key_bindings = false
config.allow_win32_input_mode = false
config.color_scheme = "tokyonight_storm"
config.font_size = 14
config.font = wezterm.font "JetBrains Mono"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.enable_kitty_graphics = true
config.adjust_window_size_when_changing_font_size = false

-- Font Ligatures off
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

-- Text blinking disabled
config.text_blink_rate = 0

-- Force reverse cursor color to make it easier to see text below
config.force_reverse_video_cursor = true

-- Turn off audible bell
config.audible_bell = "Disabled"

-- Custom key capture
config.keys = {
  { -- Capture, potentially, harmful SUSPEND signal
    key = "z",
    mods = "CTRL",
    action = wezterm.action.Nop,
  },

  {
    key = "l",
    mods = "SHIFT|CTRL",
    action = "ShowDebugOverlay"
  },
}

return config
