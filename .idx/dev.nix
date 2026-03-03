{ pkgs, ... }: {
  channel = "stable-23.11";
  packages = [ 
    pkgs.nodejs_20 
    pkgs.eslint 
    pkgs.nodePackages.firebase-tools # Adicione isso para ter o comando 'firebase'
  ];
  idx.extensions = [
    "dbaeumer.vscode-eslint"
    "usernamehw.errorlens"
    "esbenp.prettier-vscode"
  ];
}