export NVM_DIR="$HOME/.nvm"

lazynvm() {
  unset -f nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  if [ -f "$NVM_DIR/bash_completion" ]; then
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
  fi

  load_nvmrc || load_package_version
}

load_package_version() {
  echo "Looking for package.json"
  local node_version="$(nvm version)"

  [ -r package.json ] || { echo "Can't find package.json file"; return 1 }
  local package=$(jq -r .engines.node package.json)
  echo "Found package.json"

  [ -n "$package" ] || { echo "Can't find a node version within package.json"; return 1 }
  local package_node_version=$(nvm version $package)

  [ "$package_node_version" != "N/A" ] || { echo "Failed to find node version inside package.json"; return 1 }
  [ "$package_node_version" != "$node_version" ] || { echo "Already using correct node version $package_node_version"; return 0 }
  echo "Node versions don't match, switching to $package_node_version"
  nvm i $package_node_version
}

load_nvmrc() {
  echo "Looking for nvmrc file"
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  [ -n "$nvmrc_path" ] || { echo "Can't find nvmrc file"; return 1 }
  local nvmrc_contents=$(cat "${nvmrc_path}")
  local nvmrc_node_version=$(nvm version $nvmrc_contents)

  if [ "$nvmrc_node_version" = "N/A" ]; then
    nvm install
  elif [ "$nvmrc_node_version" != "$node_version" ]; then
    nvm use
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

