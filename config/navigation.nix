{
  plugins = {
    telescope = {
      enable = true;
      keymaps = {
        "<leader>p" = "find_files";
        "<leader><c-p>" = "live_grep";
      };
    };

    harpoon = {
      enable = true;
      keymaps = {
        addFile = "<leader>a";
        toggleQuickMenu = "<leader>e";
        navFile = {
          "1" = "<leader>1";
          "2" = "<leader>2";
          "3" = "<leader>3";
          "4" = "<leader>4";
        };
      };
    };
  };
}
