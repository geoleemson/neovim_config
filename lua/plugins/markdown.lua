-- Markdown Preview Plugin
-- Works only in MD files
-- Type ':MarkdownPreview', and the md file opens in local browser
-- Make sure to have node and yarn installed and setup
return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_auto_close = 0
  end,
  ft = { "markdown" },
}
