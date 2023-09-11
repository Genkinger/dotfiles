package.path = os.getenv("HOME") .. "/.config/nvim/?.lua;" .. package.path

require("leah")
require("colorizer").setup()

