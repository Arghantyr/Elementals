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
