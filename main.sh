
echo "${palette_lpurple}running script ${palette_restore}"
echo "${palette_lpurple}****************************************** ${palette_restore}"
setopt prompt_subst
PS4=$'\033[1;34m+ $(date +%H:%M:%S)> \033[0m'

## SCRIPT #########################################################
# set variables

set -ex

# execute scripts
which k
echo hi friends


###################################################################
set +ex

echo "${palette_lpurple}****************************************** ${palette_restore}"
echo "${palette_lpurple}finished! ${palette_restore}"
