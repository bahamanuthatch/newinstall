# ssh
* key creation\
`ssh-keygen -t rsa -b 4096 -C comment_here`
* launch\
`eval $(ssh-agent)` or `ssh-agent /bin/sh` (manjaro)
* list\
`ssh-add -l`
* remove\
`ssd-add -d /pathtoprivate`
* transfer\
`ssh-copy-id -i /pathtoprivate user@host`

# git
* setup\
`git init`\
`git remote add origin git@github.com:bahamanuthatch/myproject.git`\
`ssh -T git@github.com`\
`git clone git@github.com:bahamanuthatch/myproject.git`
* usage\
`git pull`\
`git add -A`\
`git commit -a -m . && git push`

# VMs
* guest additions\
`sudo apt install build-essential dkms linux-headers-$(uname -r)`
