return {
  'nvim-java/nvim-java',
  config = function()
    require('java').setup {
      checks = {
        nvim_version = true, -- Check Neovim version
        nvim_jdtls_conflict = true, -- Check for nvim-jdtls conflict
      },

      -- JDK installation
      jdk = {
        auto_install = false,
        version = '17',
      },
      spring_boot_tools = {
        enable = false,
      },
    }
    vim.lsp.enable 'jdtls'
  end,
}
