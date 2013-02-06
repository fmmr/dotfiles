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
| 0_dotfiles.sh      | main source-file/hook for dotfiles|
| 1_settings.sh      | all settings which are used (may be overridden in 1_settingsdirectory) |
| 1_settings         | override settings in `1_settings.sh` by sourcing all files in this directory (will not be added to git) |
| 2_pre              | source all files in this directory first |
| 2_pre/colours.sh   | define constants for colours |
| 3_env.sh           | misc environment variables |
| 4_prompt_bash.sh   | the prompt! |
| 5_completions.sh   | bash-completions |
| 6_aliases.sh       | alises |
| 7_priv             |  source all files in this directory (will not be added to git) |
| 9_misc             |  source all files in this directory   |
| X_misc_not_sourced |  repo for misc files which will not be sourced |
| X_priv_not_sourced |  repo for misc files which will not be sourced (will not be added to git) |
