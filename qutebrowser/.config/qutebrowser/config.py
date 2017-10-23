# How many commands to save in the command history. 
# 0: no history / -1: unlimited
# Type: Int
c.completion.cmd_history_max_items = 500

# Default encoding to use for websites. The encoding must be a string
# describing an encoding such as _utf-8_, _iso-8859-1_, etc.
# Type: String
c.content.default_encoding = 'utf-8'

# Default monospace fonts. Whenever "monospace" is used in a font
# setting, it's replaced with the fonts listed here.
# Type: Font
c.fonts.monospace = 'Hack, "xos4 Terminus", Terminus, Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'

# The default font size for regular text.
# Type: Int
c.fonts.web.size.default = 14

# The default font size for fixed-pitch text.
# Type: Int
c.fonts.web.size.default_fixed = 12

# Behavior when the last tab is closed.
# Type: String
# Valid values:
#   - ignore: Don't do anything.
#   - blank: Load a blank page.
#   - startpage: Load the start page.
#   - default-page: Load the default page.
#   - close: Close the window.
c.tabs.last_close = 'startpage'

# Definitions of search engines which can be used via the address bar.
# Maps a searchengine name (such as `DEFAULT`, or `ddg`) to a URL with a
# `{}` placeholder. The placeholder will be replaced by the search term,
# use `{{` and `}}` for literal `{`/`}` signs. The searchengine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://duckduckgo.com/?q={}',
                        'g': 'https://www.google.com/search?hl=en&q={}',
                        'gf': 'https://www.google.com/search?hl=fr&q={}'}
# The default zoom level.
# Type: Perc
c.zoom.default = '90%'

## Bindings for normal mode
config.bind('K', 'tab-next')
config.bind('J', 'tab-prev')
config.bind('j', 'scroll-page 0 0.3')
config.bind('k', 'scroll-page 0 -0.3')

## youtube bindings
config.bind('m', 'spawn mpv --ytdl-raw-options=format="best[height<=480]" {url}')
config.bind('M', 'hint links spawn mpv --ytdl-raw-options=format="best[height<=480]" {hint-url}')
