local M = {}

M.find_buffer_by_name = function(name)
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    local buf_name = vim.api.nvim_buf_get_name(buf)
    if buf_name == name then
      return buf
    end
  end
  return -1
end

M.change_color_schemes = function ()
    if vim.fn.search("--clr-slate400") ~= 0 then
       vim.cmd([[%s/--clr-slate400/--clr-title/g]])
    -- else
    --     print("Err")
    end
    if vim.fn.search("--clr-slate600") ~= 0 then
       vim.cmd([[%s/--clr-slate600/--clr-main/g]])
    -- else
    --     print("Err")
    end
    if vim.fn.search("--clr-slate800") ~= 0 then
       vim.cmd([[%s/--clr-slate800/--clr-subtitle/g]])
    -- else
    --     print("Err")
    end
    if vim.fn.search("--clr-rose") ~= 0 then
       vim.cmd([[%s/--clr-rose/--clr-button/g]])
    -- else
    --     print("Err")
    end
    if vim.fn.search("--clr-indigo") ~= 0 then
       vim.cmd([[%s/--clr-indigo/--clr-strong/g]])
    -- else
    --     print("Err")
    end
end

return M
