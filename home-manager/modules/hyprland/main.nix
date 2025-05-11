{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;

    settings = {
      monitor = ",highres@highrr,auto,1";

      env = [
	"NIXOS_OZONE_WL,1"
	"XDG_CURRENT_DESKTOP,Hyprland"
	"XDG_SESSION_TYPE,wayland"
	"XDG_SESSION_DESKTOP,Hyprland"
	"QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,~/Pictures/Screenshots"
      ];

      exec-once = [
        "waybar"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
      ];

      animations = {
        enabled = true;

        
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

        animation = [
          "windows,     1, 7,  myBezier"
          "windowsOut,  1, 7,  default, popin 80%"
          "border,      1, 10, default"
          "borderangle, 1, 8,  default"
          "fade,        1, 7,  default"
          "workspaces,  1, 6,  default"
        ];
      };

      input = {
        kb_layout = "us";
        follow_mouse = 1;

        touchpad = {
          natural_scroll = true;
	  clickfinger_behavior = true;
	  tap-and-drag = false;
	  # disable_when_typing = false;
	  tap_button_map = "lrm";
        };

        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
      };


      decoration = {
        blur = {
          enabled = true;
	};

	shadow = {
	  enabled = true;
	};

	active_opacity = 1.0;
	inactive_opacity = 1.0;
	rounding = 0;
      };

      dwindle = {
        preserve_split = true;
	# pseudo_tile = false;
      };

      general = {
        allow_tearing = false;
	border_size = 5;
	"col.active_border" = "rgba(d65d0eff) rgba(98871aff) 45deg";
	"col.inactive_border" = "rgba(3c3836ff)";
	gaps_in = 3;
	gaps_out = 5;
	layout =  "master";
	resize_on_border = true;
	no_border_on_floating = true;
	snap = {
          enabled = true;
	  window_gap = 10;
	  monitor_gap = 10;
	};
      };

      cursor = {
        enable_hyprcursor = false;
        no_warps = true;
	no_hardware_cursors = 2;
      };

      gestures = {
        workspace_swipe = true;
	workspace_swipe_forever = true;
	workspace_swipe_invert = false;
	workspace_swipe_fingers = 3;
      };
	
      master = {
        mfact = 0.5;
	new_on_top = true;
	new_status = "slave";
      };

      misc = {
        disable_hyprland_logo = true;
	force_default_wallpaper = -1;
      };		

      windowrulev2 = [
        "suppressevent maximize, class:.*"
	"nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };
  };
}
