{ pkgs, ... }:
{
  home.packages = with pkgs; [
    thefuck
  ];

  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      theme = "";
      plugins = [
        "github"
        "thefuck"
      ];
    };

    autosuggestion.enable = true;
    historySubstringSearch.enable = true;
    syntaxHighlighting.enable = true;
    autocd = true;
    enableCompletion = true;

    shellAliases = {
      flex = "fastfetch";
      rb = "~/nixos/rb.sh";
    };

    initContent = ''
      fastfetch
    '';

  };
}
