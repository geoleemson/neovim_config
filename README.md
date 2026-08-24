## Workflow
init.lua
- This is the first file that is loaded when neovim opens

## Themes
Basics
- Type ':colorscheme '
- Then hit tab to scroll through the list of themes available/installed
To check which theme is currently on
- Just type ':colorscheme' and hit enter
- It will display the current theme
To install a theme
- Go to the theme github page
- Copy the lua code
- Create a <theme-name>.lua file under lua/themes
- Paste the lua content
To load the theme on Startup
- Open lazyvim.lua file
- Change line where theme is set
To load theme manually
- Type :colorscheme(tab to autocomplete then space; don't hit enter yet)
- Type name of theme(hit tab to see different flavors in same theme, if available)
If you cannot find the lua code
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
Tabs
- Quickly open a file that is not in the cwd
- Move Tabs
Terminal
- Opening a terminal opens in cwd
- Having multiple terminals in tab format
- Switching between the editor and terminal
