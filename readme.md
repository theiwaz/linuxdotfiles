# Helpful hints

After running init open vim and run `:PlugInstall` to get everything you need setup

## Neovim

install luarocks because neotree needs it in the loaded config

```
sudo apt update
sudo apt install lua-5.1 luarocks
```

## Zoxide

Zoxide is a quick way to traverse dirs but there are gotcha's. It's installed via de `init.sh` and then it's enabled via the `.zshrc` by `eval "$(zoxide init zsh)":wq

