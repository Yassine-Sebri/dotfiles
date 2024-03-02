----------------------------------------- UI ---------------------------------------------
vim.opt.relativenumber = true
-------------------------------------- filetype ------------------------------------------
vim.filetype.add({
    filename = {
        [".ansible-lint"] = "yaml",
    },
    pattern = {
        [".*handlers/.*%.ya?ml"] = "yaml.ansible",
        [".*roles/.*%.ya?ml"] = "yaml.ansible",
        [".*tasks/.*%.ya?ml"] = "yaml.ansible",

        [".*molecule/.*/create%.ya?ml"] = "yaml.ansible",
        [".*molecule/.*/prepare%.ya?ml"] = "yaml.ansible",
        [".*molecule/.*/converge%.ya?ml"] = "yaml.ansible",
        [".*molecule/.*/verify%.ya?ml"] = "yaml.ansible",
        [".*molecule/.*/destroy%.ya?ml"] = "yaml.ansible",

        [".*hosts.*.ya?ml"] = "yaml.ansible",
    },
})
