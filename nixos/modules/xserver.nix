{
  services.xserver = {
    enable = true;
    
    windowManager = {
      qtile.enable = true;
    };
    
    displayManager = {
      sessionCommands = ''
        xwallpaper --zoom /home/varun/Pictures/Wallpapers/fog_forest_2.png
	xset r rate 200 35 &
      '';			
    };
  };
}
