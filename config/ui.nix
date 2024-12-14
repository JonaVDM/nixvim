{
  plugins = {
    nvim-tree = {
      enable = true;
      actions = {
        openFile = {
          resizeWindow = true;
        };
      };
      view = {
        side = "left";
        width = 30;
      };
      hijackCursor = true;
      syncRootWithCwd = true;
    };

    bufferline.enable = true;
    web-devicons.enable = true;
    lualine.enable = true;
    headlines.enable = true;
    treesitter.enable = true;
  };

  keymaps = [
    {
      action = "<cmd>NvimTreeFindFile<cr>";
      key = "<c-b>";
      mode = "n";
      options = {
        noremap = true;
      };
    }
  ];
}
