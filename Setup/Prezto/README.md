# Install Prezto
```sh
$ git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

# Edit .zshrc
```sh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'git' \
  'syntax-highlighting' \
  'history-substring-search' \
  'prompt'

zstyle ':prezto:module:prompt' theme 'paradox'

zstyle ':prezto:module:syntax-highlighting' color 'yes'
zstyle ':prezto:module:syntax-highlighting' highlighters \
    'main' \
    'brackets' \
    'pattern' \
    'line' \
    'cursor' \
    'root'
 ```
