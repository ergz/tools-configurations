; Launch or activate Windows Terminal with F1
F1::
{
    if (WinExist("ahk_class CASCADIA_HOSTING_WINDOW_CLASS"))
    {
        if (WinActive("ahk_class CASCADIA_HOSTING_WINDOW_CLASS"))
        {
            WinMinimize()
        }
        else
        {
            WinActivate()
        }
    }
    else
    {
        Run("wt")
    }
    return
}

; Launch or activate Google Chrome with F2
F2::
{
    if (WinExist("ahk_class Chrome_WidgetWin_1"))
    {
        WinActivate()
    }
    else
    {
        Run("chrome")
    }
    return
}

