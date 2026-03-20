# Install deps
apt-get install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick

# install yazi with cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
cargo install --force yazi-build
