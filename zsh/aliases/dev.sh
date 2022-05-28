alias devs="./.scripts/devs.sh"
alias check="make"
alias finish-release="./.scripts/ci/finish-release"
alias tw="npm run test -- --watch"
alias twe="E2E=true npm run test -- --watch"
alias te="E2E=true npm run test"
alias n="fnm use"
alias nd="fnm use default"

alias mongod-status='brew services list'
alias mongod-stop='brew services stop mongodb-community'

# Java
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java14='export JAVA_HOME=$JAVA_14_HOME'
alias java17='export JAVA_HOME=$JAVA_17_HOME'

# iTerm2
alias tt_badge='$ITERM2_PYTHON_PATH "$ITERM2_SCRIPTS"/set_badge_text.py'
alias tt_title='dot iterm2 set_window_title'
alias tt_tab_title='dot iterm2 set_tab_title'
