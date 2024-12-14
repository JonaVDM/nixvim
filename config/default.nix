{
  # Import all your configuration modules here
  imports = [
    ./git.nix
    ./lsp.nix
    ./navigation.nix
    ./ui.nix
    ./utils.nix
  ];

  colorschemes.catppuccin.enable = true;

  globals = {
    mapleader = " ";
  };

  opts = {
    number = true;

    relativenumber = true;
    numberwidth = 4;
    signcolumn = "yes";

    tabstop = 2;
    shiftwidth = 2;
    expandtab = true;

    colorcolumn = "80,120";

    mouse = "a";

    splitright = true;

    updatetime = 300;
    scrolloff = 5;

    wrap = false;
  };
}
