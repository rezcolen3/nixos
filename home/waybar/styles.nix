{ ... }:
{
  programs.waybar.style = ''
    * {
      font-family: "SpaceMono Nerd Font";
      color: white;
    }

    window {
      background: none;
    }

    window.left_bar .modules-left,
    window.left_bar .modules-right,
    #custom-nixos-btw, #user,
    window.top_bar .modules-center,
    window.top_bar .modules-right {
      background-color: rgba(0, 0, 0, 0.5);
      border: 1px solid rgba(0, 0, 255, 1);
      border-radius: 5px;
    }

    window.left_bar .modules-left,
    window.left_bar .modules-right {
      padding: 10px 0;
    }

    window.top_bar .modules-center,
    window.top_bar .modules-right {
      padding: 0 10px;
    }

    #user {
      margin: 0 5px;
      padding: 0 5px;
    }

    #custom-nixos-btw {
      padding: 0 12px;
    }

    #memory {
      margin: 15px 0;
    }

    #cpu, #pulseaudio {
      margin: 5px 0;
    }

    #workspaces button:hover {
      background: transparent;
      box-shadow: none;
      border: none;
      padding: 5px 0;
    }
  '';
}
