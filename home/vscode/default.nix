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
        wakatime.wakatime
      ];
    };
  };
}
