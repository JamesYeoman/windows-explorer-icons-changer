# ==========================================================
# === MAKE SURE THAT YOU REPLACE THE OVERWRITE VARIABLES ===
# === WITH THE PATHS TO YOUR OWN ICONS                   ===
# ==========================================================
#

function setIconValue {
    param (
        [Parameter(Mandatory)]
        [string]$CLS_ID,

        [Parameter(Mandatory)]
        [string]$ICON_LOCATION
    )

    $local:regpath = "Registry::HKEY_CLASSES_ROOT\CLSID\{0}\DefaultIcon" -f $CLS_ID
    Set-ItemProperty -Path $local:regpath -Name "(default)" -Type ExpandString -Value $ICON_LOCATION
}

# =================================
# ===== BASE ICON DEFINITIONS =====
# =================================
# TODO: figure out how to make this less of a pain to define

$desktopIconId = "{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}"
$desktopIconDefault = '%SystemRoot%\system32\imageres.dll,-183'
$desktopIconOverwrite = '"C:\icons\Icons\System\This PC Black.ico"'

$documentsIconId = "{d3162b92-9365-467a-956b-92703aca08af}"
$documentsIconIdAlternate = "{A8CDFF1C-4878-43be-B5FD-F8091C1C60D0}"
$documentsIconDefault = '%SystemRoot%\system32\imageres.dll,-112'
$documentsIconOverwrite = '"C:\icons\Icons\System\Documents.ico"'

$downloadsIconId = "{088e3905-0323-4b02-9826-5d99428e115f}"
$downloadsIconIdAlternate = "{374DE290-123F-4565-9164-39C4925E467B}"
$downloadsIconDefault = '%SystemRoot%\system32\imageres.dll,-184'
$downloadsIconOverwrite = '"C:\icons\Icons\System\User Downloads.ico"'

$musicIconId = "{3dfdf296-dbec-4fb4-81d1-6a3438bcf4de}"
$musicIconIdAlternate = "{1CF1260C-4DD0-4ebb-811F-33C572699FDE}"
$musicIconDefault = '%SystemRoot%\system32\imageres.dll,-108'
$musicIconOverwrite = '"C:\icons\Icons\System\User Music.ico"'

$picturesIconId = "{24ad3ad4-a569-4530-98e1-ab02f9417aa8}"
$picturesIconIdAlternate = "{3ADD1653-EB32-4cb0-BBD7-DFA0ABB5ACCA}"
$picturesIconDefault = '%SystemRoot%\system32\imageres.dll,-113'
$picturesIconOverwrite = '"C:\icons\Icons\System\User Pictures.ico"'

$videosIconId = "{f86fa3ab-70d2-4fc7-9c99-fcbf05467f3a}"
$videosIconIdAlternate = "{A0953C92-50DC-43bf-BE83-3742FED03C9C}"
$videosIconDefault = '%SystemRoot%\system32\imageres.dll,-189'
$videosIconOverwrite = '"C:\icons\Icons\System\Videos.ico"'

# ============================
# ===== ADDITIONAL ICONS =====
# ============================
# Found using https://www.botproductions.com/iconview/iconview.html to find the imageres.dll numbers
# and double-checked in regedit to make sure the CLSID had the correct icon ID

# =-=-=-=-=-=-=-=-=-=-=-=-=
# =-=-=- 3D Objects  -=-=-=
# =-=-=-=-=-=-=-=-=-=-=-=-=
$objects3DIconId = "{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
$objects3DIconDefault = '%SystemRoot%\system32\imageres.dll,-198'
$objects3DIconOverwrite = '"C:\icons\Icons\Folders\User 3D.ico"'

# =============================
# ===== CALL THE FUNCTION =====
# =============================

setIconValue $desktopIconId $desktopIconOverwrite
setIconValue $documentsIconId $documentsIconOverwrite
setIconValue $downloadsIconId $downloadsIconOverwrite
setIconValue $musicIconId $musicIconOverwrite
setIconValue $objects3DIconId $objects3DIconOverwrite
setIconValue $picturesIconId $picturesIconOverwrite
setIconValue $videosIconId $videosIconOverwrite

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# =-=-=- Alternate icons -=-=-=
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# I think these alternate IDs are used for in Quick Access...
# Quick-Access icons updated with these, but I don't know if removing desktop.ini had anything to do with that...
setIconValue $documentsIconIdAlternate $documentsIconOverwrite
setIconValue $downloadsIconIdAlternate $downloadsIconOverwrite
setIconValue $musicIconIdAlternate $musicIconOverwrite
setIconValue $picturesIconIdAlternate $picturesIconOverwrite
setIconValue $videosIconIdAlternate $videosIconOverwrite
