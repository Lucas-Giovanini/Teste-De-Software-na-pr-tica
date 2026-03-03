{ pkgs, ... }: {
  # Canal do repositório de pacotes
  channel = "stable-23.11";

  # Pacotes que serão instalados no ambiente
  packages = [
    pkgs.nodejs_20
    pkgs.eslint
  ];

  # Extensões do VS Code/IDX
  idx = {
    extensions = [
      "dbaeumer.vscode-eslint"    # Mostra os avisos de linting
      "usernamehw.errorlens"      # Exibe mensagens de erro direto na linha
      "esbenp.prettier-vscode"    # Formatador de código
    ];
    
    # Opcional: Ativar a formatação automática ao salvar
    previews = {
      enable = true;
    };
  };
}