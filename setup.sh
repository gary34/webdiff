docker pull registry.docker-cn.com/mgary34/gitdiff
docker tag registry.docker-cn.com/mgary34/gitdiff mgary34/gitdiff
start_cmd='alias seediff="if git diff-index --quiet HEAD --;then echo nothing changed ;else  { sleep 5; open http://localhost:40888  } &  ; docker run -p 40888:40888 --rm -v \$(pwd):/app -w /app mgary34/gitdiff ; fi"'
profile="${HOME}/.bashrc"
if [ "$SHELL" = "/bin/zsh" ] ;then
    profile="${HOME}/.zshrc"
fi
echo "${start_cmd}" >> $profile
alias seediff="if git diff-index --quiet HEAD --;then echo nothing changed ;else  { sleep 5; open http://localhost:40888  } &  ; docker run -p 40888:40888 --rm -v \$(pwd):/app -w /app mgary34/gitdiff ; fi"