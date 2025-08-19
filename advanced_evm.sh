#!/bin/bash
# META_NAME="advanced blockchain evm"
# META_DESC="""

set -e
source "$(dirname "${BASH_SOURCE[0]}")/../../definitions/$vlab_os.sh"

main() {
    pkg_install "${evm_pkgs[@]}"
    install_node_lts
    npm install -g solc > /dev/null
    
    pip_install "${evm_pip[@]}"
    # jsut test string to change hashsum
    pip_install "slither-analyzer"
    
    install_foundry
}
main
