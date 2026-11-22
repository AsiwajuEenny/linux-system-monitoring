@ECHO OFF
TITLE Win10x64-IE - CUPS
PushD "%~dp0"

ECHO                                      \\!//
ECHO                                      (o o)
ECHO ---------------------------------oOOo-(_)-oOOo---------------------------------
ECHO        Windows 10 x64 - Integral Edition - Custom User Profile Settings
ECHO ===============================================================================
ping -n 3 localhost 1>NUL


ECHO.
ECHO Editing file "LayoutModification.xml" . . .
Set "FileXML=%LocalAppData%\Microsoft\Windows\Shell\LayoutModification.xml"
ATTRIB -r "%FileXML%" 1>NUL
>"%FileXML%" ECHO Unlocks the Unpin option for the preset Custom Icons on the Taskbar.


ECHO.
ECHO Adding Custom Windows 11 Settings . . .

::===============================================================================
:: **************************** Windows 10 Settings ****************************
::===============================================================================

:: Disables the Diagnostic Data Collection (Privacy Setting).
:: 0x0 = Security (Enterprise and Education editions only).
:: 0x1 = Basic.
:: 0x2 = Enhanced.
:: 0x3 = Full.

Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "0x0" /f 1>NUL
::-------------------------------------------------------------------------------

:: Sets the Feedback Frequency option to "Never" (Privacy Setting).

Reg Add "HKCU\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0x0" /f 1>NUL
::-------------------------------------------------------------------------------

:: Displays the Hidden Files and Folders.

Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Displays all the File Extensions.

Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0x0" /f 1>NUL
::-------------------------------------------------------------------------------

:: Show "This PC" (My Computer) on the Desktop.

Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d "0x0" /f 1>NUL
::-------------------------------------------------------------------------------

:: Displays the detailed Copy/Move/Delete file progress dialog.

Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "EnthusiastMode" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Sets the Combine taskbar buttons to "Never".

Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarGlomLevel" /t REG_DWORD /d "0x2" /f 1>NUL
::-------------------------------------------------------------------------------

:: Turns Off the Windows Theme Transparency effects.

::Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0x0" /f 1>NUL
::-------------------------------------------------------------------------------

:: Turns On the Windows Theme accent color for Start menu, Taskbar, and Action center.

Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "ColorPrevalence" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Turns On the Windows Theme accent color for Title bars.

Reg Add "HKCU\Software\Microsoft\Windows\DWM" /v "ColorPrevalence" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Sets the Internet Explorer 11 main Start Page to "http://zone62.com".

Reg Add "HKCU\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "http://zone62.com" /f 1>NUL
::-------------------------------------------------------------------------------

:: Adds the "Google" Search Engine to the Internet Explorer 11 Search Provider list.

Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{D3024A36-6AFB-4F33-B936-BC9AEABF77EE}" /v "DisplayName" /t REG_SZ /d "Google" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{D3024A36-6AFB-4F33-B936-BC9AEABF77EE}" /v "OSDFileURL" /t REG_SZ /d "https://www.microsoft.com/cms/api/am/binary/RWilsM" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{D3024A36-6AFB-4F33-B936-BC9AEABF77EE}" /v "FaviconURL" /t REG_SZ /d "https://www.google.com/favicon.ico" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{D3024A36-6AFB-4F33-B936-BC9AEABF77EE}" /v "ShowSearchSuggestions" /t REG_DWORD /d "0x1" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{D3024A36-6AFB-4F33-B936-BC9AEABF77EE}" /v "SuggestionsURL" /t REG_SZ /d "https://www.google.com/complete/search?q={searchTerms}&client=ie8&mw={ie:maxWidth}&sh={ie:sectionHeight}&rh={ie:rowHeight}&inputencoding={inputEncoding}&outputencoding={outputEncoding}" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{D3024A36-6AFB-4F33-B936-BC9AEABF77EE}" /v "URL" /t REG_SZ /d "https://www.google.com/search?q={searchTerms}&sourceid=ie7&rls=com.microsoft:{language}:{referrer:source}&ie={inputEncoding?}&oe={outputEncoding?}" /f 1>NUL
::-------------------------------------------------------------------------------

:: Adds "DuckDuckGo" Search Engine to the Internet Explorer 11 Search Provider list.

Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{A168A584-C6FA-4BFC-B634-0AE24597570D}" /v "Codepage" /t REG_DWORD /d "0xfde9" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{A168A584-C6FA-4BFC-B634-0AE24597570D}" /v "DisplayName" /t REG_SZ /d "DuckDuckGo" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{A168A584-C6FA-4BFC-B634-0AE24597570D}" /v "OSDFileURL" /t REG_SZ /d "https://duckduckgo.com/opensearch.xml?atb=v256-3__" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{A168A584-C6FA-4BFC-B634-0AE24597570D}" /v "FaviconURL" /t REG_SZ /d "https://duckduckgo.com/favicon.ico" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{A168A584-C6FA-4BFC-B634-0AE24597570D}" /v "ShowSearchSuggestions" /t REG_DWORD /d "0x1" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{A168A584-C6FA-4BFC-B634-0AE24597570D}" /v "SuggestionsURL_JSON" /t REG_SZ /d "https://duckduckgo.com/ac/?q={searchTerms}&type=list" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes\{A168A584-C6FA-4BFC-B634-0AE24597570D}" /v "URL" /t REG_SZ /d "https://duckduckgo.com/?q={searchTerms}&atb=v256-3__" /f 1>NUL
::-------------------------------------------------------------------------------

:: Sets the default Internet Explorer 11 Search Provider to "Google".

Reg Add "HKCU\Software\Microsoft\Internet Explorer\SearchScopes" /v "DefaultScope" /t REG_SZ /d "{D3024A36-6AFB-4F33-B936-BC9AEABF77EE}" /f 1>NUL
::-------------------------------------------------------------------------------


If Not Exist "%ProgramFiles%\7-Zip\7zFM.exe" GoTo SKIP

ECHO.
ECHO Adding Custom 7-Zip Settings . . .

::===============================================================================
:: *********************************** 7-Zip ***********************************
::===============================================================================

:: Enables Context Menu Icons.

Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /f 1>NUL
Reg Add "HKCU\Software\7-Zip\Options" /v "MenuIcons" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Removes the menu item "CRC SHA>" in the Context Menu.

Reg Add "HKCU\Software\7-Zip\Options" /v "ContextMenu" /t REG_DWORD /d "0x3f77" /f 1>NUL
::-------------------------------------------------------------------------------

:: Displays the real file icons in the file list.

Reg Add "HKCU\Software\7-Zip\FM" /v "ShowRealFileIcons" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Enables the Full Row option (When an item is selected, the item and all its subitems are highlighted).

Reg Add "HKCU\Software\7-Zip\FM" /v "FullRow" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Displays the system context sub-menu in the File menu.

Reg Add "HKCU\Software\7-Zip\FM" /v "ShowSystemMenu" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:SKIP


If Not Exist "%AllUsersProfile%\Microsoft\Windows\Start Menu\Programs\K-Lite Codec Pack\Media Player Classic.lnk" GoTo SKIP

ECHO.
ECHO Adding K-Lite Unattende Setup Settings . . .

::===============================================================================
:: ********************* K-Lite - Unattende Setup Settings *********************
::===============================================================================

Reg Add "HKCU\Software\Classes\.3g2" /v "Content Type" /t REG_SZ /d "video/3g2" /f 1>NUL
Reg Add "HKCU\Software\Classes\.3g2" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.3G2" /f 1>NUL
Reg Add "HKCU\Software\Classes\.3gp" /v "Content Type" /t REG_SZ /d "video/3gp" /f 1>NUL
Reg Add "HKCU\Software\Classes\.3gp" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.3GP" /f 1>NUL
Reg Add "HKCU\Software\Classes\.3gp2" /v "Content Type" /t REG_SZ /d "video/3gp2" /f 1>NUL
Reg Add "HKCU\Software\Classes\.3gp2" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.3G2" /f 1>NUL
Reg Add "HKCU\Software\Classes\.3gpp" /v "Content Type" /t REG_SZ /d "video/3gpp" /f 1>NUL
Reg Add "HKCU\Software\Classes\.3gpp" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.3GP" /f 1>NUL
Reg Add "HKCU\Software\Classes\.aac" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.ADTS" /f 1>NUL
Reg Add "HKCU\Software\Classes\.aiff" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.AIFF" /f 1>NUL
Reg Add "HKCU\Software\Classes\.amr" /v "PerceivedType" /t REG_SZ /d "audio" /f 1>NUL
Reg Add "HKCU\Software\Classes\.asf" /v "Content Type" /t REG_SZ /d "video/asf" /f 1>NUL
Reg Add "HKCU\Software\Classes\.asf" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.ASF" /f 1>NUL
Reg Add "HKCU\Software\Classes\.avi" /v "Content Type" /t REG_SZ /d "video/avi" /f 1>NUL
Reg Add "HKCU\Software\Classes\.avi" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.AVI" /f 1>NUL
Reg Add "HKCU\Software\Classes\.cda" /v "PerceivedType" /t REG_SZ /d "audio" /f 1>NUL
Reg Add "HKCU\Software\Classes\.cda" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.CDA" /f 1>NUL
Reg Add "HKCU\Software\Classes\.divx" /v "Content Type" /t REG_SZ /d "video/divx" /f 1>NUL
Reg Add "HKCU\Software\Classes\.divx" /v "PerceivedType" /t REG_SZ /d "video" /f 1>NUL
Reg Add "HKCU\Software\Classes\.f4v" /v "Content Type" /t REG_SZ /d "video/f4v" /f 1>NUL
Reg Add "HKCU\Software\Classes\.f4v" /v "PerceivedType" /t REG_SZ /d "video" /f 1>NUL
Reg Add "HKCU\Software\Classes\.flac" /v "Content Type" /t REG_SZ /d "audio/flac" /f 1>NUL
Reg Add "HKCU\Software\Classes\.flac" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.FLAC" /f 1>NUL
Reg Add "HKCU\Software\Classes\.flv" /v "Content Type" /t REG_SZ /d "video/flv" /f 1>NUL
Reg Add "HKCU\Software\Classes\.flv" /v "PerceivedType" /t REG_SZ /d "video" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m1v" /v "Content Type" /t REG_SZ /d "video/m1v" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m1v" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MPEG" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m2t" /v "Content Type" /t REG_SZ /d "video/m2t" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m2t" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.M2TS" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m2ts" /v "Content Type" /t REG_SZ /d "video/m2ts" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m2ts" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.M2TS" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m2v" /v "Content Type" /t REG_SZ /d "video/m2v" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m2v" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MPEG" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m3u" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.m3u" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m4a" /v "Content Type" /t REG_SZ /d "video/m4a" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m4a" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.M4A" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m4v" /v "Content Type" /t REG_SZ /d "video/m4v" /f 1>NUL
Reg Add "HKCU\Software\Classes\.m4v" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MP4" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mk3d" /v "Content Type" /t REG_SZ /d "video/x-matroska" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mk3d" /v "PerceivedType" /t REG_SZ /d "video" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mk3d" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MK3D" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mka" /v "Content Type" /t REG_SZ /d "audio/x-matroska" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mka" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MKA" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mkv" /v "Content Type" /t REG_SZ /d "video/x-matroska" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mkv" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MKV" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mov" /v "Content Type" /t REG_SZ /d "video/mov" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mov" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MOV" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mp2v" /v "Content Type" /t REG_SZ /d "video/mp2v" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mp2v" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MPEG" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mp3" /v "Content Type" /t REG_SZ /d "audio/mp3" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mp3" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MP3" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mp4" /v "Content Type" /t REG_SZ /d "video/mp4" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mp4" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MP4" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mp4v" /v "Content Type" /t REG_SZ /d "video/mp4v" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mp4v" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MP4" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mpe" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MPEG" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mpeg" /v "Content Type" /t REG_SZ /d "video/mpeg" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mpeg" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MPEG" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mpg" /v "Content Type" /t REG_SZ /d "video/mpg" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mpg" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MPEG" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mpv2" /v "Content Type" /t REG_SZ /d "video/mpv2" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mpv2" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.MPEG" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mts" /v "Content Type" /t REG_SZ /d "video/mts" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mts" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.M2TS" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mxf" /v "Content Type" /t REG_SZ /d "video/mxf" /f 1>NUL
Reg Add "HKCU\Software\Classes\.mxf" /v "PerceivedType" /t REG_SZ /d "video" /f 1>NUL
Reg Add "HKCU\Software\Classes\.ogg" /v "Content Type" /t REG_SZ /d "audio/ogg" /f 1>NUL
Reg Add "HKCU\Software\Classes\.ogm" /v "Content Type" /t REG_SZ /d "video/ogm" /f 1>NUL
Reg Add "HKCU\Software\Classes\.ogv" /v "Content Type" /t REG_SZ /d "video/ogv" /f 1>NUL
Reg Add "HKCU\Software\Classes\.opus" /v "Content Type" /t REG_SZ /d "audio/opus" /f 1>NUL
Reg Add "HKCU\Software\Classes\.rm" /v "Content Type" /t REG_SZ /d "video/rm" /f 1>NUL
Reg Add "HKCU\Software\Classes\.rm" /v "PerceivedType" /t REG_SZ /d "video" /f 1>NUL
Reg Add "HKCU\Software\Classes\.rmvb" /v "Content Type" /t REG_SZ /d "video/rmvb" /f 1>NUL
Reg Add "HKCU\Software\Classes\.rmvb" /v "PerceivedType" /t REG_SZ /d "video" /f 1>NUL
Reg Add "HKCU\Software\Classes\.ts" /v "Content Type" /t REG_SZ /d "video/ts" /f 1>NUL
Reg Add "HKCU\Software\Classes\.ts" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.TTS" /f 1>NUL
Reg Add "HKCU\Software\Classes\.vob" /v "Content Type" /t REG_SZ /d "video/vob" /f 1>NUL
Reg Add "HKCU\Software\Classes\.vob" /v "PerceivedType" /t REG_SZ /d "video" /f 1>NUL
Reg Add "HKCU\Software\Classes\.wav" /v "Content Type" /t REG_SZ /d "audio/wav" /f 1>NUL
Reg Add "HKCU\Software\Classes\.wav" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.WAV" /f 1>NUL
Reg Add "HKCU\Software\Classes\.webm" /v "Content Type" /t REG_SZ /d "video/webm" /f 1>NUL
Reg Add "HKCU\Software\Classes\.webp" /v "Content Type" /t REG_SZ /d "image/webp" /f 1>NUL
Reg Add "HKCU\Software\Classes\.wma" /v "Content Type" /t REG_SZ /d "audio/wav" /f 1>NUL
Reg Add "HKCU\Software\Classes\.wma" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.WMA" /f 1>NUL
Reg Add "HKCU\Software\Classes\.wmv" /v "Content Type" /t REG_SZ /d "video/wmv" /f 1>NUL
Reg Add "HKCU\Software\Classes\.wmv" /v "KLCP.bak" /t REG_SZ /d "WMP11.AssocFile.WMV" /f 1>NUL
Reg Add "HKCU\Software\Gabest\vsfilter\General" /v "SeenDivxWarning" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Icaros" /v "UseCoverArt" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\Icaros" /v "Cache" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Icaros" /v "Offset" /t REG_DWORD /d "25" /f 1>NUL
Reg Add "HKCU\Software\Icaros" /v "DebugMode" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\Icaros" /v "FrameThresh" /t REG_DWORD /d "8" /f 1>NUL
Reg Add "HKCU\Software\Icaros\Cache" /v "SetByInstaller" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\Icaros\Cache" /v "MinFreeSpace" /t REG_DWORD /d "5120" /f 1>NUL
Reg Add "HKCU\Software\madshi\madHcCtrl" /v "ShowTrayIcon" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MediaInfo" /v "Path" /t REG_SZ /d "%ProgramFiles(x86)%\K-Lite Codec Pack\Tools" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\DirectX\UserGpuPreferences" /v "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64\mpc-hc64.exe" /t REG_SZ /d "GpuPreference=0;" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\MediaPlayer\Preferences" /v "LibraryDoubleClickQueueV11" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.dsf_.dsf" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.dff_.dff" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.spx_.spx" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.ra_.ra" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.amr_.amr" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.caf_.caf" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.aob_.aob" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.mlp_.mlp" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.dts_.dts" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.m3u8_.m3u8" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.tta_.tta" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.ogg_.ogg" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.alac_.alac" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.opus_.opus" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.tak_.tak" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.ape_.ape" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.mpc_.mpc" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.wv_.wv" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.oga_.oga" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.pls_.pls" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.ac3_.ac3" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.cue_.cue" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.divx_.divx" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.amv_.amv" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.webm_.webm" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.mpv4_.mpv4" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.hdmov_.hdmov" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.flv_.flv" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.f4v_.f4v" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.ogm_.ogm" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.ogv_.ogv" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.m2p_.m2p" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.evo_.evo" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.tp_.tp" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.trp_.trp" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.rec_.rec" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.mpl_.mpl" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.dv_.dv" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.video_.video" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.smk_.smk" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.bik_.bik" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.264_.264" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.dav_.dav" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.ivf_.ivf" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.wtv_.wtv" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.rmvb_.rmvb" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.rm_.rm" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.vob_.vob" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.ifo_.ifo" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.ssif_.ssif" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.mpls_.mpls" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.bdmv_.bdmv" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts" /v "KLCP.WMP.mxf_.mxf" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-BE Filters\MPC Video Renderer" /v "UseD3D11" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC" /v "ExePath" /t REG_SZ /d "%ProgramFiles(x86)%\K-Lite Codec Pack\MPC-HC64\mpc-hc64.exe" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_ALS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_AMR" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_AMVV" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_AV1" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_DIVX" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_DTS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_FLAC" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_FLIC" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_FLV4" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_H263" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_INDEO" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_LPCM" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_MJPEG" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_MPA" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_MPEG1" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_MSMPEG4" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_MSVIDEO" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_NELLY" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_OPUS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_PCM" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_ALAC" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_RA" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_RV" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_SCREEN" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_SVQ3" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_THEORA" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_V210_V410" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_VORBIS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_VP356" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_VP8" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_WMA" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_WMALL" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_WMAPRO" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_WMV" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_XVID" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_H264" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_HEVC" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_MPEG2" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_VC1" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_VP9" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_AC3" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_AAC" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_WTV" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_VTS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_UDP" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_SUBS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_RTSP" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_RTP" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_RTMP" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_RFS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_REALMEDIA" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_OGG" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_MPEGTS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_MPEG" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_AC3" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_MP4" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_MMS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_MISC" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_MATROSKA" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_HTTP" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_GIF" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_MPA" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_FLV" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_FLIC" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_FLAC" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_DTS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_DSM" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_CDXA" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_CDDA" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_AVS" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_AVI" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "TRA_PS2AUD" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters" /v "SRC_ASF" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "MixingLFELevel" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "Bitstreaming_dtshd" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "Bitstreaming_eac3" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "Bitstreaming_dts" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "Bitstreaming_ac3" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "MixingCenterLevel" /t REG_DWORD /d "10000" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "TrayIcon" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "SampleConvertDither" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "DRCEnabled" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "Output51Legacy" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "ExpandMono" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "MixingLayout" /t REG_DWORD /d "3" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "MixingFlags" /t REG_DWORD /d "5" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "Mixing" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVAudio" /v "Bitstreaming_truehd" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVSplitter" /v "NetworkAnalysisDuration" /t REG_DWORD /d "2100" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVSplitter" /v "prefSubLangs" /t REG_SZ /d "eng,ger,fra" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVSplitter" /v "subtitleMode" /t REG_DWORD /d "3" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVSplitter" /v "subtitleAdvanced" /t REG_SZ /d "eng:eng|df,eng:ger|df,eng:*|df,eng:off,*:eng,*:ger,*:fra,*:*|df" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVSplitter" /v "prefAudioLangs" /t REG_SZ /d "eng,ger,fra" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVSplitter" /v "QueueMaxSize" /t REG_DWORD /d "128" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVSplitter" /v "TrayIcon" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVSplitter" /v "QueueMaxPackets" /t REG_DWORD /d "350" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo" /v "MSWMV9DMO" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo" /v "TrayIcon" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "vp9" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "av1" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "mpeg4" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "dvd" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "HWResFlags" /t REG_DWORD /d "3" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "HWAccel" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "h264" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "vc1" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "mpeg2" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "hevc" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Internal Filters\LAVVideo\HWAccel" /v "hevc10" /t REG_DWORD /d "0" /f 1>NUL
::Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "DSVidRen" /t REG_DWORD /d "4" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "AutoloadSubtitles" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "SubtitleRenderer" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "AudioRendererType" /t REG_SZ /d "Internal Audio Renderer" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "AllowDroppingSubpic" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "AutoDownloadSubtitles" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "SettingsVersion" /t REG_DWORD /d "8" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "IconLibVersion" /t REG_DWORD /d "1337" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "DefaultToolbarSize" /t REG_DWORD /d "24" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "UseLegacyToolbar" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "MPCTheme" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "SubtitlesLanguageOrder" /t REG_SZ /d "eng ger fra" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "AudiosLanguageOrder" /t REG_SZ /d "eng ger fra" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "BlockRDP" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "RememberPosForLongerThan" /t REG_DWORD /d "10" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "RememberPosForAudioFiles" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "RememberFilePos" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "KeepHistory" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "FastSeek" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "UseSeekPreview" /t REG_DWORD /d "1" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "ShowOSD" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "AudioNormalize" /t REG_DWORD /d "0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "SubtitlesProviders" /t REG_SZ /d "<|OpenSubtitles|||0|1|><|podnapisi|||1|0|><|SubDB|||1|0|><|Napisy24|||0|0|>" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Shaders\Presets" /v "0" /t REG_SZ /d "Disabled" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Shaders\Presets" /v "1" /t REG_SZ /d "Sharpen" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Shaders\Presets" /v "PreResize0" /t REG_SZ /d "" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Shaders\Presets" /v "PreResize1" /t REG_SZ /d ".\Sharpen complex 2.hlsl" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Shaders\Presets" /v "PostResize0" /t REG_SZ /d "" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Shaders\Presets" /v "PostResize1" /t REG_SZ /d "" /f 1>NUL

ECHO.
ECHO Adding Custom K-Lite Settings . . .

::===============================================================================
:: ****************************** K-Lite - MPC-HC ******************************
::===============================================================================

:: Enables the Playlist.

Reg Add "HKCU\Software\MPC-HC\MPC-HC\ToolBars\Playlist" /v "Visible" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Sets the Playlist docking position at the right side.

Reg Add "HKCU\Software\MPC-HC\MPC-HC\ToolBars\Playlist" /v "DockState" /t REG_DWORD /d "0xe81d" /f 1>NUL
::-------------------------------------------------------------------------------

:: Hides the Playlist on Fullscreen.

Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "HidePlaylistFullScreen" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Enables Remember last window position.

Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "RememberWindowPos" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Enables Remember last window size.

Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "RememberWindowSize" /t REG_DWORD /d "0x1" /f 1>NUL
::-------------------------------------------------------------------------------

:: Sets the Window size and window position.

Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "LastWindowRect" /t REG_BINARY /d "0F0000000F000000C3020000A6010000" /f 1>NUL
::-------------------------------------------------------------------------------

:: Sets the Audio Volume to 50%.

Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "Volume" /t REG_DWORD /d "0x50" /f 1>NUL
::-------------------------------------------------------------------------------

:: Disables the Video Auto-zoom.

Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "AutoZoom" /t REG_DWORD /d "0x0" /f 1>NUL
Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "Zoom" /t REG_DWORD /d "0x3" /f 1>NUL
::-------------------------------------------------------------------------------

:: Sets the Video Renderer:
:: 0xe = MPC Video Renderer.
:: 0xc = madVR.
:: 0xb = Enhanced Video Renderer (custom).
:: 0xa = Enhanced Video Renderer.
:: 0xd = Sync Renderer.
:: 0x6 = Video Mixing Renderer 9 (renderless).
:: 0x4 = Video Mixing Renderer 9 (windowed).
:: 0x0 = Video Mixing Renderer 7.
:: 0x7 = Haali Video Renderer.
:: 0x2 = Overlay Mixer Renderer.
:: 0x1 = Old Video Renderer.
:: 0x8 = Null (anything).
:: 0x9 = Null (uncompressed).

Reg Add "HKCU\Software\MPC-HC\MPC-HC\Settings" /v "DSVidRen" /t REG_DWORD /d "0xc" /f 1>NUL
::-------------------------------------------------------------------------------

:SKIP


ECHO.
ECHO Restarting Windows Explorer . . .
TaskKill /IM "explorer.exe" /F >NUL 2>&1
ping -n 2 localhost 1>NUL
START "" "explorer.exe"


ECHO.
ECHO ---------------------------------[ Finished ]----------------------------------
ping -n 3 localhost 1>NUL
DEL /f %0 2>NUL
EXIT
