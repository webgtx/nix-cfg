{ pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  name="dev-env";
  buildInputs = [
     pkgs.nodejs-16_x
     pkgs.git
     pkgs.gcc
     pkgs.python3
     pkgs.whois
     pkgs.nmap
     pkgs.telnet
     pkgs.smbclient
     pkgs.tmate
     pkgs.tmux
     pkgs.rustup 
     pkgs.cargo
     pkgs.rustc
     pkgs.metasploit
     pkgs.boxes
     pkgs.python3
     pkgs.docker
     pkgs.docker-compose
     pkgs.mongodb-tools
     pkgs.libmongo-client
     pkgs.mongodb
     ];
  shellHook = ''
    echo "Starting DEV-ENV..."
    neofetch
    zsh
  '';
}
