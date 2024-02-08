#!/bin/sh

clone() {
    for repo in frontend backend cli infra library;
    do
        git clone https://github.com/cdubos-fr/galaxy-census-$repo
    done
}

vagrant_up() {
    for repo in frontend backend cli infra library;
    do
        cd galaxy-census-$repo && vagrant up && cd ..
    done
}

vagrant_destroy() {
    for repo in frontend backend cli infra library;
    do
        cd galaxy-census-$repo && vagrant destroy -f && cd ..
    done
}

if [ "$1" = "up" ];
then
    vagrant_up
    exit 1
elif [ "$1" = "destroy" ];
then
    vagrant_destroy
    exit 1
elif [ "$1" = "clone" ];
then
    clone
    exit 1
else
    echo "usage: ./manage.sh [CMD]"
    echo ""
    echo "CMD:"
    echo '    up: launch `vagrant up` for each sub project'
    echo '    destroy: launch `vagrant destroy` for each sub project'
    echo "    clone: clone all the sub projects"
    exit 0
fi
