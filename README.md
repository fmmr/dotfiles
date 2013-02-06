dotfiles
========

clone:
`git clone git@github.com:fmmr/dotfiles.git .dotfiles`

hook in:
`
SCH-BP-2003:~ frerodla$ cat .bash_profile 
. /Users/fmr/.dotfiles/0_dotfiles.sh
SCH-BP-2003:~ frerodla$ 
`

| files/directories | description |
|:-----------|:------------|
| 0_dotfiles.sh      |
| 1_settings.sh      |
| 1_settings         |  override settings in `settings.sh` by sourcing all files in this directory  |
| 2_pre              |  source all files in this directory first   |
| 2_pre/colours.sh   |
| 3_env.sh           |
| 4_prompt_bash.sh   |
| 5_completions.sh   |
| 6_aliases.sh       |
| 7_priv             |  source all files in this directory (will not be added to git) |
| 9_misc             |  source all files in this directory   |
| X_misc_not_sourced |  repo for misc files which will not be sourced |
| X_priv_not_sourced |  repo for misc files which will not be sourced (will not be added to git) |
