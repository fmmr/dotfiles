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

| Directories | description |
|:-----------|:------------|
| 0_pre            |  source all files in this directory first   |
| 1_settings       |  override settings in `settings.sh` by sourcing all files in this directory  |
| misc             |  source all files in this directory   |
| misc_not_sourced |  repo for misc files which will not be sourced |
| priv             |  source all files in this directory (will not be added to git) |
| priv_not_sourced |  repo for misc files which will not be sourced (will not be added to git) |
