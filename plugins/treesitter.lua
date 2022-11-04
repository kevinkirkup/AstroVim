return {
  auto_install = true,
  highlight = { disable = { "help" } },
  indent = { enable = true, disable = { "python" } },
  ensure_installed = {
    "cpp",
    "elixir",
    "vim",
    "lua",
    "heex",
    "eex",
    "rust",
    "python"
  },
  matchup = {
    enable = true,
  },
}
