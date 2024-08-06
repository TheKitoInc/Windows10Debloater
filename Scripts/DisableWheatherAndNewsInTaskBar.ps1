
    #Disables News and Interest in Taskbar
    Write-Output "Disabling News and Interest in Taskbar"

    $kpath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds"
    If (!(Test-Path $kpath)) {
        New-Item $kpath
    }

    Set-ItemProperty $kpath EnableFeeds -Value 0
