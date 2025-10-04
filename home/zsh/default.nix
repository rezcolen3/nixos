{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    thefuck
    fastfetch
    zsh-powerlevel10k
  ];

  programs.zsh = {
    enable = true;

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

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
    };

    initContent = lib.mkOrder 1000 ''
      if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
        source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
      fi
      source ~/.p10k.zsh

      echo ""
      TERM_COLS=$(tput cols)
      TEXT="Welcome back Rez :D"
      TEXT_LEN=''${#TEXT}
      LEFT_PADDING=$(( (TERM_COLS - TEXT_LEN) / 2 ))
      printf "%*s%s\n" "$LEFT_PADDING" "" "$TEXT"
      echo ""
    '';

  };
}
