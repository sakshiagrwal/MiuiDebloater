SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

print_modname() {
  ui_print "*******************************"
  ui_print "  Debloater for Redmi Note 11  "
  ui_print "*******************************"
}

REPLACE="
/system/app/AnalyticsCore
/system/app/AutoTest
/system/app/BasicDreams
/system/app/BluetoothMidiService
/system/app/BookmarkProvider
/system/app/CameraExtensionsProxy
/system/app/CameraTools
/system/app/CaptivePortalLoginGoogle
/system/app/CarrierDefaultApp
/system/app/CertInstaller
/system/app/cit
/system/app/CloudService
/system/app/com.miui.qr
/system/app/CompanionDeviceManager
/system/app/EasterEgg
/system/app/facebook-appmanager
/system/app/FidoAuthen
/system/app/FidoClient
/system/app/GFManager
/system/app/GFTest
/system/app/GoogleExtShared
/system/app/GooglePrintRecommendationService
/system/app/HTMLViewer
/system/app/HybridAccessory
/system/app/HybridPlatform
/system/app/Joyose
/system/app/KeyChain
/system/app/LiveWallpapersPicker
/system/app/MiBugReportGlobal
/system/app/MiCloudSync
/system/app/MiConnectService
/system/app/MiLinkGlobal
/system/app/MIRadioGlobalBuiltin
/system/app/MiSound
/system/app/MiuiAudioMonitor
/system/app/MiuiBiometric
/system/app/MiuiBluetooth
/system/app/MiuiDaemon
/system/app/MIUIDeskClockGlobal
/system/app/MIUIFileExplorerGlobal
/system/app/MIUIFrequentPhrase
/system/app/MIUIGlobalLayout
/system/app/MIUIGlobalPackageInstaller
/system/app/MIUIGuardProviderGlobal
/system/app/MIUIHealthGlobal
/system/app/MIUIMiPicks
/system/app/miui
/system/app/MiuiPrintSpoolerBeta
/system/app/MIUIScreenshot
/system/app/MiuiSecurityAddGlobal
/system/app/MIUISystemAppUpdater
/system/app/miuisystem
/system/app/MIUISystemUIPlugin
/system/app/MIUIThemeManagerGlobal
/system/app/MIUIVideoPlayer
/system/app/MiuixEditor_global
/system/app/miuix
/system/app/MIWallpaper
/system/app/MSA-Global
/system/app/NotificationCenter
/system/app/PacProcessor
/system/app/PartnerBookmarksProvider
/system/app/PaymentService
/system/app/PlayAutoInstallStubApp
/system/app/PowerChecker
/system/app/PowerKeeper
/system/app/SarAuth
/system/app/SecureElement
/system/app/SecurityCoreAdd
/system/app/SensorTestTool
/system/app/SimAppDialog
/system/app/Stk
/system/app/Updater
/system/app/WallpaperBackup
/system/app/WMService
/system/app/XiaomiAccount
/system/app/XiaomiServiceFrameworkGlobal
/system/app/XiaomiSimActivateService
/system/priv-app/Backup
/system/priv-app/BackupRestoreConfirmation
/system/priv-app/barrage
/system/priv-app/BlockedNumberProvider
/system/priv-app/BuiltInPrintService
/system/priv-app/CalendarProvider
/system/priv-app/CallLogBackup
/system/priv-app/CellBroadcastLegacyApp
/system/priv-app/CleanMaster
/system/priv-app/CloudBackup
/system/priv-app/ConfigurationClient
/system/priv-app/ContactsProvider
/system/priv-app/DocumentsUIGoogle
/system/priv-app/dtag-appenabler
/system/priv-app/DynamicSystemInstallationService
/system/priv-app/ExternalStorageProvider
/system/priv-app/facebook-installer
/system/priv-app/facebook-services
/system/priv-app/FindDevice
/system/priv-app/FusedLocation
/system/priv-app/GooglePackageInstaller
/system/priv-app/InputDevices
/system/priv-app/LocalTransport
/system/priv-app/ManagedProvisioning
/system/priv-app/MediaProviderLegacy
/system/priv-app/MiExtraPhotoGlobal
/system/priv-app/MIServiceGlobal
/system/priv-app/MISettings
/system/priv-app/MIUIAod
/system/priv-app/MiuiCamera
/system/priv-app/MiuiCamera
/system/priv-app/MiuiFreeformService
/system/priv-app/MIUIGalleryGlobal
/system/priv-app/MIUIGlobalMinusScreenWidget
/system/priv-app/MiuiHome
/system/priv-app/MIUIMusicGlobal
/system/priv-app/MiuiVpnDialogs
/system/priv-app/MIUIYellowPageGlobal
/system/priv-app/MmsService
/system/priv-app/MtpService
/system/priv-app/MusicFX
/system/priv-app/NetworkPermissionConfigGoogle
/system/priv-app/NetworkStackGoogle
/system/priv-app/ONS
/system/priv-app/Provision
/system/priv-app/ProxyHandler
/system/priv-app/RtMiCloudSDK
/system/priv-app/SecurityCenter
/system/priv-app/SettingsProvider
/system/priv-app/SharedStorageBackup
/system/priv-app/skt-appinstaller
/system/priv-app/SoundPicker
/system/priv-app/Tag
/system/priv-app/Telecom
/system/priv-app/TelephonyProvider
/system/priv-app/TeleService
/system/priv-app/Traceur
/system/priv-app/UserDictionaryPro
/system/product/app/aiasst_service
/system/product/app/Chrome
/system/product/app/Gmail2
/system/product/app/GoogleOne
/system/product/app/GoogleTTS
/system/product/app/Maps
/system/product/app/remoteSimLockAuthentication
/system/product/app/talkback
/system/product/app/uimremoteclient
/system/product/app/uimremoteserver
/system/product/app/YouTube
/system/product/priv-app/AndroidAutoStub
/system/product/priv-app/EmergencyInfo
/system/product/priv-app/GoogleAssistant
/system/product/priv-app/GoogleRestore
/system/product/priv-app/HotwordEnrollmentOKGoogleCORTEXM4
/system/product/priv-app/HotwordEnrollmentOKGoogleHEXAGON
/system/product/priv-app/HotwordEnrollmentXGoogleHEXAGON
/system/product/priv-app/HotwordEnrollmentXGoogleCORTEXM4
/system/product/priv-app/ims
/system/product/priv-app/SetupWizard
/system/product/priv-app/Velvet
/system/product/priv-app/Wellbeing
/system/system_ext/priv-app/GoogleFeedback
/system/system_ext/priv-app/SetupWizard
/system/vendor/app/Joyose
/system/vendor/app/SoterService
/vendor/data/app/Drive
/vendor/data/app/Duo
/vendor/data/app/GlobalFashiongallery
/vendor/data/app/Music2
/vendor/data/app/Photos
/vendor/data/app/Videos
/vendor/data/app/wps_lite
/vendor/data/app/XMRemoteController
/system/priv-app/MIUIYellowPageGlobal
/system/priv-app/dtag-appenabler
/system/app/MIUIFileExplorerGlobal
"

on_install() {
  ui_print "   Extracting module files...   "
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
