GIT_CHANGE_REMOTE = %q(
To change the origin 
`git remote set-url origin git@github.com:UserName/Repo-Name.git`
)

GIT_CHECKOUT = %q(
See the branches of your repository
`git branch`

Change branch to master
`git checkout master`

Make a new branch
`git checkout -b <branch name>`
)

GIT_NEW = %q(
create new repo from command line:
`curl -u 'UserName' https://api.github.com/users/repos -d '{"name":"REPO-NAME","description":"Enter your description here"}'`

initialise your repo
`git init`

connect/add origin
`git remote add origin git@github.com:UserName/REPO-NAME.git`

create readme
`echo "this is the message" >> README.md`

create other files
`touch file.txt`

then push to github
```git add .
git status
git commit -m "first commit"
git push origin master```

)
