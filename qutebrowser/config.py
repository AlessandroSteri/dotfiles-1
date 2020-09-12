# Avoid flake8 errors
# pylint: disable=C0111
c = c  # noqa: F821 pylint: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C0103

# Don't autoplay
c.content.autoplay = False

# Dark mode on every website
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = "smart"

# Font family and size
c.fonts.default_family = ['JetBrainsMono Nerd Font']
c.fonts.default_size = '15pt'

# Limit fullscreen to the browser window
c.content.fullscreen.window = True

# Use nvim as textareas editor
c.editor.command = ["alacritty", "-e", "nvim", "{}", "+call cursor({line}, {column})"]

# Use tab and shift-tab to jump betweeen buffers
config.bind('<Tab>', 'tab-next')
config.bind('<Shift-Tab>', 'tab-prev')

# Toggle status bar, tabs bar or window decoration
config.bind(',t', 'config-cycle tabs.show always switching')
config.bind(',b', 'config-cycle statusbar.show in-mode always')
config.bind(',w', 'config-cycle window.hide_decoration true false')

# Go fullscreen with Ctrl + Cmd + f just like every other mac app
config.bind('<Meta-Ctrl-f>', 'fullscreen')

# Colors (Nord)
config.source('base16-qutebrowser/themes/minimal/base16-nord.config.py')
