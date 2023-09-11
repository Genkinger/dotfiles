local plugin_paths = vim.split(vim.fn.glob("~/.config/nvim/site/*"),"\n")
for i, directory in pairs(plugin_paths) do
	package.path = directory .. "/lua/?.lua;" .. directory .. "/lua/?/init.lua;" .. package.path
end
