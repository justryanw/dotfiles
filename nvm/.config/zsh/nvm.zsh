export NVM_DIR="$HOME/.nvm"

lazynvm() {
  unset -f nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  if [ -f "$NVM_DIR/bash_completion" ]; then
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  fi

  load_package_version
}

load_package_version() {
  local node_version="$(nvm version)"

  [ -r package.json ] || { echo "Can't find package.json file"; return 1 }
  local package=$(jq -r .engines.node package.json)

  [ -n "$package" ] || { echo "Can't find a node version within package.json"; return 1 }
  local package_node_version=$(nvm version $package)

  [ "$package_node_version" != "N/A" ] || { echo "Failed to parse '$package' into a node version"; return 1 }
  [ "$package_node_version" != "$node_version" ] || { echo "Using correct node version $package_node_version"; return 1 }
  echo "Node versions don't match, switching to $package_node_version"
  nvm i $package_node_version
}

load_nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_contents=$(cat "${nvmrc_path}")
    local nvmrc_node_version=$(nvm version $nvmrc_contents)

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  fi
}

nvm() {
  lazynvm 
  nvm $@
}
 
node() {
  lazynvm
  node $@
}
 
npm() {
  lazynvm
  npm $@
}

npx() {
  lazynvm
  npx $@
}

