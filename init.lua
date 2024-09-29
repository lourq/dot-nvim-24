require("lour.keymap")
require("lour.set")
require("lour.packer")

require('lspconfig').tsserver.setup({
  handlers = {
    ["emitter.setMaxListeners"] = 20
  }
})
