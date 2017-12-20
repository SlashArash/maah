# Maah for ZSH

A theme for [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh) with collapsed working directory and moon(Persian: ماه, Māh) icon!

![Screenshot](https://raw.githubusercontent.com/SlashArash/maah/master/screenshot.png)

## Install

### CURL

  - Enter below command:
    ```
    curl -o ~/.oh-my-zsh/custom/themes/maah.zsh-theme https://raw.githubusercontent.com/SlashArash/maah/master/maah.zsh-theme --create-dirs
    ```

### Git

  - Clone the repo:
    ```
    git clone https://github.com/SlashArash/maah.git
    ```
  - Create a symbolic link to oh-my-zsh's custom theme folder:
    > Remember that you should replace PATH_TO_CLONED_REPO with the actual directories for this command to work.
    ```
    ln -s PATH_TO_CLONED_REPO/maah/maah.zsh-theme ~/.oh-my-zsh/custom/themes/maah.zsh-theme
    ```

### Manually

  1) Download using the GitHub .zip download option and unzip them.
  2) Move maah.zsh-theme file to oh-my-zsh's custom theme folder: ~/.oh-my-zsh/custom/themes/maah.zsh-theme.

## Active theme

  Go to your ~/.zshrc file and set ZSH_THEME="maah".

## License

[MIT License](./LICENSE)
