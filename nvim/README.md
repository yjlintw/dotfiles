# What's included, How to learn? etc

 * [Code manipulation - rails support, comments, snippets, highlighting](doc/vim/coding.md)
 * [Utils - indents, paste buffer management, lots more](doc/vim/utils.md)
 * [General enhancements that don't add new commands](doc/vim/enhancements.md)

The files in `vim/settings` are customizations stored on a per-plugin
basis. The main keymap is available in yadr-keymap.vim, but some of the vim
files contain key mappings as well.

If you are having unexpected behavior, wondering why a particular key works the way it does,
use: `:map [keycombo]` (e.g. `:map <C-\>`) to see what the key is mapped to. For bonus points, you can see where the mapping was set by using `:verbose map [keycombo]`.
If you omit the key combo, you'll get a list of all the maps. You can do the same thing with nmap, imap, vmap, etc.

## How to customize

You may use `~/.vimrc.before` for settings like the __leader__ setting.
You may `~/.vimrc.after` (for those transitioning from janus) or in `~/.yadr/vim/after/.vimrc.after` for any additional overrides/settings.
If you didn't have janus before, it is recommended to just put it in `~/.yadr/vim/after` so you can better manage your overrides.

## Coding

* tComment - gcc to comment a line, gcp to comment blocks, nuff said
* rails.vim - syntax highlighting, gf (goto file) enhancements, and lots more. should be required for any rails dev
* rake.vim - like rails.vim but for non-rails projects. makes `:Rtags` and other commands just work
* ruby.vim - lots of general enhancements for ruby dev
* necomplcache - intelligent and fast complete as you type, and added Command-Space to select a completion (same as Ctrl-N)
* snipMate - offers textmate-like snippet expansion + snippets collection (honza/vim-snippets). Try hitting TAB after typing a snippet
* jasmine.vim - support for jasmine javascript unit testing, including snippets for it, before, etc..
* vim-javascript-syntax, vim-jquery - better highlighting
* TagHighlight - highlights class names and method names
* vim-coffeescript - support for coffeescript, highlighting
* vim-stylus - support for stylus css language
* vim-bundler - work with bundled gems
* fugitive - "a git wrapper so awesome, it should be illegal...". Try `:Gstatus` and hit <kbd>-</kbd> to toggle files in and out of the index. Git <kbd>d</kbd> to see a diff. Use `git mergetool` or `gmt` to launch vim as a mergetool. The left buffer is your branch, the right is the incoming change, and in the middle is the working copy. Move to the left or right and use `dp` to put the change into the middle. Learn more: http://vimcasts.org/blog/2011/05/the-fugitive-series/
* gitv - use `:gitv` for a better git log browser

## Other enhancements

* IndexedSearch - when you do searches will show you "Match 2 of 4" in the status line
* delimitMate - automatically closes quotes
* SearchComplete - tab completion in the / search window
* syntastic - automatic syntax checking when you save the file
* repeat - adds <kbd>.</kbd> (repeat command) support for complex commands like surround.vim. i.e. if you perform a surround and hit <kbd>.</kbd>, it will Just Work (vim by default will only repeat the last piece of the complex command)
* endwise - automatically closes blocks (if/end)
* autotag - automatically creates tags for fast sourcecode browsing. use <kbd>,</kbd><kbd>f</kbd> over a symbol name to go to its definition
* matchit - helps with matching brackets, improves other plugins
* AnsiEsc - inteprets ansi color codes inside log files. great for looking at Rails logs solarized - a color scheme scientifically calibrated for awesomeness (including skwp mods for ShowMarks)
* Lightline - Improved status bar. Requires patched fonts (installed from fonts/ directory)

## Text Objects

* textobj-rubyblock - ruby blocks become vim textobjects denoted with <kbd>r</kbd>. try <kbd>v</kbd><kbd>a</kbd><kbd>r</kbd>/<kbd>v</kbd><kbd>i</kbd><kbd>r</kbd> to select a ruby block, <kbd>d</kbd><kbd>a</kbd><kbd>r</kbd>/<kbd>d</kbd><kbd>i</kbd><kbd>r</kbd> for delete <kbd>c</kbd><kbd>a</kbd><kbd>r</kbd>/<kbd>c</kbd><kbd>i</kbd><kbd>r</kbd> for change, <kbd>=</kbd><kbd>a</kbd><kbd>r</kbd>/<kbd>=</kbd><kbd>i</kbd><kbd>r</kbd> for formatting, etc
* vim-indentobject - manipulate chunks of code by indentation level (great for yaml) use <kbd>v</kbd><kbd>a</kbd><kbd>i</kbd>/<kbd>v</kbd><kbd>i</kbd><kbd>i</kbd> to select around an indent block, same as above applies
* argtextobj - manipulation of function arguments as an "a" object, so <kbd>v</kbd><kbd>a</kbd><kbd>a</kbd>/<kbd>v</kbd><kbd>i</kbd><kbd>a</kbd>, <kbd>c</kbd><kbd>a</kbd><kbd>a</kbd>/<kbd>c</kbd><kbd>i</kbd><kbd>a</kbd>, <kbd>d</kbd><kbd>a</kbd><kbd>a</kbd>/<kbd>d</kbd><kbd>i</kbd><kbd>a</kbd>, etc..
* textobj-datetime - gives you <kbd>d</kbd><kbd>a</kbd> (date), <kbd>d</kbd><kbd>f</kbd> (date full) and so on text objects. useable with all standard verbs

## Navigation

* NERDTree - everyone's favorite tree browser
* NERDTree-tabs - makes NERDTree play nice with MacVim tabs so that it's on every tab
* ShowMarks - creates a visual gutter to the left of the number column showing you your marks
* EasyMotion - hit <kbd>,</kbd> <kbd>esc</kbd> (forward) or <kbd>,</kbd> <kbd>Shift</kbd> <kbd>Esc</kbd> (back) and watch the magic happen. Just type the letters and jump directly to your target - in the provided vimrc the keys are optimized for home row mostly. Using @skwp modified EasyMotion which uses vimperator-style two character targets.
* CtrlP - <kbd>,</kbd><kbd>t</kbd> to find a file
* Visual-star-search - make the <kbd>*</kbd> (star) search in visual mode behave like expected: searching for the whole selection instead of just the word under the cursor.
* Ag - super fast search by Silver Searcher. hit <kbd>K</kbd> to grep current word
* vim-tmux-navigator - nagivate between vim and tmux splits in the same way you move between normal vim splits.

* <kbd>,</kbd><kbd>z</kbd> - go to previous buffer (:bp)
* <kbd>,</kbd><kbd>x</kbd> - go to next buffer (:bn)
* <kbd>Cmd</kbd>-<kbd>j</kbd> and <kbd>Cmd</kbd>-<kbd>k</kbd> to move up and down roughly by functions (<kbd>Alt</kbd> in Linux)
* <kbd>Ctrl</kbd>-<kbd>o</kbd> - Old cursor position - this is a standard mapping but very useful, so included here
* <kbd>Ctrl</kbd>-<kbd>i</kbd> - opposite of Ctrl-O (again, this is standard)

## Search/Code Navigation

 * <kbd>,</kbd><kbd>f</kbd> - instantly Find definition of class (must have exuberant ctags installed)
 * <kbd>,</kbd><kbd>F</kbd> - same as <kbd>,</kbd><kbd>f</kbd> but in a vertical split
 * <kbd>,</kbd><kbd>g</kbd><kbd>f</kbd> or <kbd>Ctrl</kbd>-<kbd>f</kbd> - same as vim normal gf (go to file), but in a vertical split (works with file.rb:123 line numbers also)
 * <kbd>g</kbd><kbd>F</kbd> - standard vim mapping, here for completeness (go to file at line number)
 * <kbd>K</kbd> - Search the current word under the cursor and show results in quickfix window
 * <kbd>,</kbd><kbd>K</kbd> - Grep the current word up to next exclamation point (useful for ruby foo! methods)
 * <kbd>Cmd</kbd>-<kbd>*</kbd> - highlight all occurrences of current word (similar to regular <kbd>*</kbd> except doesn't move)
 * <kbd>,</kbd><kbd>h</kbd><kbd>l</kbd> - toggle search highlight on and off
 * <kbd>,</kbd><kbd>g</kbd><kbd>g</kbd> or <kbd>,</kbd><kbd>r</kbd><kbd>g</kbd> - Grep command line, type between quotes. Uses RipGrep.
 * After searching with <kbd>,</kbd><kbd>g</kbd><kbd>g</kbd> you can navigate the results with <kbd>Ctrl</kbd>-<kbd>x</kbd> <kbd>a</kbd>nd <kbd>Ctrl</kbd>-<kbd>z</kbd> (or standard vim `:cn` and `:cp`)
 * <kbd>,</kbd><kbd>g</kbd><kbd>d</kbd> - Grep def (greps for 'def [function name]') when cursor is over the function name
 * <kbd>,</kbd><kbd>g</kbd><kbd>c</kbd><kbd>f</kbd> - Grep Current File to find references to the current file
 * <kbd>/</kbd><kbd>/</kbd> - clear the search
 * <kbd>,</kbd><kbd>,</kbd><kbd>w</kbd> (alias <kbd>,</kbd><kbd>esc</kbd>) or <kbd>,</kbd><kbd>,</kbd><kbd>b</kbd> (alias <kbd>,</kbd><kbd>shift</kbd><kbd>esc</kbd>) - EasyMotion, a vimium/vimperator style tool that highlights jump-points on the screen and lets you type to get there.
 * <kbd>,</kbd><kbd>m</kbd><kbd>c</kbd> - mark this word for MultiCursor (like sublime). Use Ctrl-n (next), Ctrl-p (prev), Ctrl-x(skip) to add more cursors, then do normal vim things like edit the word.
 * <kbd>g</kbd><kbd>K</kbd> - Opens the documentation for the word under the cursor.
 * <kbd>Space</kbd> - Sneak - type two characters to move there in a line. Kind of like vim's <kbd>f</kbd> <kbd>b</kbd>ut more accurate.
 * `:Gsearch foo` - global search, then do your normal `%s/search/replace/g` and follow up with `:Greplace` to replace across all files. When done use `:wall` to write all the files.

## File Navigation

 * <kbd>,</kbd><kbd>t</kbd> - CtrlP fuzzy file selector
 * <kbd>,</kbd><kbd>b</kbd> - CtrlP buffer selector - great for jumping to a file you already have open
 * <kbd>Cmd</kbd>-<kbd>Shift</kbd>-<kbd>M</kbd> - jump to method - CtrlP tag search within current buffer
 * <kbd>,</kbd><kbd>j</kbd><kbd>m</kbd> <kbd>j</kbd>ump to models. Other <kbd>,</kbd><kbd>j</kbd> mappings: <kbd>,</kbd><kbd>j</kbd><kbd>c</kbd> for controllers, <kbd>,</kbd><kbd>j</kbd><kbd>h</kbd> for helpers, etc. If you think of a concept and a letter, we've got you covered.
 * <kbd>Cmd</kbd>-<kbd>Shift</kbd>-<kbd>N</kbd> - NERDTree toggle (<kbd>Alt</kbd> in Linux)
 * <kbd>Cmd</kbd>-<kbd>Shift</kbd>-<kbd>P</kbd> - Clear CtrlP cache

## Better keystrokes for common editing commands

 * <kbd>Ctrl</kbd>-<kbd>Space</kbd> to autocomplete.
 * <kbd>T</kbd><kbd>a</kbd><kbd>b</kbd> for snipmate snippets.
 * <kbd>,</kbd><kbd>#</kbd>,<kbd>,</kbd><kbd>"</kbd>,<kbd>,</kbd><kbd>'</kbd>,<kbd>,</kbd><kbd>]</kbd>,<kbd>,</kbd><kbd>)</kbd>,<kbd>,</kbd><kbd>}</kbd> to surround a word in these common wrappers. the <kbd>#</kbd> does `#{ruby interpolation}`. works in visual mode (thanks @cj). Normally these are done with something like <kbd>y</kbd><kbd>s</kbd><kbd>w</kbd><kbd>#</kbd>
 * <kbd>Cmd</kbd>-<kbd>'</kbd>, <kbd>Cmd</kbd>-<kbd>"</kbd>, <kbd>Cmd</kbd>-<kbd>]</kbd>, <kbd>Cmd</kbd>-<kbd>)</kbd>, etc to change content inside those surrounding marks. You don't have to be inside them (<kbd>Alt</kbd> in Linux)
 * <kbd>,</kbd><kbd>.</kbd> to go to last edit location (same as <kbd>'</kbd><kbd>.</kbd>) because the apostrophe is hard on the pinky
 * <kbd>,</kbd><kbd>c</kbd><kbd>i</kbd> to change inside any set of quotes/brackets/etc

## Tabs, Windows, Splits

 * Use <kbd>Cmd</kbd>-<kbd>1</kbd> thru <kbd>Cmd</kbd>-<kbd>9</kbd> to switch to a specific tab number (like iTerm and Chrome) - and tabs have been set up to show numbers (<kbd>Alt</kbd> in Linux)
 * <kbd>Ctrl</kbd>-<kbd>h,l,j,k</kbd> - to move left, right, down, up between splits. This also works between vim and tmux splits thanks to `vim-tmux-navigator`.
 * <kbd>Q</kbd> - Intelligent Window Killer. Close window `wincmd c` if there are multiple windows to same buffer, or kill the buffer `bwipeout` if this is the last window into it.
 * <kbd>v</kbd><kbd>v</kbd> - vertical split (<kbd>Ctrl</kbd>-<kbd>w</kbd>,<kbd>v</kbd>)
 * <kbd>s</kbd><kbd>s</kbd> - horizontal split (<kbd>Ctrl</kbd>-<kbd>w</kbd>,<kbd>s</kbd>)
 * <kbd>,</kbd><kbd>q</kbd><kbd>o</kbd> - open quickfix window (this is where output from Grep goes)
 * <kbd>,</kbd><kbd>q</kbd><kbd>c</kbd> - close quickfix

## Utility

* SplitJoin - easily split up things like ruby hashes into multiple lines or join them back together. Try :SplitjoinJoin and :SplitjoinSplit or use the bindings <kbd>s</kbd><kbd>j</kbd>(split) and <kbd>s</kbd><kbd>k</kbd>(unsplit) - mnemonically j and k are directions down and up
* tabularize - align code effortlessly by using `:Tabularize /[character]` to align by a character, or try the keymaps
* yankring - effortless sanity for pasting. every time you yank something it goes into a buffer. after hitting <kbd>p</kbd> to paste, use <kbd>ctrl</kbd>-<kbd>p</kbd> or <kbd>ctrl</kbd>-<kbd>n</kbd> to cycle through the paste options. great for when you accidentally overwrite your yank with a delete.
* surround - super easy quote and tag manipulation - <kbd>y</kbd><kbd>s</kbd><kbd>i</kbd><kbd>w</kbd><kbd>"</kbd> - sourround inner word with quotes. <kbd>c</kbd><kbd>i</kbd><kbd>"</kbd><kbd>'</kbd> - change inner double quotes to single quotes, etc
* greplace - use `:Gsearch` to find across many files, replace inside the changes, then `:Greplace `to do a replace across all matches - made lightning fast with RipGrep
* vim-markdown-preview - `:Mm` to view your README.md as html
* html-escape - <kbd>,</kbd><kbd>h</kbd><kbd>e</kbd> and <kbd>,</kbd><kbd>h</kbd><kbd>u</kbd> to escape and unescape html
* Gundo - visualize your undos - pretty amazing plugin. Hit <kbd>,</kbd><kbd>u</kbd> with my keymappings to trigger it, very user friendly
* vim-indent-guides - visual indent guides, off by default
* color_highlight - use `:ColorCodes` to see hex colors highlighted
* change-inside-surroundings - change content inside delimiters like quotes/brackets
* rspec.vim - used for color highlighting rspec correctly even if specs live outside of spec/ (rails.vim doesn't handle this)
* Rg - use `:Rg` to search across multiple files. Faster than Grep, Ack, Ag...
* vim-session: use `:SaveSession` and `:OpenSession` to come back to your saved window layout

 * <kbd>Ctrl</kbd>-<kbd>p</kbd> after pasting - Use <kbd>p</kbd> to paste and <kbd>Ctrl</kbd>-<kbd>p</kbd> to cycle through previous pastes. Provided by YankRing.
 * <kbd>,</kbd><kbd>y</kbd><kbd>r</kbd> - view the yankring - a list of your previous copy commands. also you can paste and hit <kbd>ctrl</kbd>-<kbd>p</kbd> for cycling through previous copy commands
 * <kbd>c</kbd><kbd>r</kbd><kbd>s</kbd>, <kbd>c</kbd><kbd>r</kbd><kbd>c</kbd>, <kbd>c</kbd><kbd>r</kbd><kbd>u</kbd> via abolish.vim, coerce to snake_case, camelCase, and UPPERCASE. There are more `:help abolish`
 * <kbd>:</kbd><kbd>N</kbd><kbd>R</kbd> - NarrowRgn - use this on a bit of selected text to create a new split with just that text. Do some work on it, then :wq it to get the results back.
 * <kbd>,</kbd><kbd>i</kbd><kbd>g</kbd> - toggle visual indentation guides
 * <kbd>,</kbd><kbd>c</kbd><kbd>f</kbd> - Copy Filename of current file (full path) into system (not vi) paste buffer
 * <kbd>,</kbd><kbd>c</kbd><kbd>n</kbd> - Copy Filename of current file (name only, no path)
 * <kbd>,</kbd><kbd>y</kbd><kbd>w</kbd> - yank a word from anywhere within the word (so you don't have to go to the beginning of it)
 * <kbd>,</kbd><kbd>o</kbd><kbd>w</kbd> - overwrite a word with whatever is in your yank buffer - you can be anywhere on the word. saves having to visually select it
 * <kbd>,</kbd><kbd>o</kbd><kbd>c</kbd><kbd>f</kbd> - open changed files (stolen from @garybernhardt). open all files with git changes in splits
 * <kbd>,</kbd><kbd>w</kbd> - strip trailing whitespaces
 * <kbd>s</kbd><kbd>j</kbd> - split a line such as a hash {:foo => {:bar => :baz}} into a multiline hash (j = down)
 * <kbd>s</kbd><kbd>k</kbd> - unsplit a link (k = up)
 * <kbd>,</kbd><kbd>h</kbd><kbd>e</kbd> - Html Escape
 * <kbd>,</kbd><kbd>h</kbd><kbd>u</kbd> - Html Unescape
 * <kbd>,</kbd><kbd>h</kbd><kbd>p</kbd> - Html Preview (open in Safari)
 * <kbd>Cmd</kbd>-<kbd>Shift</kbd>-<kbd>A</kbd> - align things (type a character/expression to align by, works in visual mode or by itself) (<kbd>Alt</kbd> in Linux)
 * `:ColorToggle` - turn on #abc123 color highlighting (useful for css)
 * `:Gitv` - Git log browsers
 * <kbd>,</kbd><kbd>h</kbd><kbd>i</kbd> - show current Highlight group. if you don't like the color of something, use this, then use `hi! link [groupname] [anothergroupname]` in your vimrc.after to remap the color. You can see available colors using `:hi`
 * <kbd>,</kbd><kbd>g</kbd><kbd>t</kbd> - Go Tidy - tidy up your html code (works on a visual selection)
 * `:Wrap` - wrap long lines (e.g. when editing markdown files)
 * <kbd>Cmd</kbd>-<kbd>/</kbd> - toggle comments (usually gcc from tComment) (`Alt` in Linux)
 * <kbd>g</kbd><kbd>c</kbd><kbd>p</kbd> (comment a paragraph)

## Vim Dev

 * <kbd>,</kbd><kbd>v</kbd><kbd>c</kbd> - (Vim Command) copies the command under your cursor and executes it in vim. Great for testing single line changes to vimrc.
 * <kbd>,</kbd><kbd>v</kbd><kbd>r</kbd> - (Vim Reload) source current file as a vim file

## Extending and overriding YADR settings

* [Debugging vim keymappings](doc/vim/keymaps.md)
* [Overriding vim settings with ~/.vimrc.after and friends](doc/vim/override.md)
* [Adding your own vim plugins](doc/vim/manage_plugins.md)

---

* VIM
  * [Javascript dict](https://raw.githubusercontent.com/cooldaemon/myhome/master/.vim/dict/javascript.dict) + NeoComplete hook
  * [Cosco.vim](http://github.com/lfilho/cosco.vim). my own plugin for comma or semi-colon easy insertion
  * [Sideways.vim](https://github.com/AndrewRadev/sideways.vim). Makes dealing with method arguments easier
  * [Local .vimrc](https://github.com/MarcWeber/vim-addon-local-vimrc). Loads/runs a `.vimrc` relative to the current folder (great for project specific configurations)
  * [base16-lfilho](https://github.com/lfilho/base16-vim). My personal colorscheme for vim
  * [Editor Config](https://github.com/editorconfig/editorconfig-vim) plugin
  * [Expand region](https://github.com/terryma/vim-expand-region). Hit `<enter>` to expand selection inside stuff like `(), [], {}, <>,` etc
  * [Sparkup](https://github.com/rstacruz/sparkup). HTML Zen Coding.
  * OSX only: [Copy-as-RTF](https://github.com/zerowidth/vim-copy-as-rtf). For copying syntax highlighted code to the clipboard and pasting, for example on Keynote, Pages, etc
  * Beautiful Fantasque font
  * Splits open to the right (not left) and VSplits open to the bottom (not top)
  * Strips trailing withespace automatically upon save
  * Perl regex style by default
  * Markdown files are able to show fanced languages (programming blocks with syntax highlighting)
  * Custom lightline bar
  * NERDTree ignores `node_modules` folder
  * Vim Function to style RequireJS imports (`:StyleRequireJsImports`)
  * Vim Function to remove padding blank lines inside functions (`:KillBlockPadding`)
  * Return <kbd>Ctrl</kbd>-<kbd>x</kbd> and <kbd>Ctrl</kbd>-<kbd>z</kbd> to their original functions
    * <kbd>,</kbd><kbd>,</kbd><kbd>n</kbd> and <kbd>,</kbd><kbd>,</kbd><kbd>p</kbd> to navigate the quickfix error list
  * <kbd>A</kbd><kbd>g</kbd> now highlights the search and doesn't open first result by default
