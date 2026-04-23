local common_multi_line_comment = "/* %s */"


local function same_comments()
    if vim.bo.filetype == "html" then
        return "<!-- %s -->"
    end
    if vim.bo.filetype == "css" then
        return common_multi_line_comment
    end
end

local comment_config = {
    pre_hook = function()
        same_comments()

        if (vim.bo.filetype == "javascript" or
            vim.bo.filetype == "typescript") or
            (vim.bo.filetype == "c" or
            vim.bo.filetype == "cpp") or
            vim.bo.filetype == "cs" then
            return common_multi_line_comment
	    end

        if vim.bo.filetype == "python" then
            return ' """ %s """ '
        end

        if (vim.bo.filetype == "sh" or
            vim.bo.filetype == "zsh") or
            vim.bo.filetype == "bash" then
            return "# %s"
        end
    end
}

require("Comment").setup(comment_config)
