# Avoid flake8 errors
# pylint: disable=C0111
c = c  # noqa: F821 pylint: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C0103

# Don't autoplay
c.content.autoplay = False

# Font family and size
c.fonts.default_family = ['JetBrainsMono Nerd Font']
c.fonts.default_size = '15pt'

# Limit fullscreen to the browser window
c.content.fullscreen.window = True

# Use zathura as default downloads preview command
c.downloads.open_dispatcher = 'zathura'

# Pseudo dark mode
config.set("colors.webpage.darkmode.enabled", True)
config.set("colors.webpage.darkmode.policy.images", "smart")

# Colors (Nord)
config.source('base16-qutebrowser/themes/minimal/base16-nord.config.py')

# Toggle dark mode and restart
config.bind(',', 'config-cycle colors.webpage.darkmode.enabled ;; restart')

# Load customization done via :set, :bind, :unbind, etc.
# Useful to toggle the dark mode
config.load_autoconfig()
