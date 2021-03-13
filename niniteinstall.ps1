<#
A '#' means it won't be install.
Uncomment programs you want to install
#>


$niniteapps = $(


    # Browsers
    # "chrome",
    # "operaChromium",
    # "firefox",
    # "edge",


    # Security
    # "essentials",   
    # "malwarebytes",
    # "avast",
    # "avg",
    # "spybot2",
    # "avira",
    # "super",                <# SuperAntiSpyware #>


    # Messaging
    # "zoom",
    # "discord",
    # "skype",
    # "pidgin",
    # "thunderbird",
    # "trillian",


    # Online Storage
    # "dropbox",
    # "googlebackupandsync",
    # "onedrive",
    # "sugarsync",


    # Developer Tools
    # "pythonx3",             <# Python 3 x64 #>
    # "python3",              <# Python 3 #>
    # "python",               <# Python #>
    # "filezilla",
    # "notepadplusplus",
    # "adoptjdkx8",           <# JDK (AdoptOpenJDK x64 8) #>
    # "adoptjdk8",            <# JDK (AdoptOpenJDK 8) #>
    # "adoptjdkx11",          <# JDK (AdoptOpenJDK x64 11) #>
    # "correttojdkx8",        <# JDK (Amazon Coretto x64 8) #>
    # "correttojdk8",         <# JDK (Amazon Coretto 8) #>
    # "correttojdkx11",       <# JDK (Amazon Coretto x64 11) #>
    # "winscp",
    # "putty",
    # "winmerge",
    # "eclipse",
    # "vscode",


    # Media
    # "itunes",
    # "vlc",
    # "aimp",
    # "foobar",
    # "winamp",
    # "musicbee",
    # "audacity",
    # "klitecodecs",
    # "gom",
    # "spotify",
    # "cccp",
    # "mediamonkey",
    # "handbrake",


    # Runtimes
    # "adoptjavax8",          <# Java (AdoptOpenJDK x64 8) #>
    # "adoptjava8",           <# Java (AdoptOpenJDK 8) #> 
    # "adoptjavax11",         <# Java (AdoptOpenJDK x64 11) #>
    # ".net",
    # "silverlight",
    # "air",


    # Other
    # "evernote",
    # "googleearth",
    # "steam",
    # "keepass2",
    # "everything",
    # "nvaccess",


    # Imaging
    # "krita",
    # "blender",
    # "paint.net",
    # "gimp",
    # "irfanview",
    # "xnview",
    # "inkscape",
    # "faststone",
    # "greenshot",
    # "sharex",


    # Compression
    # "7zip",
    # "peazip",
    # "winrar",


    # Documents
    # "foxit",
    # "libreoffice",
    # "sumatrapdf",
    # "cutepdf",
    # "openoffice",
    

    # File Sharing
    # "qbittorrent",


    # Utilities
    # "teamviewer",
    # "imgburn",
    # "realvnc",
    # "teracopy",
    # "cdburnedxp",
    # "revo",
    # "launchy",
    # "windirstat",
    # "glary",
    # "infrarecorder",
    # "classicstart",


    "")

function DoInstall {
    Write-Host "Downloading Ninite ..."
    
    $ofs = '-'
    $niniteurl = "https://ninite.com/" + $niniteapps + "/ninite.exe"
    $output = "C:\Ninite.exe"
    
    Invoke-WebRequest $niniteurl -OutFile $output
    & $output

    Write-Host
    Read-Host "Press ENTER when all applications have been installed by Ninite"

    Remove-Item C:\Ninite.exe
}

DoInstall
