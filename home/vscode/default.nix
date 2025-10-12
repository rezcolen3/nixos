{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;

    profiles.default = {
      userSettings = {
        "editor.fontFamily" = "SpaceMono Nerd Font";
        "files.autoSave" = "afterDelay";
        "editor.formatOnSave" = true;
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
        "editor.tabWidth" = 4;
        "editor.insertSpaces" = true;
        "prettier.tabWidth" = 4;
        "prettier.useTabs" = false;
        "svelte.enable-ts-plugin" = true;

        # Nix-specific formatter
        "[nix]".editor.defaultFormatter = "jnoortheen.nix-ide";
      };

      extensions = with pkgs.vscode-extensions; [
        streetsidesoftware.code-spell-checker
        esbenp.prettier-vscode
        github.copilot
        jnoortheen.nix-ide
        svelte.svelte-vscode
        bradlc.vscode-tailwindcss
      ];
    };
  };
}
