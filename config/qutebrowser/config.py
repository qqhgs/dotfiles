config.load_autoconfig(False)

c.aliases = {"q": "quit", "w": "session-save", "wq": "quit --save"}

config.set("content.cookies.accept", "all", "chrome-devtools://*")
config.set("content.cookies.accept", "all", "devtools://*")
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}",
    "https://web.whatsapp.com/",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0",
    "https://accounts.google.com/*",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36",
    "https://*.slack.com/*",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0",
    "https://docs.google.com/*",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}; rv:71.0) Gecko/20100101 Firefox/71.0",
    "https://drive.google.com/*",
)
config.set("content.images", True, "chrome-devtools://*")
config.set("content.images", True, "devtools://*")
config.set("content.javascript.enabled", True, "chrome-devtools://*")
config.set("content.javascript.enabled", True, "devtools://*")
config.set("content.javascript.enabled", True, "chrome://*/*")
config.set("content.javascript.enabled", True, "qute://*/*")
config.set("content.notifications.enabled", True, "https://www.reddit.com")
config.set("content.notifications.enabled", True, "https://www.youtube.com")

c.downloads.location.directory = "~/Downloads"
c.tabs.show = "always"

c.url.default_page = "file:///home/ryn/dotfiles/config/qutebrowser/index.html"
c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "aw": "https://wiki.archlinux.org/?search={}",
    "go": "https://www.google.com/search?q={}",
    "re": "https://www.reddit.com/r/{}",
    "ub": "https://www.urbandictionary.com/define.php?term={}",
    "wk": "https://en.wikipedia.org/wiki/{}",
    "yt": "https://www.youtube.com/results?search_query={}",
}

# COLORS
c.colors.completion.category.bg = "#1E1E28"
c.colors.completion.category.border.bottom = "#1E1E28"
c.colors.completion.category.border.top = "#1E1E28"
c.colors.completion.category.fg = "#FAE3B0"
c.colors.completion.even.bg = "#1E1E28"
c.colors.completion.fg = "#D7DAE0"
c.colors.completion.item.selected.bg = "#302D41"
c.colors.completion.item.selected.border.bottom = "#302D41"
c.colors.completion.item.selected.border.top = "#302D41"
c.colors.completion.item.selected.fg = "#D7DAE0"
c.colors.completion.item.selected.match.fg = "#ABE9B3"
c.colors.completion.match.fg = "#ABE9B3"
c.colors.completion.odd.bg = "#161320"
c.colors.completion.scrollbar.bg = "#1E1E28"
c.colors.completion.scrollbar.fg = "#D7DAE0"
c.colors.contextmenu.disabled.bg = "#161320"
c.colors.contextmenu.disabled.fg = "#6E6C7C"
c.colors.contextmenu.menu.bg = "#1E1E28"
c.colors.contextmenu.menu.fg = "#D7DAE0"
c.colors.contextmenu.selected.bg = "#302D41"
c.colors.contextmenu.selected.fg = "#D7DAE0"
c.colors.downloads.bar.bg = "#1E1E28"
c.colors.downloads.error.fg = "#F28FAD"
c.colors.downloads.start.bg = "#96CDFB"
c.colors.downloads.start.fg = "#1E1E28"
c.colors.downloads.stop.bg = "#B5E8E0"
c.colors.downloads.stop.fg = "#1E1E28"
c.colors.hints.bg = "#FAE3B0"
c.colors.hints.fg = "#1E1E28"
c.colors.hints.match.fg = "#988ba2"
c.colors.keyhint.bg = "#1E1E28"
c.colors.keyhint.fg = "#D7DAE0"
c.colors.keyhint.suffix.fg = "#D7DAE0"
c.colors.messages.error.bg = "#F28FAD"
c.colors.messages.error.border = "#F28FAD"
c.colors.messages.error.fg = "#1E1E28"
c.colors.messages.info.bg = "#1E1E28"
c.colors.messages.info.border = "#1E1E28"
c.colors.messages.info.fg = "#D7DAE0"
c.colors.messages.warning.bg = "#DDB6F2"
c.colors.messages.warning.border = "#DDB6F2"
c.colors.messages.warning.fg = "#1E1E28"
c.colors.prompts.bg = "#1E1E28"
c.colors.prompts.border = "#1E1E28"
c.colors.prompts.fg = "#D7DAE0"
c.colors.prompts.selected.bg = "#302D41"
c.colors.prompts.selected.fg = "#D7DAE0"
c.colors.statusbar.caret.bg = "#DDB6F2"
c.colors.statusbar.caret.fg = "#1E1E28"
c.colors.statusbar.caret.selection.bg = "#96CDFB"
c.colors.statusbar.caret.selection.fg = "#1E1E28"
c.colors.statusbar.command.bg = "#1E1E28"
c.colors.statusbar.command.fg = "#D7DAE0"
c.colors.statusbar.command.private.bg = "#1E1E28"
c.colors.statusbar.command.private.fg = "#D7DAE0"
c.colors.statusbar.insert.bg = "#1E1E28"
c.colors.statusbar.insert.fg = "#96CDFB"
c.colors.statusbar.normal.bg = "#1E1E28"
c.colors.statusbar.normal.fg = "#ABE9B3"
c.colors.statusbar.passthrough.bg = "#1E1E28"
c.colors.statusbar.passthrough.fg = "#B5E8E0"
c.colors.statusbar.private.bg = "#161320"
c.colors.statusbar.private.fg = "#1E1E28"
c.colors.statusbar.progress.bg = "#96CDFB"
c.colors.statusbar.url.error.fg = "#F28FAD"
c.colors.statusbar.url.fg = "#D7DAE0"
c.colors.statusbar.url.hover.fg = "#D7DAE0"
c.colors.statusbar.url.success.http.fg = "#B5E8E0"
c.colors.statusbar.url.success.https.fg = "#ABE9B3"
c.colors.statusbar.url.warn.fg = "#DDB6F2"
c.colors.tabs.bar.bg = "#302D41"
c.colors.tabs.even.bg = "#302D41"
c.colors.tabs.even.fg = "#c3bac6"
c.colors.tabs.odd.bg = "#302D41"
c.colors.tabs.odd.fg = "#c3bac6"
c.colors.tabs.indicator.error = "#F28FAD"
c.colors.tabs.indicator.start = "#96CDFB"
c.colors.tabs.indicator.stop = "#B5E8E0"
c.colors.tabs.pinned.even.bg = "#B5E8E0"
c.colors.tabs.pinned.even.fg = "#C9CBFF"
c.colors.tabs.pinned.odd.bg = "#ABE9B3"
c.colors.tabs.pinned.odd.fg = "#C9CBFF"
c.colors.tabs.pinned.selected.even.bg = "#302D41"
c.colors.tabs.pinned.selected.even.fg = "#D7DAE0"
c.colors.tabs.pinned.selected.odd.bg = "#302D41"
c.colors.tabs.pinned.selected.odd.fg = "#D7DAE0"
c.colors.tabs.selected.even.bg = "#1a1826"
c.colors.tabs.selected.even.fg = "#b5e8e0"
c.colors.tabs.selected.odd.bg = "#1a1826"
c.colors.tabs.selected.odd.fg = "#b5e8e0"
# FONTS
c.fonts.default_family = '"Cabin"'
c.fonts.statusbar = '11pt "Cabin"'
c.fonts.debug_console = '11pt "Cabin"'
c.fonts.completion.entry = '11pt "Cabin"'
c.fonts.default_size = "11pt"
c.fonts.prompts = "default_size sans-serif"

# TABS
c.tabs.padding = {
    "top": 5,
    "right": 5,
    "bottom": 5,
    "left": 5,
}

# STATUSBAR
c.statusbar.padding = {
    "top": 5,
    "right": 5,
    "bottom": 5,
    "left": 5,
}

# Custom key bindings
config.bind("M", "hint links spawn mpv {hint-url}")
config.bind(
    "Zm",
    'hint links spawn st -e youtube-dl -x --audio-format mp3 --prefer-ffmpeg -o "~/Music/%(title)s.%(ext)s" {hint-url}',
)
config.bind(
    "Zv",
    'hint links spawn st -e youtube-dl -f "best[height<=360]" -o "~/Videos/%(title)s - %(creator)s.%(ext)s" "{hint-url}"',
)
config.bind("cr", "config-source")
config.bind("t", "set-cmd-text -s :open -t")
config.bind("xb", "config-cycle statusbar.show always never")
config.bind("xt", "config-cycle tabs.show always never")
config.bind(
    "xx",
    "config-cycle statusbar.show always never;; config-cycle tabs.show always never",
)
config.bind(
    ",ap",
    'config-cycle content.user_stylesheets ~/solarized-everything-css/css/apprentice/apprentice-all-sites.css ""',
)
config.bind(
    ",dr",
    'config-cycle content.user_stylesheets ~/solarized-everything-css/css/darculized/darculized-all-sites.css ""',
)
config.bind(
    ",gr",
    'config-cycle content.user_stylesheets ~/solarized-everything-css/css/gruvbox/gruvbox-all-sites.css ""',
)
config.bind(
    ",sd",
    'config-cycle content.user_stylesheets ~/solarized-everything-css/css/solarized-dark/solarized-dark-all-sites.css ""',
)
config.bind(
    ",sl",
    'config-cycle content.user_stylesheets ~/solarized-everything-css/css/solarized-light/solarized-light-all-sites.css ""',
)
