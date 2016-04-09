
set -o emacs
alias em='emacsclient -t -a ""'

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

alias ll="ls -al"

# for virtualenv
alias ac="source ./env/bin/activate"
alias de="deactivate"

# for project folder
alias oz="cd /Users/Tao/git/repos/ozsales"
alias per="cd /Users/Tao/git/repos/persimmon"
alias om="cd /Users/Tao/git/omnimw"

# for django
alias test="python manage.py test --noinput --nologcapture -s --with-xcoverage --xcoverage-file=$TEST_RESULTS_DIR/coverage.xml --with-xunit --xunit-file=$TEST_RESULTS_DIR/nosetests.xml --cover-package=middleware --cover-branches --cover-erase --exclude-dir=middleware/apps/news/tests --exclude-test=middleware.apps.activities.tests.test_ui.TestActivityUIViewIndex"
alias shell_plus="python manage.py shell_plus"
alias migrate="python manage.py migrate"
alias makemigrations="python manage.py makemigrations"
alias schema="python manage.py schemamigration"
alias code="python manage.py code"
alias manage="python manage.py"

# for ssh
alias pilot="ssh pilot"
alias debian="ssh debian"
alias luotao="ssh luotao"

# for docker
#alias dc="docker"
#alias dcps="docker ps"
#alias dcpl="docker pull"
#alias dcpsa="docker ps -a"
#alias dci="docker images"
#alias dcrm="docker rm"
#alias dcrmi="docker rmi"
#alias dcrun="docker run -it -u='root'"
#alias dcexe="docker exec -it -u='root'"
##alias dcrmx='docker rm $(docker ps -q -f status=exited)'
#alias dcrmx='docker ps -q -f status=exited | xargs docker rm'
#alias dcrmall='docker rm -f $(docker ps -q -a)'
#alias dcstopall='docker stop $(docker ps -q)'
#alias dl='docker ps -l -q'
#alias dcrminone="docker rmi $(docker images | grep "^<none>" | awk -F' ' '{ print $3}')"
#alias dcrmix="docker images | awk '/^<none>/ {print $3}' | xargs docker rmi"
