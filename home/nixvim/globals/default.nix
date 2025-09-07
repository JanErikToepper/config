{ ... } @ inputs: {
  programs.nixvim.globals = {
    mapleader = " ";
    maplocalleader = " ";
    netrw_winsize = 30;
    netrw_banner = 0;
    netrw_list_hide = "\(^\|\s\s\)\zs\.\S\+";
    netrw_localcopydircmd = "cp -r";
  };
}

