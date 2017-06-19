# Git Customizations:

YADR will take over your `~/.gitconfig`, so if you want to store your usernames, please put them into `~/.gitconfig.user`

It is recommended to use this file to set your user info. Alternately, you can set the appropriate environment variables in your `~/.secrets`.

  * `git l` or `gl`- a much more usable git log
  * `git b` or `gb`- a list of branches with summary of last commit
  * `git r` - a list of remotes with info
  * `git t` or `gt`- a list of tags with info
  * `git nb` or `gnb`- a (n)ew (b)ranch - like checkout -b
  * `git cp` or `gcp`- cherry-pick -x (showing what was cherrypicked)
  * `git simple` - a clean format for creating changelogs
  * `git recent-branches` - if you forgot what you've been working on
  * `git unstage` / `guns` (remove from index) and `git uncommit` / `gunc` (revert to the time prior to the last commit - dangerous if already pushed) aliases
  * Some sensible default configs, such as improving merge messages, push only pushes the current branch, removing status hints, and using mnemonic prefixes in diff: (i)ndex, (w)ork tree, (c)ommit and (o)bject
  * Slightly improved colors for diff
  * `gdmb` (g)it (d)elete (m)erged (b)ranches - Deletes all branches already merged on current branch
