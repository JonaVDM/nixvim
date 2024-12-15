{pkgs, ...}: {
  plugins = {
    luasnip = {
      enable = true;
      fromSnipmate = [{paths = ../snippets;}];
    };

    lspsaga = {
      enable = true;
      lightbulb.sign = false;
    };

    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          {name = "luasnip";}
          {name = "nvim_lsp";}
          {name = "path";}
          {name = "buffer";}
        ];

        mapping = {
          __raw = ''
            cmp.mapping.preset.insert({
              ['<Tab>'] = cmp.mapping(function(fallback)
                if cmp.visible() then
                  cmp.select_next_item()
                else
                  fallback()
                end
              end, { 'i', 's' }),
              ['<S-Tab>'] = cmp.mapping(function(fallback)
                if cmp.visible() then
                  cmp.select_prev_item()
                else
                  fallback()
                end
              end, { 'i', 's' }),
              ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
              ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
              ['<C-e>'] = cmp.mapping({
                i = cmp.mapping.abort(),
                c = cmp.mapping.close(),
              }),
              ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            })
          '';
        };
      };
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

    lsp-format = {
      enable = true;
    };
  };
}
