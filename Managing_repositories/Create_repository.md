# Github

New repositories can be created via:
1. GitHub web-app
2. GitHub Command Line Interface

To upload (push) your local repository to remote server, means you want to perform the following operation:

source ---> destination


## Case 1: you start from scratch (no GitHub nor local repository)
This breaks down into 3 steps:
1. Prepare destination point (remote repository)
2. Prepare source point (local repository)
3. Perform a push of source to destination (local repository to remote repository)

## Web App

...

## Command Line interface

Make sure you have GitHub CLI installed. Assuming you are using apt-get package tool:

```apt-get install gh```

### Preparations
#### Preparing the environment (making life easier)
Several names will pop up several times and its neat to automize this part a little bit, if not for saving time than for decreasing that chance of making a mistake.

##### Set variables script
Prepare a script to set the variables that will be used throughout the process
```
#!/bin/bash

export REPO='<your repo name>'
```

##### Unset variables script
Prepare a script to unset the cariables so they don't linger in the system
```
#!/bin/bash

unset REPO
```

#### Preparing the tool
Before using the tool (Github CLI) we have to make sure it works properly. 
Github CLI privides 2 ways of doing that:

> To get started with GitHub CLI, please run:  gh auth login
> Alternatively, populate the GH_TOKEN environment variable with a GitHub API authentication token.

gh auth shenanigans
...

### Create a new repository
Before running the create repo command make sure you enter its final state flag (--private, --public, --internal), then include it in the command:
```gh repo create <state flag> <your repo name>```
how repo is created PNG
...

### Create source (local repository)
mkdir <your repo name>
cd <your repo name>
git init
touch README.md

### Set the github repository as remote
GitHub enables you to use either URL or a username/repo convention. Either should be fine. To list the repositories linked to the account in the auth step use gh:

```gh repo list```

Add created GitHub repo as the remote to be referenced

Create a reference named 'origin' of the repo with the given URL
```git remote add origin git@github.com:$USERNAME/$REPO.git```

Force rename (-M) of the current branch to 'main'
```git branch -M main```

Push the 'main' branch upstream (-u) to the 'origin' remote repository
```git push -u origin main```
