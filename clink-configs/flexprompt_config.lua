-- WARNING:  This file gets overwritten by the 'flexprompt configure' wizard!
--
-- If you want to make changes, consider copying the file to
-- 'flexprompt_config.lua' and editing that file instead.

flexprompt = flexprompt or {}
flexprompt.settings = flexprompt.settings or {}
flexprompt.settings.heads = "pointed"
flexprompt.settings.left_frame = "none"
flexprompt.settings.use_8bit_color = true
flexprompt.settings.flow = "concise"
flexprompt.settings.right_frame = "none"
-- flexprompt.settings.right_prompt = "{time:format=%a %m/%d/%y %I:%M%p}"
flexprompt.settings.left_prompt = "{python:always}{user:type=computer}{battery}{histlabel}{cwd:type=rootsmart}{git:nostaged:noaheadbehind:showremote:nountracked}"
flexprompt.settings.lines = "two"
flexprompt.settings.spacing = "normal"
flexprompt.settings.connection = "disconnected"
flexprompt.settings.style = "lean"
flexprompt.settings.powerline_font = true
flexprompt.settings.lean_separators = "space"
flexprompt.settings.symbols =
{
    prompt =
    {
        ">",
        winterminal = "❯",
    },
}
flexprompt.settings.charset = "unicode"
