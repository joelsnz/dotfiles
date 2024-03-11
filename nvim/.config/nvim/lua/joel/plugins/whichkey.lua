-- shortcuts menu plugin --

return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local whichkey = require("which-key")

        vim.o.timeout = true
        vim.o.timeoutlen = 300

        whichkey.setup({})

        whichkey.register({
            s = {
                name = "Window Splits",
                v = "Split window vertically",
                h = "Split window horizontally",
                e = "Make splits equal size",
                c = "Close current split"
            },
            t = {
                name = "Window Tabs",
                o = "Open new tab",
                x = "Close current tab",
                n = "Go to next tab",
                p = "Go to previous tab",
                f = "Move current buffer to new tab"
            },
            f = {
                name = "Telescope",
                f = "Fuzzy find files in cwd",
                r = "Fuzzy find recent files",
                s = "Find string string in cwd",
                t = "List function names and variables",
                b = "List active buffers"
            },
            g = {
                name = "LSP",
                g = "Display information",
                d = "Jump to the definition",
                D = "Jump to the declaration",
                i = "List all implementations",
                t = "Jump to the type definition",
                r = "List all the references",
                s = "Display signature information",
                R = "Rename all references",
                f = "Format",
                a = "Select a code action",
                l = "Show diagnostics",
                p = "Move to the previous diagnostic",
                n = "Move to the next diagnostic",
                S = "List all symbols in the current buffer"
            },
            b = {
                name = "Breakpoints",
                b = "Toggle breakpoint",
                c = "Set conditional breakpoint",
                l = "Set breakpoint with log message",
                r = "Remove all breakpoint",
                a = "List breakpoints"
            },
            d = {
                name = "Debug",
                c = "Continue",
                j = "Step over",
                k = "Step into",
                o = "Step out",
                d = "Disconnect",
                t = "Terminate",
                r = "REPL Toggle",
                l = "Run last",
                i = "Hover",
                m = "",
                f = "Frames",
                h = "Commands",
                e = "Diagnostic"
            }
        }, { prefix = "<leader>" })
    end
}
