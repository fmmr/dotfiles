_unleash-cli() {
    local i cur prev opts cmd
    COMPREPLY=()
    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
        cur="$2"
    else
        cur="${COMP_WORDS[COMP_CWORD]}"
    fi
    prev="$3"
    cmd=""
    opts=""

    for i in "${COMP_WORDS[@]:0:COMP_CWORD}"
    do
        case "${cmd},${i}" in
            ",$1")
                cmd="unleash__cli"
                ;;
            unleash__cli,archive)
                cmd="unleash__cli__archive"
                ;;
            unleash__cli,archive-everywhere)
                cmd="unleash__cli__archive__everywhere"
                ;;
            unleash__cli,completion)
                cmd="unleash__cli__completion"
                ;;
            unleash__cli,create)
                cmd="unleash__cli__create"
                ;;
            unleash__cli,create-everywhere)
                cmd="unleash__cli__create__everywhere"
                ;;
            unleash__cli,create-everywhere-from)
                cmd="unleash__cli__create__everywhere__from"
                ;;
            unleash__cli,create-from)
                cmd="unleash__cli__create__from"
                ;;
            unleash__cli,disable)
                cmd="unleash__cli__disable"
                ;;
            unleash__cli,disable-everywhere)
                cmd="unleash__cli__disable__everywhere"
                ;;
            unleash__cli,enable)
                cmd="unleash__cli__enable"
                ;;
            unleash__cli,enable-everywhere)
                cmd="unleash__cli__enable__everywhere"
                ;;
            unleash__cli,get)
                cmd="unleash__cli__get"
                ;;
            unleash__cli,get-everywhere)
                cmd="unleash__cli__get__everywhere"
                ;;
            unleash__cli,help)
                cmd="unleash__cli__help"
                ;;
            unleash__cli,init)
                cmd="unleash__cli__init"
                ;;
            unleash__cli,list)
                cmd="unleash__cli__list"
                ;;
            unleash__cli,markdown)
                cmd="unleash__cli__markdown"
                ;;
            unleash__cli,update-everywhere-from)
                cmd="unleash__cli__update__everywhere__from"
                ;;
            unleash__cli,update-from)
                cmd="unleash__cli__update__from"
                ;;
            unleash__cli__help,archive)
                cmd="unleash__cli__help__archive"
                ;;
            unleash__cli__help,archive-everywhere)
                cmd="unleash__cli__help__archive__everywhere"
                ;;
            unleash__cli__help,completion)
                cmd="unleash__cli__help__completion"
                ;;
            unleash__cli__help,create)
                cmd="unleash__cli__help__create"
                ;;
            unleash__cli__help,create-everywhere)
                cmd="unleash__cli__help__create__everywhere"
                ;;
            unleash__cli__help,create-everywhere-from)
                cmd="unleash__cli__help__create__everywhere__from"
                ;;
            unleash__cli__help,create-from)
                cmd="unleash__cli__help__create__from"
                ;;
            unleash__cli__help,disable)
                cmd="unleash__cli__help__disable"
                ;;
            unleash__cli__help,disable-everywhere)
                cmd="unleash__cli__help__disable__everywhere"
                ;;
            unleash__cli__help,enable)
                cmd="unleash__cli__help__enable"
                ;;
            unleash__cli__help,enable-everywhere)
                cmd="unleash__cli__help__enable__everywhere"
                ;;
            unleash__cli__help,get)
                cmd="unleash__cli__help__get"
                ;;
            unleash__cli__help,get-everywhere)
                cmd="unleash__cli__help__get__everywhere"
                ;;
            unleash__cli__help,help)
                cmd="unleash__cli__help__help"
                ;;
            unleash__cli__help,init)
                cmd="unleash__cli__help__init"
                ;;
            unleash__cli__help,list)
                cmd="unleash__cli__help__list"
                ;;
            unleash__cli__help,markdown)
                cmd="unleash__cli__help__markdown"
                ;;
            unleash__cli__help,update-everywhere-from)
                cmd="unleash__cli__help__update__everywhere__from"
                ;;
            unleash__cli__help,update-from)
                cmd="unleash__cli__help__update__from"
                ;;
            *)
                ;;
        esac
    done

    case "${cmd}" in
        unleash__cli)
            opts="-v -q -h -V --verbose --quiet --help --version init create create-from create-everywhere create-everywhere-from list get get-everywhere update-from update-everywhere-from completion enable enable-everywhere disable disable-everywhere archive archive-everywhere markdown help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__archive)
            opts="-v -q -h --verbose --quiet --help finn-dev finn-prod tori-dev tori-prod dba-dev dba-prod blocket-dev blocket-prod local <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__archive__everywhere)
            opts="-v -q -h --verbose --quiet --help <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__completion)
            opts="-v -q -h --verbose --quiet --help bash elvish fish powershell zsh [NAME]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__create)
            opts="-d -e -t -v -q -h --description --enabled --type --verbose --quiet --help finn-dev finn-prod tori-dev tori-prod dba-dev dba-prod blocket-dev blocket-prod local <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --description)
                    COMPREPLY=("${cur}")
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace
                    fi
                    return 0
                    ;;
                -d)
                    COMPREPLY=("${cur}")
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace
                    fi
                    return 0
                    ;;
                --type)
                    COMPREPLY=($(compgen -W "release experiment operational kill-switch permission" -- "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -W "release experiment operational kill-switch permission" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__create__everywhere)
            opts="-d -e -t -v -q -h --description --enabled --type --verbose --quiet --help <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --description)
                    COMPREPLY=("${cur}")
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace
                    fi
                    return 0
                    ;;
                -d)
                    COMPREPLY=("${cur}")
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o nospace
                    fi
                    return 0
                    ;;
                --type)
                    COMPREPLY=($(compgen -W "release experiment operational kill-switch permission" -- "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -W "release experiment operational kill-switch permission" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__create__everywhere__from)
            opts="-v -q -h --verbose --quiet --help <FEATURE.json>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__create__from)
            opts="-v -q -h --verbose --quiet --help finn-dev finn-prod tori-dev tori-prod dba-dev dba-prod blocket-dev blocket-prod local <FEATURE.json>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__disable)
            opts="-v -q -h --verbose --quiet --help finn-dev finn-prod tori-dev tori-prod dba-dev dba-prod blocket-dev blocket-prod local <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__disable__everywhere)
            opts="-e -v -q -h --env --verbose --quiet --help <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --env)
                    COMPREPLY=($(compgen -W "dev prod" -- "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -W "dev prod" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__enable)
            opts="-v -q -h --verbose --quiet --help finn-dev finn-prod tori-dev tori-prod dba-dev dba-prod blocket-dev blocket-prod local <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__enable__everywhere)
            opts="-e -v -q -h --env --verbose --quiet --help <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --env)
                    COMPREPLY=($(compgen -W "dev prod" -- "${cur}"))
                    return 0
                    ;;
                -e)
                    COMPREPLY=($(compgen -W "dev prod" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__get)
            opts="-v -q -h --verbose --quiet --help finn-dev finn-prod tori-dev tori-prod dba-dev dba-prod blocket-dev blocket-prod local <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__get__everywhere)
            opts="-v -q -h --verbose --quiet --help <NAME>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help)
            opts="init create create-from create-everywhere create-everywhere-from list get get-everywhere update-from update-everywhere-from completion enable enable-everywhere disable disable-everywhere archive archive-everywhere markdown help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__archive)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__archive__everywhere)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__completion)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__create)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__create__everywhere)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__create__everywhere__from)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__create__from)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__disable)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__disable__everywhere)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__enable)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__enable__everywhere)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__get)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__get__everywhere)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__help)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__init)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__list)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__markdown)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__update__everywhere__from)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__help__update__from)
            opts=""
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__init)
            opts="-v -q -h --verbose --quiet --help <EMAIL>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__list)
            opts="-v -q -h --verbose --quiet --help finn-dev finn-prod tori-dev tori-prod dba-dev dba-prod blocket-dev blocket-prod local"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__markdown)
            opts="-v -q -h --verbose --quiet --help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__update__everywhere__from)
            opts="-v -q -h --verbose --quiet --help <FEATURE.json>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        unleash__cli__update__from)
            opts="-v -q -h --verbose --quiet --help finn-dev finn-prod tori-dev tori-prod dba-dev dba-prod blocket-dev blocket-prod local <FEATURE.json>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
    esac
}

if [[ "${BASH_VERSINFO[0]}" -eq 4 && "${BASH_VERSINFO[1]}" -ge 4 || "${BASH_VERSINFO[0]}" -gt 4 ]]; then
    complete -F _unleash-cli -o nosort -o bashdefault -o default unleash-cli
else
    complete -F _unleash-cli -o bashdefault -o default unleash-cli
fi


