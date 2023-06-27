home_dir = os.getenv("HOME")
api_key_cmd = "sh " .. home_dir .. "/.config/get_openai_key.sh"

require("chatgpt").setup({
    api_key_cmd = api_key_cmd,
    chat = {
      welcome_message = "Hello my fellow universe human",
      loading_text = "Loading, please wait ...",
        win_options = {
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
        },
      },
})
