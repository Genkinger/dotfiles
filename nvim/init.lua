package.path = os.getenv("HOME") .. "/.config/nvim/site/?/lua/?.lua;" .. package.path

require("leah")
require("colorizer").setup()

