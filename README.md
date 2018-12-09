# git-clear-history

[![Open Issues](http://img.shields.io/github/issues/checktheroads/git-clear-history.svg?style=flat-square)](https://github.com/checktheroads/git-clear-history/issues)
[![Author](http://img.shields.io/badge/author-@checktheroads-lightgrey.svg?style=flat-square)](https://twitter.com/checktheroads)

`git-clear-history` is a simple Bash script that deletes the commit history of a given branch and (optionally) pushes the "scrubbed" branch back to the remote repository.

## Installation

1. Clone the repository:

```bash
git clone https://github.com/checktheroads/git-clear-history.git
```

2. (Optional) Make the script executable:

```
chmod +x ./git-clear-history/git-clear-history.sh
```

3. (Optional) Copy the executable to your local `bin` directory:

```
cp ./git-clear-history/git-clear-history.sh /usr/local/bin/git-clear-history
```

## Usage
From your repository, run the `git-clear-history <branch>` command, for example:

```bash
git-clear-history master
```

You'll be asked if you want to push your changes now or not:


```
Are you ready to push? (Y/N)
Pushing...
```

## Authors, Copyright & Licensing

Copyright &copy; 2018 [Matt Love](https://twitter.com/checktheroads).

Licensed for use under the terms of the [MIT](https://spdx.org/licenses/MIT.html) license.
