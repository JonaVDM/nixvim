{pkgs, ...}: {
  plugins = {
    lspsaga = {
      enable = true;
      lightbulb.sign = false;
    };

    cmp = {
      enable = true;
    };

    lsp = {
      enable = true;
      servers = {
        nixd = {
          enable = true;
          settings = {
            nixpkgs.expr = "import <nixpkgs> { }";
            formatting.command = ["${pkgs.alejandra}/bin/alejandra"];
          };
        };

        dockerls.enable = true;
        gopls.enable = true;
        yamlls.enable = true;
        dartls.enable = true;
      };
    };
  };
}
