#!/bin/bash

HOME=".."

echo -n "Formating the code with Artistic Style ... "
astyle --style=google --indent=spaces=4 --indent-modifiers --indent-switches --indent-preproc-block --indent-preproc-define --indent-namespaces --indent-col1-comments --pad-oper --pad-comma --pad-header --align-pointer=type --align-reference=name --add-brackets --convert-tabs --close-templates --lineend=linux --preserve-date --suffix=none --formatted ${HOME}/src/model/* ${HOME}/src/services/* ${HOME}/doc/examples/*.cpp > /tmp/out.log 2>&1 || exit 1
echo "Done."