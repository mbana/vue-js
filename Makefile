# https://gist.github.com/rsperl/d2dfe88a520968fbc1f49db0a29345b9
# http://www.lunderberg.com/2015/08/25/cpp-makefile-pretty-output/
# http://agdr.org/2020/05/14/Polyglot-Makefiles.html
# https://tech.davis-hansson.com/p/make/

export BASHOPTS													:= extglob:globstar:nullglob:failglob:gnu_errfmt:localvar_unset:dotglob:xpg_echo:functrace:verbose
export SHELLOPTS												:= allexport:braceexpand:emacs:errexit:errtrace:hashall:ignoreeof:interactive-comments:keyword:monitor:noclobber:noglob:nolog:notify:nounset:onecmd:physical:pipefail:posix:vi
export TERM															?= xterm-256color
# export SHELLCHECK_OPTS								?= --shell=bash --check-sourced --external-sources

.DEFAULT_GOAL														:= all
# .DELETE_ON_ERROR:
MAKEFLAGS 															+= --environment-overrides --warn-undefined-variables #--no-builtin-rules --no-builtin-variables #--print-directory

# .ONESHELL:
SHELL																		:= bash
# IFS																		= $'\n\t'

export SCREEN_RESET											:= $(shell tput reset)
export SCREEN_CLEAR											:= $(shell tput clear)
export TAB															:= $(shell printf '\011')
export INDENT														:= $(shell tput ht)
# export INDENT														:= "  "

export RESET														:= $(shell tput sgr0)
export BOLD   													:= $(shell tput bold)
export RED															:= $(shell tput bold; tput setaf 1)
export GREEN														:= $(shell tput bold; tput setaf 2)
export YELLOW														:= $(shell tput bold; tput setaf 3)

export DIR_NAME													:= $(shell basename $(shell pwd))
export DIR_FULL_PATH										:= $(shell pwd)
export VERBOSE													:=

export PATH															:= $(shell echo ${GOPATH}/bin:${PATH})
export NAME_REPO												:= github.com/banaio/vuejs

# 1 = print_separator_prefix: prevent warnings from turning on `--warn-undefined-variables` `Makefile` flag.
1 :=
define print_separator
	@print_separator_prefix=$(if $1,$1,$@); \
		prefix="$${print_separator_prefix}:  "; \
		line_terminator=$$'\n'; \
		printf "%b" "${GREEN}" "$${prefix}" `printf -- '-%.0s' $$(seq 1 $$(expr $$(tput cols) - $${#prefix} - $${#line_terminator}))` "${RESET}" "$${line_terminator}"
endef

.PHONY: all
all: pre_commit

# This allows us to accept extra arguments (by doing nothing when we get a job that doesn't match, rather than throwing an error).
%:
	@:

.PHONY: run
run:
	$(print_separator)
	$(call print_separator,"started $@")
	@echo "running:" $(filter-out $@,$(MAKECMDGOALS))
	$(call print_separator,"completed $@")

.PHONY: upgrade_all
upgrade_all:
	$(print_separator)
	$(call print_separator,"before $@")
	@printf -- '%b' "${GREEN}" "**/node_modules" "${RESET}" $$'\n'
	find . -mindepth 1 -maxdepth 2 -type d -name 'node_modules'
	@printf -- '%b' "${GREEN}" "**/yarn_lock" "${RESET}" $$'\n'
	find . -mindepth 1 -maxdepth 2 -type f -name 'yarn.lock'
	$(call print_separator,"started $@")
	find . -mindepth 1 -maxdepth 2 -type f -name 'package.json' -execdir rm -rdf node_modules yarn.lock \;
	@printf -- '%b' "${GREEN}" "**/node_modules" "${RESET}" $$'\n'
	find . -mindepth 1 -maxdepth 2 -type d -name 'node_modules'
	@printf -- '%b' "${GREEN}" "**/yarn_lock" "${RESET}" $$'\n'
	find . -mindepth 1 -maxdepth 2 -type f -name 'yarn.lock'
	$(call print_separator,"installing dependencies $@")
	find . -mindepth 1 -maxdepth 2 -type f -name 'package.json' -execdir yarn install \;
	@printf -- '%b' "${GREEN}" "**/node_modules" "${RESET}" $$'\n'
	find . -mindepth 1 -maxdepth 2 -type d -name 'node_modules'
	@printf -- '%b' "${GREEN}" "**/yarn_lock" "${RESET}" $$'\n'
	find . -mindepth 1 -maxdepth 2 -type f -name 'yarn.lock'
	$(call print_separator,"upgrading dependencies $@")
	find . -mindepth 1 -maxdepth 2 -type f -name 'package.json' -execdir yarn upgrade \;
	@echo
	$(call print_separator,"completed $@")


.PHONY: pre_commit
pre_commit:
	$(print_separator)
	$(call print_separator,"started $@")
	$(MAKE) debug_env
	$(MAKE) run
	$(MAKE) git_compress
	$(call print_separator,"completed $@")

.PHONY: git_compress
git_compress:
	$(print_separator)
	$(call print_separator,"before $@")
	git count-objects -Hv
	git gc --aggressive --prune=now
	git gc --prune=now
	git repack -Ad
	git prune
	git reflog expire --all --expire=now
	git gc --aggressive --prune=now
	git gc --aggressive
	git prune
	git gc --aggressive --prune=now
	git gc --prune=now
	git repack -Ad
	git prune
	git reflog
	$(call print_separator,"after $@")
	git count-objects -Hv

.PHONY: debug_env
debug_env: VARS_BUILD:=DIR_NAME DIR_FULL_PATH VERBOSE
debug_env:
	$(print_separator)
	$(call print_separator,"VARS_BUILD $@")
	@VARS_BUILD_PRINT=$$( \
		printf '%s\n' ${VARS_BUILD} | \
		xargs -n1 -IV bash -c 'printf "$${INDENT}$${GREEN}%s$${RESET}=%s\n" 'V' "$$(eval "echo $${V}")"' | \
		sort -i \
	); \
	echo "$${VARS_BUILD_PRINT}"
	$(call print_separator,"VARIABLES $@")
	@printf -- '%s\n' $(foreach V, $(filter-out  SCREEN_RESET SCREEN_CLEAR .VARIABLES, $(sort $(.VARIABLES))), \
		$(if $(filter file, $(origin $(V))), \
			'${INDENT}${GREEN}$V${RESET}=$($V) ($(value $V))' \
		) \
	)

.PHONY: install_tools
install_tools:
	$(print_separator)
	$(call print_separator,"before $@")
	@printf -- '%b' "${RED}" "TODO" "${RESET}" $$'\n'
	$(call print_separator,"after $@")
