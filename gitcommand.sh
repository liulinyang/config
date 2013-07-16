# set your identity in this machine when operate on Git repo
git config --global user.name "liulinyang"
git config --global user.email liulinyang@gmail.com

# fix last commit with reset author indentity
git commit --amend --reset-author

# show information about remote 
git remote -v

# push change to remote 
git push 

# push change a spefici remote named "origin"
git push origin

# reset url for remote
git remote set-url origin https://github.com/liulinyang/config

# add a file into current repo
git add <filename>


# commit the change into the repo
git commit -a -m "message for this change commit"

