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
* fugitive - "a git wrapper so awesome, it should be illegal...". Try `:Gstatus` and hit `-` to toggle files in and out of the index. Git `d` to see a diff. Use `git mergetool` or `gmt` to launch vim as a mergetool. The left buffer is your branch, the right is the incoming change, and in the middle is the working copy. Move to the left or right and use `dp` to put the change into the middle. Learn more: http://vimcasts.org/blog/2011/05/the-fugitive-series/
* gitv - use `:gitv` for a better git log browser

## Other enhancements

* IndexedSearch - when you do searches will show you "Match 2 of 4" in the status line
* delimitMate - automatically closes quotes
* SearchComplete - tab completion in the / search window
* syntastic - automatic syntax checking when you save the file
* repeat - adds `.` (repeat command) support for complex commands like surround.vim. i.e. if you perform a surround and hit `.`, it will Just Work (vim by default will only repeat the last piece of the complex command)
* endwise - automatically closes blocks (if/end)
* autotag - automatically creates tags for fast sourcecode browsing. use `,f` over a symbol name to go to its definition
* matchit - helps with matching brackets, improves other plugins
* AnsiEsc - inteprets ansi color codes inside log files. great for looking at Rails logs
* solarized - a color scheme scientifically calibrated for awesomeness (including skwp mods for ShowMarks)
* Lightline - Improved status bar. Requires patched fonts (installed from fonts/ directory)

## Text Objects

* textobj-rubyblock - ruby blocks become vim textobjects denoted with `r`. try var/vir to select a ruby block, dar/dir for delete car/cir for change, =ar/=ir for formatting, etc
* vim-indentobject - manipulate chunks of code by indentation level (great for yaml) use vai/vii to select around an indent block, same as above applies
* argtextobj - manipulation of function arguments as an "a" object, so vaa/via, caa/cia, daa/dia, etc..
* textobj-datetime - gives you `da` (date), `df` (date full) and so on text objects. useable with all standard verbs
* vim-textobj-entire - gives you `e` for entire document. so vae (visual around entire document), and etc
* vim-textobj-rubysymbol - gives you `:` textobj. so va: to select a ruby symbol. da: to delete a symbol..etc
* vim-textobj-function - gives you `f` textobj. so vaf to select a function
* vim-textobj-function-javascript - same as above, but for javascript functions
* vim-textobj-underscore - gives you `_` textobj. So vi_ selects what's inside a pair of underscores
* next-textobject - from Steve Losh, ability to use `n` such as vinb (visual inside (n)ext set of parens)
* textobj-word-column - gives you `c` (word) and `C` (WORD) for handling columns/blocks.

## Navigation

* NERDTree - everyone's favorite tree browser
* NERDTree-tabs - makes NERDTree play nice with MacVim tabs so that it's on every tab
* ShowMarks - creates a visual gutter to the left of the number column showing you your marks
* EasyMotion - hit <kbd>,</kbd> <kbd>esc</kbd> (forward) or <kbd>,</kbd> <kbd>Shift</kbd> <kbd>Esc</kbd> (back) and watch the magic happen. Just type the letters and jump directly to your target - in the provided vimrc the keys are optimized for home row mostly. Using @skwp modified EasyMotion which uses vimperator-style two character targets.
* CtrlP - <kbd>,</kbd> <kbd>t</kbd> to find a file
* Visual-star-search - make the <kbd>*</kbd> (star) search in visual mode behave like expected: searching for the whole selection instead of just the word under the cursor.
* Ag - super fast search by Silver Searcher. hit <kbd>K</kbd> to grep current word
* vim-tmux-navigator - nagivate between vim and tmux splits in the same way you move between normal vim splits.

* `,z` - go to previous buffer (:bp)
* `,x` - go to next buffer (:bn)
* `Cmd-j` and `Cmd-k` to move up and down roughly by functions (`Alt` in Linux)
* `Ctrl-o` - Old cursor position - this is a standard mapping but very useful, so included here
* `Ctrl-i` - opposite of Ctrl-O (again, this is standard)

## Search/Code Navigation

 * `,f` - instantly Find definition of class (must have exuberant ctags installed)
 * `,F` - same as `,f` but in a vertical split
 * `,gf` or `Ctrl-f` - same as vim normal gf (go to file), but in a vertical split (works with file.rb:123 line numbers also)
 * `gF` - standard vim mapping, here for completeness (go to file at line number)
 * `K` - Search the current word under the cursor and show results in quickfix window
 * `,K` - Grep the current word up to next exclamation point (useful for ruby foo! methods)
 * `Cmd-*` - highlight all occurrences of current word (similar to regular `*` except doesn't move)
 * `,hl` - toggle search highlight on and off
 * `,gg` or `,rg` - Grep command line, type between quotes. Uses RipGrep.
 * After searching with `,gg` you can navigate the results with `Ctrl-x` and `Ctrl-z` (or standard vim `:cn` and `:cp`)
 * `,gd` - Grep def (greps for 'def [function name]') when cursor is over the function name
 * `,gcf` - Grep Current File to find references to the current file
 * `//` - clear the search
 * `,,w` (alias `,<esc>`) or `,,b` (alias `,<shift-esc>`) - EasyMotion, a vimperator style tool that highlights jump-points on the screen and lets you type to get there.
 * `,mc` - mark this word for MultiCursor (like sublime). Use `Ctrl-n` (next), `Ctrl-p` (prev), `Ctrl-x`(skip) to add more cursors, then do normal vim things like edit the word.
 * `gK` - Opens the documentation for the word under the cursor.
 * Spacebar - Sneak - type two characters to move there in a line. Kind of like vim's `f` but more accurate.
 * `:Gsearch foo` - global search, then do your normal `%s/search/replace/g` and follow up with `:Greplace` to replace across all files. When done use `:wall` to write all the files.

## File Navigation

 * `,t` - CtrlP fuzzy file selector
 * `,b` - CtrlP buffer selector - great for jumping to a file you already have open
 * `Cmd-Shift-M` - jump to method - CtrlP tag search within current buffer
 * `,jm` jump to models. Other `,j` mappings: `,jc` for controllers, `,jh` for helpers, etc. If you think of a concept and a letter, we've got you covered.
 * `Cmd-Shift-N` - NERDTree toggle (`Alt` in Linux)
 * `Ctrl-\\` - Show current file in NERDTree
 * `Cmd-Shift-P` - Clear CtrlP cache

## Better keystrokes for common editing commands

 * Ctrl-Space to autocomplete. Tab for snipmate snippets.
 * `,#` `,"` `,'` `,]` `,)` `,}` to surround a word in these common wrappers. the # does #{ruby interpolation}. works in visual mode (thanks @cj). Normally these are done with something like `ysw#`
 * `Cmd-'`, `Cmd-"`, `Cmd-]`, `Cmd-)`, etc to change content inside those surrounding marks. You don't have to be inside them (`Alt` in Linux)
 * `,.` to go to last edit location (same as `'.`) because the apostrophe is hard on the pinky
 * `,ci` to change inside any set of quotes/brackets/etc

## Tabs, Windows, Splits

 * Use `Cmd-1` thru `Cmd-9` to switch to a specific tab number (like iTerm and Chrome) - and tabs have been set up to show numbers (`Alt` in Linux)
 * `Ctrl-h,l,j,k` - to move left, right, down, up between splits. This also works between vim and tmux splits thanks to `vim-tmux-navigator`.
 * `Q` - Intelligent Window Killer. Close window `wincmd c` if there are multiple windows to same buffer, or kill the buffer `bwipeout` if this is the last window into it.
 * `vv` - vertical split (`Ctrl-w,v`)
 * `ss` - horizontal split (`Ctrl-w,s`)
 * `,qo` - open quickfix window (this is where output from Grep goes)
 * `,qc` - close quickfix

## Utility

* SplitJoin - easily split up things like ruby hashes into multiple lines or join them back together. Try :SplitjoinJoin and :SplitjoinSplit or use the bindings sj(split) and sk(unsplit) - mnemonically j and k are directions down and up
* tabularize - align code effortlessly by using :Tabularize /[character] to align by a character, or try the keymaps
* yankring - effortless sanity for pasting. every time you yank something it goes into a buffer. after hitting p to paste, use ctrl-p or ctrl-n to cycle through the paste options. great for when you accidentally overwrite your yank with a delete.
* surround - super easy quote and tag manipulation - ysiw" - sourround inner word with quotes. ci"' - change inner double quotes to single quotes, etc
* greplace - use :Gsearch to find across many files, replace inside the changes, then :Greplace to do a replace across all matches - made lightning fast with RipGrep
* vim-markdown-preview - :Mm to view your README.md as html
* html-escape - ,he and ,hu to escape and unescape html
* Gundo - visualize your undos - pretty amazing plugin. Hit ,u with my keymappings to trigger it, very user friendly
* vim-indent-guides - visual indent guides, off by default
* color_highlight - use :ColorCodes to see hex colors highlighted
* change-inside-surroundings - change content inside delimiters like quotes/brackets
* rspec.vim - used for color highlighting rspec correctly even if specs live outside of spec/ (rails.vim doesn't handle this)
* Rg - use :Rg to search across multiple files. Faster than Grep, Ack, Ag...
* vim-session: use `:SaveSession` and `:OpenSession` to come back to your saved window layout

 * `Ctrl-p` after pasting - Use `p` to paste and `Ctrl-p` to cycle through previous pastes. Provided by YankRing.
 * `,yr` - view the yankring - a list of your previous copy commands. also you can paste and hit `ctrl-p` for cycling through previous copy commands
 * `crs`, `crc`, `cru` via abolish.vim, coerce to snake_case, camelCase, and UPPERCASE. There are more `:help abolish`
 * `:NR` - NarrowRgn - use this on a bit of selected text to create a new split with just that text. Do some work on it, then :wq it to get the results back.
 * `,ig` - toggle visual indentation guides
 * `,cf` - Copy Filename of current file (full path) into system (not vi) paste buffer
 * `,cn` - Copy Filename of current file (name only, no path)
 * `,yw` - yank a word from anywhere within the word (so you don't have to go to the beginning of it)
 * `,ow` - overwrite a word with whatever is in your yank buffer - you can be anywhere on the word. saves having to visually select it
 * `,ocf` - open changed files (stolen from @garybernhardt). open all files with git changes in splits
 * `,w` - strip trailing whitespaces
 * `sj` - split a line such as a hash {:foo => {:bar => :baz}} into a multiline hash (j = down)
 * `sk` - unsplit a link (k = up)
 * `,he` - Html Escape
 * `,hu` - Html Unescape
 * `,hp` - Html Preview (open in Safari)
 * `Cmd-Shift-A` - align things (type a character/expression to align by, works in visual mode or by itself) (`Alt` in Linux)
 * `:ColorToggle` - turn on #abc123 color highlighting (useful for css)
 * `:Gitv` - Git log browsers
 * `,hi` - show current Highlight group. if you don't like the color of something, use this, then use `hi! link [groupname] [anothergroupname]` in your vimrc.after to remap the color. You can see available colors using `:hi`
 * `,gt` - Go Tidy - tidy up your html code (works on a visual selection)
 * `:Wrap` - wrap long lines (e.g. when editing markdown files)
 * `Cmd-/` - toggle comments (usually gcc from tComment) (`Alt` in Linux)
 * `gcp` (comment a paragraph)

## Rails & Ruby

 * `,vv` and `,cc` to switch between view and controller - these are maps to :Rcontroller and :Rview. Explore the :R<Tab> family of commands for more fun from rails.vim!
 * `,rs` and `,rl` to run rspec or a spec line in iTerm (check iTerm window for results)
 * `,ss` and `,sl` for the same using `spring rspec` which makes your Rails specs faster by caching the Rails env (must have spring gem installed)
 * vim-ruby-refactoring - try `,rem`, `,rel` to extract methods or let statements
 * `Ctrl-s` - Open related spec in a split. Similar to :A and :AV from rails.vim but is also aware of the fast_spec dir and faster to type
 * `:Bopen [gem name]` to navigate to a gem (@tpope/vim-bundler)
 * `,gcp` - Grep Current Partial to find references to the current view partial
 * `,orb` - outer ruby block. takes you one level up from nested blocks (great for rspec)

## Vim Dev

 * `,vc` - (Vim Command) copies the command under your cursor and executes it in vim. Great for testing single line changes to vimrc.
 * `,vr` - (Vim Reload) source current file as a vim file

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
  * Return `<C-x>` and `<C-z>` to their original functions
    * `,,n` and `,,p` to navigate the quickfix error list
  * `Ag` now highlights the search and doesn't open first result by default
