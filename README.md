# Neovim Config
## Table of Contents
- [Plugins Table](#plugins-table)
- [Basics](#basics)
- [Workflow](#workflow)
- [Language Server Working](#language-server-working)
- [Mason](#mason)
- [Themes](#themes)
- [Plugin Types](#plugin-types)
- [Needs have come across](#needs-have-come-across)

## Plugins Table
### Features
| Feature        | Plugin      |
| -------------- | ----------- |
| Sessions       | AutoSession |
| Buffers        | Bufferline  |
| Navigation     | Flash       |
| Info           | LuaLine     |
| Files Side Bar | NeoTree     |
| File Finder    | Telescope   |
| Terminal       | ToggleTerm  |
| Hotkeys        | which-key   |
| Quality of Life | Snacks     |
### Lsp Plugins
| Feature              | Plugin      |
| -------------------- | ----------- |
| LSP Package Manager  | Mason |
| Autocompletion       | nvim-cmp, cmp-nvim-lsp  |
| Signature Help       | lsp-signature  |
| CodeAction Lightbulb | lightbulb |

## Basics
### Dashboard
- Type ':Lazy' to bring up the Lazy Dashboard
- Here you can update plugins, clean, remove and so on

## Workflow
### init.lua
- This is the first file that is loaded when neovim opens

## Language Server Working
The different parts of an IDE and how they are related and working together
(It is not just a simple text editor)
### Editor
- The actual text editor, which is neovim
### LSP Client(Native)
- Native meaning it is inbuilt in neovim(in newer versions)
### LSP Configuration(nvim-lspconfig)
- Even with native LSP client you need this to actual make neovim talk to the respective language tool
- For example, if python file is opened -> lspconfig will provided the right command/settings to boot up Pyright
### Language Server Manager(mason.nvim)
- Package Manager for installing the various Language Servers out there
### Language Server
- The actual brains of the language tool that does all the linting, formatting, autocompletion and so on
### Autocompletion Engine(nvim-cmp, blink.cmp)
- Tool used to display the suggestions returned by the language server
- Visual UI plugin for generating the floating dropdown menu
### Signature Help(lsp-signature)
- This is different from autocompletion
- Here you get a window when you open paranthesis after a function
- The window shows the different parameters the function takes, what the function is and so on
### Snippet Engine(LuaSnip)
- Handles the autocompletion you have selected and expands it
### Linters & Formatters(conform.nvim, nvim-lint)
- Linters find the syntax errors
- Formatters fix the errors
### Code Actions
- Suggestions provided by the LSP

## Mason
### What is it?
- Mason is the package manager to handle different language servers
To open Mason Dashboard
- Type ':Mason'

## Themes
### Basics
- Type ':colorscheme '
- Then hit tab to scroll through the list of themes available/installed
### To check which theme is currently on
- Just type ':colorscheme' and hit enter
- It will display the current theme
### To install a theme
- Go to the theme github page
- Copy the lua code
- Create a <theme-name>.lua file under lua/themes
- Paste the lua content
### To load the theme on Startup
- Open lazyvim.lua file
- Change line where theme is set
### To load theme manually
- Type :colorscheme(tab to autocomplete then space; don't hit enter yet)
- Type name of theme(hit tab to see different flavors in same theme, if available)
### If you cannot find the lua code
'''
return {
	"<author>/<theme-name>",
	name = "<theme-name>",
}
'''
- Use this syntax
- Get the git user and theme from website address

## Plugin types 
- Status line
- Startup page
- File Explorer
- autopairs
- Easier comments
- Fuzzy finder and grep
- Terminal

## Needs have come across
### Tabs
- Quickly open a file that is not in the cwd
- Move Tabs
### Terminal
- Opening a terminal opens in cwd
- Having multiple terminals in tab format
- Switching between the editor and terminal
### Notifications
- Toast like instead of 3 lines of text at the bottom
### Visual
- When cursor is on a word, highlight other similar words
### Code
- Collapse blocks

## Lazy Option
### 'false'
- Means: Load the plugin immediately after Neovim starts
### 'true'
- Means: Only load the plugin when the event happens
- The event is provided as a paramter
- If you specify event, you don't need to write lazy=false line
