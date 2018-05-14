# dotfiles

[![Works][Works Badge]][Works]
[![License][License Badge]][License]

[Works Badge]: https://cdn.rawgit.com/nikku/works-on-my-machine/v0.2.0/badge.svg
[Works]: https://github.com/nikku/works-on-my-machine
[License Badge]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[License]: LICENSE.txt

My personal dotfiles.  

![Image]

[Image]: IMAGE.png

## Requirements

Requires the following software.  

* Bash 3.2+
* Git 2.15+
* OpenSSH 5.3+

## Installation

### Setting SSH key for GitHub

Generate a SSH key for GitHub.  

```console
$ ssh-keygen \
    -t rsa \
    -b 4096 \
    -C "Akihiro Kondo (${HOSTNAME%.local} => GitHub)" \
    -f ~/.ssh/github
```

Copy the SSH key and add it to GitHub account.  

```console
$ pbcopy <~/.ssh/github.pub
```

### Installing dotfiles

Clone the Git repository.  

```console
$ git clone git@github.com:akihyro/dotfiles.git
```

Install dotfiles and reload shell.  

```console
$ dotfiles/INSTALL.sh
$ exec -l "$SHELL"
```

## Optional additional installation

### Installing Homebrew packages (for macOS)

Required: [Homebrew].  

[Homebrew]: https://brew.sh/

Install Homebrew packages.  

```console
$ brew bundle --global
```

### Importing GPG key

Required: [Keybase], [GnuPG].  

[Keybase]: https://keybase.io/
[GnuPG]: https://www.gnupg.org/

Export and import the GPG key from Keybase.  

```console
$ keybase login
$ gpg --import <(keybase pgp export --secret)
```

Import the ownertrust.  

```console
$ gpg --import-ownertrust <~/.gnupg/gpg-ownertrust.txt
```

## License

Licensed under the [MIT License].  

[MIT License]: LICENSE.txt
