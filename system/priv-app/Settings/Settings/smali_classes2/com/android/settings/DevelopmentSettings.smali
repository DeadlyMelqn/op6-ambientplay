.class public Lcom/android/settings/DevelopmentSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DevelopmentSettings$1;,
        Lcom/android/settings/DevelopmentSettings$2;,
        Lcom/android/settings/DevelopmentSettings$3;,
        Lcom/android/settings/DevelopmentSettings$4;,
        Lcom/android/settings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final ACTUAL_LOGPERSIST_PROPERTY:Ljava/lang/String; = "logd.logpersistd"

.field private static final ACTUAL_LOGPERSIST_PROPERTY_BUFFER:Ljava/lang/String; = "logd.logpersistd.buffer"

.field private static final ACTUAL_LOGPERSIST_PROPERTY_ENABLE:Ljava/lang/String; = "logd.logpersistd.enable"

.field private static final ADVANCED_REBOOT_KEY:Ljava/lang/String; = "advanced_reboot"

.field private static final ANIMATOR_DURATION_SCALE_KEY:Ljava/lang/String; = "animator_duration_scale"

.field private static final APP_PROCESS_LIMIT_KEY:Ljava/lang/String; = "app_process_limit"

.field private static final APTX_HD_KEY:Ljava/lang/String; = "aptX HD"

.field private static final APTX_HD_SUPPORT:Ljava/lang/String; = "aptx_hd_support"

.field private static final APTX_KEY:Ljava/lang/String; = "aptX"

.field private static final BACKGROUND_CHECK_KEY:Ljava/lang/String; = "background_check"

.field private static final BLUETOOTH_AVRCP_VERSION_PROPERTY:Ljava/lang/String; = "persist.bluetooth.avrcpversion"

.field private static final BLUETOOTH_BTSNOOP_ENABLE_PROPERTY:Ljava/lang/String; = "persist.bluetooth.btsnoopenable"

.field private static final BLUETOOTH_DISABLE_ABSOLUTE_VOLUME_KEY:Ljava/lang/String; = "bluetooth_disable_absolute_volume"

.field private static final BLUETOOTH_DISABLE_ABSOLUTE_VOLUME_PROPERTY:Ljava/lang/String; = "persist.bluetooth.disableabsvol"

.field private static final BLUETOOTH_ENABLE_INBAND_RINGING_KEY:Ljava/lang/String; = "bluetooth_enable_inband_ringing"

.field private static final BLUETOOTH_ENABLE_INBAND_RINGING_PROPERTY:Ljava/lang/String; = "persist.bluetooth.enableinbandringing"

.field private static final BLUETOOTH_SELECT_A2DP_BITS_PER_SAMPLE_KEY:Ljava/lang/String; = "bluetooth_select_a2dp_bits_per_sample"

.field private static final BLUETOOTH_SELECT_A2DP_CHANNEL_MODE_KEY:Ljava/lang/String; = "bluetooth_select_a2dp_channel_mode"

.field private static final BLUETOOTH_SELECT_A2DP_CODEC_KEY:Ljava/lang/String; = "bluetooth_select_a2dp_codec"

.field private static final BLUETOOTH_SELECT_A2DP_LDAC_PLAYBACK_QUALITY_KEY:Ljava/lang/String; = "bluetooth_select_a2dp_ldac_playback_quality"

.field private static final BLUETOOTH_SELECT_A2DP_SAMPLE_RATE_KEY:Ljava/lang/String; = "bluetooth_select_a2dp_sample_rate"

.field private static final BLUETOOTH_SELECT_AVRCP_VERSION_KEY:Ljava/lang/String; = "bluetooth_select_avrcp_version"

.field private static final BLUETOOTH_SHOW_DEVICES_WITHOUT_NAMES_KEY:Ljava/lang/String; = "bluetooth_show_devices_without_names"

.field private static final BLUETOOTH_SHOW_DEVICES_WITHOUT_NAMES_PROPERTY:Ljava/lang/String; = "persist.bluetooth.showdeviceswithoutnames"

.field private static final BT_HCI_SNOOP_LOG:Ljava/lang/String; = "bt_hci_snoop_log"

.field private static final BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final BUGREPORT_IN_POWER_KEY:Ljava/lang/String; = "bugreport_in_power"

.field private static final CLEAR_ADB_KEYS:Ljava/lang/String; = "clear_adb_keys"

.field private static final COLOR_TEMPERATURE_KEY:Ljava/lang/String; = "color_temperature"

.field private static final COLOR_TEMPERATURE_PROPERTY:Ljava/lang/String; = "persist.sys.debug.color_temp"

.field private static final DEBUG_APP_KEY:Ljava/lang/String; = "debug_app"

.field private static final DEBUG_DEBUGGING_CATEGORY_KEY:Ljava/lang/String; = "debug_debugging_category"

.field private static final DEBUG_HW_OVERDRAW_KEY:Ljava/lang/String; = "debug_hw_overdraw"

.field private static final DEBUG_HW_RENDERER_KEY:Ljava/lang/String; = "debug_hw_renderer"

.field private static final DEBUG_LAYOUT_KEY:Ljava/lang/String; = "debug_layout"

.field private static final DEBUG_NETWORKING_CATEGORY_KEY:Ljava/lang/String; = "debug_networking_category"

.field private static final DEBUG_VIEW_ATTRIBUTES:Ljava/lang/String; = "debug_view_attributes"

.field private static final DISABLE_DOZE_KEY:Ljava/lang/String; = "disable_doze"

.field private static final DISABLE_OVERLAYS_KEY:Ljava/lang/String; = "disable_overlays"

.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field private static final ENABLE_OEM_UNLOCK:Ljava/lang/String; = "oem_unlock_enable"

.field private static final ENABLE_TERMINAL:Ljava/lang/String; = "enable_terminal"

.field private static final FLASH_LOCKED_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final FORCE_ALLOW_ON_EXTERNAL_KEY:Ljava/lang/String; = "force_allow_on_external"

.field private static final FORCE_HARDWARE_UI_KEY:Ljava/lang/String; = "force_hw_ui"

.field private static final FORCE_MSAA_KEY:Ljava/lang/String; = "force_msaa"

.field private static final FORCE_RESIZABLE_KEY:Ljava/lang/String; = "force_resizable_activities"

.field private static final FORCE_RTL_LAYOUT_KEY:Ljava/lang/String; = "force_rtl_layout_all_locales"

.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final HDCP_CHECKING_KEY:Ljava/lang/String; = "hdcp_checking"

.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final IMMEDIATELY_DESTROY_ACTIVITIES_KEY:Ljava/lang/String; = "immediately_destroy_activities"

.field private static final INACTIVE_APPS_KEY:Ljava/lang/String; = "inactive_apps"

.field private static final KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field private static final KEY_COLOR_MODE:Ljava/lang/String; = "color_mode"

.field private static final KEY_CONVERT_FBE:Ljava/lang/String; = "convert_to_file_encryption"

.field private static final LOCAL_BACKUP_PASSWORD:Ljava/lang/String; = "local_backup_password"

.field private static final MOBILE_DATA_ALWAYS_ON:Ljava/lang/String; = "mobile_data_always_on"

.field private static final MOCK_LOCATION_APP_KEY:Ljava/lang/String; = "mock_location_app"

.field private static final MOCK_LOCATION_APP_OPS:[I

.field private static final MSAA_PROPERTY:Ljava/lang/String; = "debug.egl.force_msaa"

.field private static final ONEPLUS_GET_LOGS:Ljava/lang/String; = "getlogs"

.field private static final OPENGL_TRACES_PROPERTY:Ljava/lang/String; = "debug.egl.trace"

.field private static final OP_WIFI_VERBOSE_MULTI_BROADCAST:Ljava/lang/String; = "op_enable_wifi_multi_broadcast"

.field private static final OP_WIFI_VERBOSE_MULTI_BROADCAST_KEY:Ljava/lang/String; = "op_wifi_verbose_multi_broadcast"

.field private static final OP_WIRELESS_ADB_DEBUGGING_KEY:Ljava/lang/String; = "op_wireless_adb_debugging"

.field private static final OP_WIRELESS_ADB_DEBUGGING_PROPERTY:Ljava/lang/String; = "service.adb.tcp.port"

.field private static final OP_WIRELESS_ADB_DEBUGGING_PROPERTY_DISENABLE:Ljava/lang/String; = "-1"

.field private static final OP_WIRELESS_ADB_DEBUGGING_PROPERTY_ENABLE:Ljava/lang/String; = "5555"

.field private static final OTA_DISABLE_AUTOMATIC_UPDATE_KEY:Ljava/lang/String; = "ota_disable_automatic_update"

.field private static final OVERLAY_DISPLAY_DEVICES_KEY:Ljava/lang/String; = "overlay_display_devices"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final POINTER_LOCATION_KEY:Ljava/lang/String; = "pointer_location"

.field public static final PREF_FILE:Ljava/lang/String; = "development"

.field public static final PREF_SHOW:Ljava/lang/String; = "show"

.field private static final REQUEST_CODE_ENABLE_OEM_UNLOCK:I = 0x0

.field private static final RESULT_DEBUG_APP:I = 0x3e8

.field private static final RESULT_MOCK_LOCATION_APP:I = 0x3e9

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SELECT_LOGD_DEFAULT_SIZE_PROPERTY:Ljava/lang/String; = "ro.logd.size"

.field private static final SELECT_LOGD_DEFAULT_SIZE_VALUE:Ljava/lang/String; = "262144"

.field private static final SELECT_LOGD_MINIMUM_SIZE_VALUE:Ljava/lang/String; = "65536"

.field private static final SELECT_LOGD_OFF_SIZE_MARKER_VALUE:Ljava/lang/String; = "32768"

.field private static final SELECT_LOGD_RUNTIME_SNET_TAG_PROPERTY:Ljava/lang/String; = "log.tag.snet_event_log"

.field private static final SELECT_LOGD_SIZE_KEY:Ljava/lang/String; = "select_logd_size"

.field private static final SELECT_LOGD_SIZE_PROPERTY:Ljava/lang/String; = "persist.logd.size"

.field private static final SELECT_LOGD_SNET_TAG_PROPERTY:Ljava/lang/String; = "persist.log.tag.snet_event_log"

.field private static final SELECT_LOGD_SVELTE_DEFAULT_SIZE_VALUE:Ljava/lang/String; = "65536"

.field private static final SELECT_LOGD_TAG_PROPERTY:Ljava/lang/String; = "persist.log.tag"

.field private static final SELECT_LOGD_TAG_SILENCE:Ljava/lang/String; = "Settings"

.field private static final SELECT_LOGPERSIST_KEY:Ljava/lang/String; = "select_logpersist"

.field private static final SELECT_LOGPERSIST_PROPERTY:Ljava/lang/String; = "persist.logd.logpersistd"

.field private static final SELECT_LOGPERSIST_PROPERTY_BUFFER:Ljava/lang/String; = "persist.logd.logpersistd.buffer"

.field private static final SELECT_LOGPERSIST_PROPERTY_CLEAR:Ljava/lang/String; = "clear"

.field private static final SELECT_LOGPERSIST_PROPERTY_SERVICE:Ljava/lang/String; = "logcatd"

.field private static final SELECT_LOGPERSIST_PROPERTY_STOP:Ljava/lang/String; = "stop"

.field private static final SHORTCUT_MANAGER_RESET_KEY:Ljava/lang/String; = "reset_shortcut_manager_throttling"

.field private static final SHOW_ALL_ANRS_KEY:Ljava/lang/String; = "show_all_anrs"

.field private static final SHOW_CPU_USAGE_KEY:Ljava/lang/String; = "show_cpu_usage"

.field private static final SHOW_HW_LAYERS_UPDATES_KEY:Ljava/lang/String; = "show_hw_layers_udpates"

.field private static final SHOW_HW_SCREEN_UPDATES_KEY:Ljava/lang/String; = "show_hw_screen_udpates"

.field private static final SHOW_NON_RECTANGULAR_CLIP_KEY:Ljava/lang/String; = "show_non_rect_clip"

.field private static final SHOW_NOTIFICATION_CHANNEL_WARNINGS_KEY:Ljava/lang/String; = "show_notification_channel_warnings"

.field private static final SHOW_SCREEN_UPDATES_KEY:Ljava/lang/String; = "show_screen_updates"

.field private static final SHOW_TOUCHES_KEY:Ljava/lang/String; = "show_touches"

.field private static final SIMULATE_COLOR_SPACE:Ljava/lang/String; = "simulate_color_space"

.field private static final STRICT_MODE_KEY:Ljava/lang/String; = "strict_mode"

.field private static final TAG:Ljava/lang/String; = "DevelopmentSettings"

.field private static final TERMINAL_APP_PACKAGE:Ljava/lang/String; = "com.android.terminal"

.field private static final TETHERING_HARDWARE_OFFLOAD:Ljava/lang/String; = "tethering_hardware_offload"

.field private static final TRACK_FRAME_TIME_KEY:Ljava/lang/String; = "track_frame_time"

.field private static final TRANSITION_ANIMATION_SCALE_KEY:Ljava/lang/String; = "transition_animation_scale"

.field private static final TUNER_UI_KEY:Ljava/lang/String; = "tuner_ui"

.field private static final USB_AUDIO_KEY:Ljava/lang/String; = "usb_audio"

.field private static final USB_CONFIGURATION_KEY:Ljava/lang/String; = "select_usb_configuration"

.field private static final VERIFY_APPS_OVER_USB_KEY:Ljava/lang/String; = "verify_apps_over_usb"

.field private static final WAIT_FOR_DEBUGGER_KEY:Ljava/lang/String; = "wait_for_debugger"

.field private static final WIFI_AGGRESSIVE_HANDOVER_KEY:Ljava/lang/String; = "wifi_aggressive_handover"

.field private static final WIFI_ALLOW_SCAN_WITH_TRAFFIC_KEY:Ljava/lang/String; = "wifi_allow_scan_with_traffic"

.field private static final WIFI_DISPLAY_CERTIFICATION_KEY:Ljava/lang/String; = "wifi_display_certification"

.field private static final WIFI_VERBOSE_LOGGING_KEY:Ljava/lang/String; = "wifi_verbose_logging"

.field private static final WINDOW_ANIMATION_SCALE_KEY:Ljava/lang/String; = "window_animation_scale"

.field private static isSupportAptxHdSupport:Z

.field private static keepvalue:I


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

.field private mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

.field private mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpLock:Ljava/lang/Object;

.field private mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

.field private mBluetoothEnableInbandRinging:Landroid/support/v14/preference/SwitchPreference;

.field private mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

.field private mBluetoothShowDevicesWithoutNames:Landroid/support/v14/preference/SwitchPreference;

.field private mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

.field private mBugreport:Landroid/support/v7/preference/Preference;

.field private mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

.field private mCameraHalHdrplusController:Lcom/android/settings/development/CameraHalHdrplusPreferenceController;

.field private mCameraLaserSensorController:Lcom/android/settings/development/CameraLaserSensorPreferenceController;

.field private mClearAdbKeys:Landroid/support/v7/preference/Preference;

.field private mColorModePreference:Lcom/android/settings/ColorModePreference;

.field private mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/support/v7/preference/Preference;

.field private mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

.field private mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

.field private mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

.field private mDialogClicked:Z

.field private mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

.field private mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

.field private mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

.field private mForceResizable:Landroid/support/v14/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

.field private mIsUnlocked:Z

.field private mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mLastEnabledState:Z

.field private mLogdSize:Landroid/support/v7/preference/ListPreference;

.field private mLogpersist:Landroid/support/v7/preference/ListPreference;

.field private mLogpersistClearDialog:Landroid/app/Dialog;

.field private mLogpersistCleared:Z

.field private mLogsPreference:Landroid/support/v7/preference/Preference;

.field private mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

.field private mMockLocationApp:Ljava/lang/String;

.field private mMockLocationAppPref:Landroid/support/v7/preference/Preference;

.field private mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

.field private mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

.field private mPassword:Landroid/support/v7/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v14/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

.field private mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

.field private mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

.field private mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

.field private mShowTouches:Landroid/support/v14/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

.field private mStrictMode:Landroid/support/v14/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

.field private mTetheringHardwareOffload:Landroid/support/v14/preference/SwitchPreference;

.field private mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

.field private mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

.field private mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

.field private mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

.field private mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

.field private mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

.field private mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DevelopmentSettings;->isSupportAptxHdSupport:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/DevelopmentSettings;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/DevelopmentSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/DevelopmentSettings;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/DevelopmentSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/DevelopmentSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DevelopmentSettings;
    .param p1, "-value"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/DevelopmentSettings;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DevelopmentSettings;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/DevelopmentSettings;->mIsUnlocked:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/DevelopmentSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DevelopmentSettings;
    .param p1, "-value"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DevelopmentSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DevelopmentSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBluetoothA2dpConfigurationValues()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DevelopmentSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateUsbConfigurationValues()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3a

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    .line 417
    sput v2, Lcom/android/settings/DevelopmentSettings;->keepvalue:I

    .line 3199
    new-instance v0, Lcom/android/settings/DevelopmentSettings$4;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$4;-><init>()V

    .line 3198
    sput-object v0, Lcom/android/settings/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 425
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 377
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 3115
    new-instance v0, Lcom/android/settings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$1;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 3125
    new-instance v0, Lcom/android/settings/DevelopmentSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$2;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 3141
    new-instance v0, Lcom/android/settings/DevelopmentSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$3;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    .line 3140
    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 426
    return-void
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 693
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 694
    .local v0, "pref":Landroid/support/v7/preference/ListPreference;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 696
    return-object v0
.end method

.method private confirmEnableOemUnlock()V
    .locals 5

    .prologue
    .line 2659
    new-instance v0, Lcom/android/settings/DevelopmentSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$5;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    .line 2668
    .local v0, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/settings/DevelopmentSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/DevelopmentSettings$6;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    .line 2678
    .local v1, "onDismissListener":Landroid/content/DialogInterface$OnDismissListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2679
    const v3, 0x7f0f00dc

    .line 2678
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2680
    const v3, 0x7f0f00dd

    .line 2678
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2681
    const v3, 0x7f0f0b0f

    .line 2678
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2682
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 2678
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2686
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1327
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    return v2

    .line 1330
    :cond_0
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1331
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private defaultLogdSizeValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1783
    const-string/jumbo v1, "ro.logd.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1784
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1785
    :cond_0
    const-string/jumbo v1, "ro.config.low_ram"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1786
    const-string/jumbo v0, "65536"

    .line 1791
    :cond_1
    :goto_0
    return-object v0

    .line 1788
    :cond_2
    const-string/jumbo v0, "262144"

    goto :goto_0
.end method

.method private disableForUser(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 700
    if-eqz p1, :cond_0

    .line 701
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 702
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3012
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3014
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 3016
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 3017
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3018
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 3020
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 3021
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3022
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 3024
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 3025
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3026
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    .line 3028
    :cond_3
    return-void
.end method

.method private enableOemUnlockPreference()Z
    .locals 1

    .prologue
    .line 1284
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isBootloaderUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isOemUnlockAllowed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1255
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1256
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "adb_enabled"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 1257
    return v5

    .line 1259
    :cond_0
    const-string/jumbo v4, "package_verifier_enable"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 1260
    return v5

    .line 1262
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1263
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v3, "verification":Landroid/content/Intent;
    const-string/jumbo v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1266
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1267
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1268
    return v5

    .line 1271
    :cond_2
    return v6
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 707
    invoke-virtual {p0, p1}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 708
    .local v0, "pref":Landroid/support/v14/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 709
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    return-object v0
.end method

.method private initBluetoothConfigurationValues()V
    .locals 6

    .prologue
    .line 2044
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2045
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2046
    .local v1, "summaries":[Ljava/lang/String;
    const-string/jumbo v4, "persist.bluetooth.avrcpversion"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2047
    .local v2, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 2048
    .local v0, "index":I
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2049
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2052
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2053
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2054
    const/4 v0, 0x0

    .line 2055
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2056
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2059
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2060
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2061
    const/4 v0, 0x0

    .line 2062
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2063
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2066
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2067
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2068
    const/4 v0, 0x0

    .line 2069
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2070
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2073
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2074
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2075
    const/4 v0, 0x0

    .line 2076
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2077
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2080
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2081
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2082
    const/4 v0, 0x3

    .line 2083
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2084
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2085
    return-void
.end method

.method private isBootloaderUnlocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3297
    const/4 v0, -0x1

    .line 3298
    .local v0, "flashLockState":I
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v2, :cond_0

    .line 3299
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v0

    .line 3302
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isOemUnlockAllowed()Z
    .locals 3

    .prologue
    .line 3311
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 3312
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_oem_unlock"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3313
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_factory_reset"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    .line 3312
    :goto_0
    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3188
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3189
    :catch_0
    move-exception v0

    .line 3190
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private isSimLockedDevice()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3284
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 3285
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3286
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3287
    const/4 v2, 0x1

    return v2

    .line 3285
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3290
    :cond_1
    return v3
.end method

.method private removePreference(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 741
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 742
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 743
    return-void
.end method

.method private removePreferenceForProduction(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 732
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-direct {p0, p1}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    .line 734
    const/4 v0, 0x1

    return v0

    .line 736
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private resetAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 977
    const-string/jumbo v1, "advanced_reboot"

    const/4 v2, 0x0

    .line 976
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 978
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1046
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 1047
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1048
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 1050
    .local v0, "cb":Landroid/support/v14/preference/SwitchPreference;
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, v0, :cond_1

    .line 1047
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1054
    :cond_1
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1055
    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1056
    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 1059
    .end local v0    # "cb":Landroid/support/v14/preference/SwitchPreference;
    :cond_2
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 1060
    invoke-direct {p0, v4, v3}, Lcom/android/settings/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 1061
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 1062
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetAdvancedRebootOptions()V

    .line 1063
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 1064
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 1065
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v3, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 1067
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1068
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 1070
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 1071
    invoke-direct {p0, v4}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 1072
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1073
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 1074
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 1075
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1076
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 5

    .prologue
    .line 1161
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1162
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1161
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1163
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private resetShortcutManagerThrottling()V
    .locals 5

    .prologue
    .line 3251
    const-string/jumbo v2, "shortcut"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 3250
    invoke-static {v2}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v1

    .line 3252
    .local v1, "service":Landroid/content/pm/IShortcutService;
    if-eqz v1, :cond_0

    .line 3254
    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    .line 3255
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f1169    # 1.9017E38f

    .line 3256
    const/4 v4, 0x0

    .line 3255
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3261
    :cond_0
    :goto_0
    return-void

    .line 3257
    :catch_0
    move-exception v0

    .line 3258
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "DevelopmentSettings"

    const-string/jumbo v3, "Failed to reset rate limiting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setBugreportStorageProviderStatus()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1312
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.shell"

    .line 1313
    const-string/jumbo v4, "com.android.shell.BugreportStorageProvider"

    .line 1312
    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1315
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1316
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1315
    :goto_0
    invoke-virtual {v4, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1319
    return-void

    :cond_0
    move v2, v3

    .line 1317
    goto :goto_0
.end method

.method private setLogpersistOff(Z)V
    .locals 6
    .param p1, "update"    # Z

    .prologue
    .line 1927
    const-string/jumbo v3, "persist.logd.logpersistd.buffer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    const-string/jumbo v3, "logd.logpersistd.buffer"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const-string/jumbo v3, "persist.logd.logpersistd"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    const-string/jumbo v4, "logd.logpersistd"

    .line 1932
    if-eqz p1, :cond_1

    const-string/jumbo v3, ""

    .line 1931
    :goto_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1934
    if-eqz p1, :cond_2

    .line 1935
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogpersistValues()V

    .line 1948
    :cond_0
    return-void

    .line 1932
    :cond_1
    const-string/jumbo v3, "stop"

    goto :goto_0

    .line 1937
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 1938
    const-string/jumbo v3, "logd.logpersistd"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1939
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1943
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1944
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 746
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 747
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 748
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 750
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    invoke-virtual {v2, p1}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->enablePreference(Z)V

    .line 751
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mCameraHalHdrplusController:Lcom/android/settings/development/CameraHalHdrplusPreferenceController;

    invoke-virtual {v2, p1}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->enablePreference(Z)V

    .line 752
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mCameraLaserSensorController:Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-virtual {v2, p1}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->enablePreference(Z)V

    .line 753
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAllOptions()V

    .line 754
    return-void
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 1280
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 2947
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2948
    const v1, 0x7f0f00da

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2947
    invoke-virtual {v0, p2, v1}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1275
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1276
    const-string/jumbo v3, "verifier_setting_visible"

    .line 1275
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startBackgroundCheckFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2941
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 2942
    const-class v1, Lcom/android/settings/applications/BackgroundCheckSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2943
    const v3, 0x7f0f1095

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 2941
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2944
    return-void
.end method

.method private startInactiveAppsFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2935
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 2936
    const-class v1, Lcom/android/settings/fuelgauge/InactiveApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2937
    const v3, 0x7f0f015c

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 2935
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2938
    return-void
.end method

.method private updateAdvancedRebootOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 987
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 988
    const-string/jumbo v3, "advanced_reboot"

    .line 987
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 989
    return-void
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 886
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 887
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 888
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    .line 889
    const-string/jumbo v2, "adb_enabled"

    .line 888
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 890
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 891
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 892
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    .line 891
    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 895
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    invoke-virtual {v5}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->updatePreference()Z

    move-result v5

    or-int/2addr v2, v5

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 896
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mCameraHalHdrplusController:Lcom/android/settings/development/CameraHalHdrplusPreferenceController;

    invoke-virtual {v5}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->updatePreference()Z

    move-result v5

    or-int/2addr v2, v5

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 897
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mCameraLaserSensorController:Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-virtual {v5}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->updatePreference()Z

    move-result v5

    or-int/2addr v2, v5

    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 898
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    .line 899
    const-string/jumbo v2, "bugreport_in_power_menu"

    .line 898
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 900
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 901
    const-string/jumbo v2, "stay_on_while_plugged_in"

    .line 900
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 902
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    .line 903
    const-string/jumbo v5, "persist.bluetooth.btsnoopenable"

    .line 902
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 906
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_1

    .line 907
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 909
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    .line 910
    const-string/jumbo v2, "debug_view_attributes"

    .line 909
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 911
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    .line 912
    const-string/jumbo v5, "force_allow_on_external"

    .line 911
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 913
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 914
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePasswordSummary()V

    .line 915
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 916
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMockLocation()V

    .line 917
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 918
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 919
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 920
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V

    .line 923
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 924
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMsaaOptions()V

    .line 925
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 926
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 927
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 928
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 929
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 930
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwRendererOptions()V

    .line 931
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 932
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 933
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 934
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 935
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 936
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 937
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNotificationChannelWarningsOptions()V

    .line 938
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 939
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOtaDisableAutomaticUpdateOptions()V

    .line 940
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 941
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 942
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 943
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogpersistValues()V

    .line 944
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 945
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 946
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 947
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 948
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMobileDataAlwaysOnOptions()V

    .line 949
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 950
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 951
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateForceResizableOptions()V

    .line 952
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOemUnlockOptions()V

    .line 953
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 954
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateColorTemperature()V

    .line 956
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBluetoothShowDevicesWithoutUserFriendlyNameOptions()V

    .line 957
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBluetoothDisableAbsVolumeOptions()V

    .line 958
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBluetoothEnableInbandRingingOptions()V

    .line 959
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBluetoothA2dpConfigurationValues()V

    .line 960
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAdvancedRebootOptions()V

    .line 968
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerboseMultiBroadcast()V

    .line 971
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAptxHdSupportSwitch()V

    .line 973
    return-void

    :cond_3
    move v2, v4

    .line 888
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 892
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 898
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 900
    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 909
    goto/16 :goto_4

    :cond_8
    move v3, v4

    .line 911
    goto/16 :goto_5
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 2566
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 2567
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V

    .line 2568
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/support/v7/preference/ListPreference;

    .prologue
    .line 2545
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    .line 2546
    .local v2, "scale":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_0

    .line 2547
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 2549
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2550
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 2551
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 2552
    .local v3, "val":F
    cmpg-float v5, v2, v3

    if-gtz v5, :cond_1

    .line 2553
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 2554
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2555
    return-void

    .line 2550
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2558
    .end local v3    # "val":F
    :cond_2
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 2559
    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p2, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2562
    .end local v1    # "i":I
    .end local v2    # "scale":F
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 2560
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 8

    .prologue
    .line 2606
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v2

    .line 2607
    .local v2, "limit":I
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 2608
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 2609
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2610
    .local v3, "val":I
    if-lt v3, v2, :cond_1

    .line 2611
    if-eqz v1, :cond_0

    .line 2612
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 2614
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 2615
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2616
    return-void

    .line 2608
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2619
    .end local v3    # "val":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 2620
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2623
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 2621
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateAptxHdSupportSwitch()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1033
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1034
    const-string/jumbo v2, "bluetooth_aptx_hd"

    .line 1033
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 1035
    .local v0, "enableAptXHD":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1036
    return-void

    .line 1033
    .end local v0    # "enableAptXHD":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enableAptXHD":Z
    goto :goto_0
.end method

.method private updateBluetoothA2dpConfigurationValues()V
    .locals 15

    .prologue
    const v14, 0x7f0f00f7

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2099
    const/4 v1, 0x0

    .line 2100
    .local v1, "codecStatus":Landroid/bluetooth/BluetoothCodecStatus;
    const/4 v0, 0x0

    .line 2101
    .local v0, "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    const/4 v2, 0x0

    .line 2102
    .local v2, "codecsLocalCapabilities":[Landroid/bluetooth/BluetoothCodecConfig;
    const/4 v3, 0x0

    .line 2104
    .local v3, "codecsSelectableCapabilities":[Landroid/bluetooth/BluetoothCodecConfig;
    const/4 v6, 0x0

    .line 2106
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2107
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v9, :cond_0

    .line 2108
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v1

    .line 2109
    .local v1, "codecStatus":Landroid/bluetooth/BluetoothCodecStatus;
    if-eqz v1, :cond_0

    .line 2110
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    .line 2111
    .local v0, "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsLocalCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2

    .line 2112
    .local v2, "codecsLocalCapabilities":[Landroid/bluetooth/BluetoothCodecConfig;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .end local v0    # "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    .end local v1    # "codecStatus":Landroid/bluetooth/BluetoothCodecStatus;
    .end local v2    # "codecsLocalCapabilities":[Landroid/bluetooth/BluetoothCodecConfig;
    .end local v3    # "codecsSelectableCapabilities":[Landroid/bluetooth/BluetoothCodecConfig;
    :cond_0
    monitor-exit v10

    .line 2116
    if-nez v0, :cond_1

    .line 2117
    return-void

    .line 2106
    .restart local v3    # "codecsSelectableCapabilities":[Landroid/bluetooth/BluetoothCodecConfig;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 2121
    .end local v3    # "codecsSelectableCapabilities":[Landroid/bluetooth/BluetoothCodecConfig;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 2125
    .local v6, "resources":Landroid/content/res/Resources;
    if-nez v6, :cond_2

    .line 2126
    return-void

    .line 2122
    .local v6, "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 2123
    .local v4, "e":Ljava/lang/IllegalStateException;
    return-void

    .line 2130
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    .local v6, "resources":Landroid/content/res/Resources;
    :cond_2
    const/4 v5, -0x1

    .line 2131
    .local v5, "index":I
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 2151
    :goto_0
    if-ltz v5, :cond_3

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    if-eqz v9, :cond_3

    .line 2152
    const v9, 0x7f0b0009

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 2153
    .local v8, "summaries":[Ljava/lang/String;
    new-array v9, v13, [Ljava/lang/Object;

    aget-object v10, v8, v5

    aput-object v10, v9, v12

    invoke-virtual {v6, v14, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2154
    .local v7, "streaming":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2158
    .end local v7    # "streaming":Ljava/lang/String;
    .end local v8    # "summaries":[Ljava/lang/String;
    :cond_3
    const/4 v5, -0x1

    .line 2159
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 2178
    :goto_1
    :pswitch_0
    if-ltz v5, :cond_4

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    if-eqz v9, :cond_4

    .line 2179
    const v9, 0x7f0b000c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 2180
    .restart local v8    # "summaries":[Ljava/lang/String;
    new-array v9, v13, [Ljava/lang/Object;

    aget-object v10, v8, v5

    aput-object v10, v9, v12

    invoke-virtual {v6, v14, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2181
    .restart local v7    # "streaming":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2185
    .end local v7    # "streaming":Ljava/lang/String;
    .end local v8    # "summaries":[Ljava/lang/String;
    :cond_4
    const/4 v5, -0x1

    .line 2186
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v9

    packed-switch v9, :pswitch_data_2

    .line 2200
    :goto_2
    :pswitch_1
    if-ltz v5, :cond_5

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    if-eqz v9, :cond_5

    .line 2201
    const v9, 0x7f0b000f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 2202
    .restart local v8    # "summaries":[Ljava/lang/String;
    new-array v9, v13, [Ljava/lang/Object;

    aget-object v10, v8, v5

    aput-object v10, v9, v12

    invoke-virtual {v6, v14, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2203
    .restart local v7    # "streaming":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2207
    .end local v7    # "streaming":Ljava/lang/String;
    .end local v8    # "summaries":[Ljava/lang/String;
    :cond_5
    const/4 v5, -0x1

    .line 2208
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v9

    packed-switch v9, :pswitch_data_3

    .line 2219
    :goto_3
    if-ltz v5, :cond_6

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    if-eqz v9, :cond_6

    .line 2220
    const v9, 0x7f0b0012

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 2221
    .restart local v8    # "summaries":[Ljava/lang/String;
    new-array v9, v13, [Ljava/lang/Object;

    aget-object v10, v8, v5

    aput-object v10, v9, v12

    invoke-virtual {v6, v14, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2222
    .restart local v7    # "streaming":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2230
    .end local v7    # "streaming":Ljava/lang/String;
    .end local v8    # "summaries":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v10

    long-to-int v5, v10

    .line 2231
    if-lez v5, :cond_8

    .line 2232
    rem-int/lit8 v5, v5, 0xa

    .line 2236
    :goto_4
    packed-switch v5, :pswitch_data_4

    .line 2243
    const/4 v5, -0x1

    .line 2246
    :pswitch_2
    if-ltz v5, :cond_7

    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    if-eqz v9, :cond_7

    .line 2247
    const v9, 0x7f0b0015

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 2248
    .restart local v8    # "summaries":[Ljava/lang/String;
    new-array v9, v13, [Ljava/lang/Object;

    aget-object v10, v8, v5

    aput-object v10, v9, v12

    invoke-virtual {v6, v14, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2249
    .restart local v7    # "streaming":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v9, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2251
    .end local v7    # "streaming":Ljava/lang/String;
    .end local v8    # "summaries":[Ljava/lang/String;
    :cond_7
    return-void

    .line 2133
    :pswitch_3
    const/4 v5, 0x1

    .line 2134
    goto/16 :goto_0

    .line 2136
    :pswitch_4
    const/4 v5, 0x2

    .line 2137
    goto/16 :goto_0

    .line 2139
    :pswitch_5
    const/4 v5, 0x3

    .line 2140
    goto/16 :goto_0

    .line 2142
    :pswitch_6
    const/4 v5, 0x4

    .line 2143
    goto/16 :goto_0

    .line 2145
    :pswitch_7
    const/4 v5, 0x5

    .line 2146
    goto/16 :goto_0

    .line 2161
    :pswitch_8
    const/4 v5, 0x1

    .line 2162
    goto/16 :goto_1

    .line 2164
    :pswitch_9
    const/4 v5, 0x2

    .line 2165
    goto/16 :goto_1

    .line 2167
    :pswitch_a
    const/4 v5, 0x3

    .line 2168
    goto/16 :goto_1

    .line 2170
    :pswitch_b
    const/4 v5, 0x4

    .line 2171
    goto/16 :goto_1

    .line 2188
    :pswitch_c
    const/4 v5, 0x1

    .line 2189
    goto/16 :goto_2

    .line 2191
    :pswitch_d
    const/4 v5, 0x2

    .line 2192
    goto/16 :goto_2

    .line 2194
    :pswitch_e
    const/4 v5, 0x3

    .line 2195
    goto/16 :goto_2

    .line 2210
    :pswitch_f
    const/4 v5, 0x1

    .line 2211
    goto :goto_3

    .line 2213
    :pswitch_10
    const/4 v5, 0x2

    .line 2214
    goto :goto_3

    .line 2234
    :cond_8
    const/4 v5, -0x1

    goto :goto_4

    .line 2131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2159
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 2186
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_1
        :pswitch_e
    .end packed-switch

    .line 2208
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 2236
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateBluetoothDisableAbsVolumeOptions()V
    .locals 3

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    .line 1736
    const-string/jumbo v1, "persist.bluetooth.disableabsvol"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1735
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1737
    return-void
.end method

.method private updateBluetoothEnableInbandRingingOptions()V
    .locals 3

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothEnableInbandRinging:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothEnableInbandRinging:Landroid/support/v14/preference/SwitchPreference;

    .line 1747
    const-string/jumbo v1, "persist.bluetooth.enableinbandringing"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1746
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1749
    :cond_0
    return-void
.end method

.method private updateBluetoothShowDevicesWithoutUserFriendlyNameOptions()V
    .locals 3

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothShowDevicesWithoutNames:Landroid/support/v14/preference/SwitchPreference;

    .line 1726
    const-string/jumbo v1, "persist.bluetooth.showdeviceswithoutnames"

    const/4 v2, 0x0

    .line 1725
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1724
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1727
    return-void
.end method

.method private updateBugreportOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1306
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1307
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1308
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->setBugreportStorageProviderStatus()V

    .line 1309
    return-void
.end method

.method private updateColorTemperature()V
    .locals 3

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 1638
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1637
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1639
    return-void
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2512
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

    .line 2513
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2514
    const-string/jumbo v3, "show_processes"

    .line 2513
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 2512
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 2515
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1521
    const-string/jumbo v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1522
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1523
    const-string/jumbo v1, ""

    .line 1526
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1527
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1528
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1529
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1530
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1531
    return-void

    .line 1527
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1534
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1535
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1536
    return-void
.end method

.method private updateDebugHwRendererOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1546
    const-string/jumbo v3, "debug.hwui.renderer"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1547
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1548
    const-string/jumbo v1, ""

    .line 1551
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1552
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1553
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1554
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1555
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1556
    return-void

    .line 1552
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1559
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1560
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1561
    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 1572
    const-string/jumbo v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1571
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1573
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1169
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "debug_app"

    .line 1168
    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1170
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    .line 1171
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "wait_for_debugger"

    .line 1170
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1172
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1175
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1176
    const/16 v8, 0x200

    .line 1175
    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1177
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1178
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1182
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v6

    const v6, 0x7f0f011a

    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1183
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1184
    iput-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1189
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 1170
    goto :goto_0

    .line 1178
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 1179
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .end local v3    # "label":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1180
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 1186
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0f0119

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateDisableDozeOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 993
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 994
    const v4, 0x1120054

    .line 993
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 995
    .local v0, "dozeDefault":Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 996
    const-string/jumbo v5, "doze_mode_enabaled"

    if-eqz v0, :cond_0

    move v2, v3

    .line 995
    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 997
    .local v1, "value":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 998
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 999
    return-void

    .line 996
    .end local v1    # "value":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 995
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_1
.end method

.method private updateFlingerOptions()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1371
    :try_start_0
    const-string/jumbo v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1372
    .local v4, "flinger":Landroid/os/IBinder;
    if-eqz v4, :cond_0

    .line 1373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1374
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1375
    .local v5, "reply":Landroid/os/Parcel;
    const-string/jumbo v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1376
    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-interface {v4, v11, v0, v5, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1378
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1380
    .local v7, "showCpu":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1381
    .local v2, "enableGL":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1382
    .local v8, "showUpdates":I
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_1

    move v11, v9

    :goto_0
    invoke-virtual {p0, v12, v11}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1384
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1385
    .local v6, "showBackground":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1386
    .local v1, "disableOverlays":I
    iget-object v11, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v11, v9}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1387
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    .end local v8    # "showUpdates":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "enableGL":I
    .restart local v4    # "flinger":Landroid/os/IBinder;
    .restart local v5    # "reply":Landroid/os/Parcel;
    .restart local v7    # "showCpu":I
    .restart local v8    # "showUpdates":I
    :cond_1
    move v11, v10

    .line 1382
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v6    # "showBackground":I
    :cond_2
    move v9, v10

    .line 1386
    goto :goto_1

    .line 1390
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    .end local v8    # "showUpdates":I
    :catch_0
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private updateForceResizableOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1660
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1661
    const-string/jumbo v3, "force_resizable_activities"

    .line 1660
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1662
    return-void
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1671
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 1672
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1673
    const-string/jumbo v3, "debug.force_rtl"

    .line 1672
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1671
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1674
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    .line 1430
    const-string/jumbo v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1429
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1431
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 1079
    const-string/jumbo v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    .line 1080
    .local v1, "hdcpChecking":Landroid/support/v7/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 1081
    const-string/jumbo v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1083
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1084
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 1085
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 1086
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1087
    move v3, v2

    .line 1091
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1092
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1093
    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1095
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1085
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "summaries":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2539
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    .line 2540
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "always_finish_activities"

    .line 2539
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 2541
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 13

    .prologue
    const v12, 0x7f0b0017

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1795
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-eqz v8, :cond_8

    .line 1796
    const-string/jumbo v8, "persist.log.tag"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1797
    .local v1, "currentTag":Ljava/lang/String;
    const-string/jumbo v8, "persist.logd.size"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1798
    .local v2, "currentValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v8, "Settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1799
    const-string/jumbo v2, "32768"

    .line 1801
    :cond_0
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v8, :cond_2

    .line 1803
    const-string/jumbo v8, "logd.logpersistd.enable"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1804
    .local v0, "currentLogpersistEnable":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1805
    const-string/jumbo v8, "true"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 1804
    if-nez v8, :cond_1

    .line 1806
    const-string/jumbo v8, "32768"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1804
    if-eqz v8, :cond_9

    .line 1807
    :cond_1
    invoke-direct {p0, v9, v11}, Lcom/android/settings/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 1808
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 1813
    .end local v0    # "currentLogpersistEnable":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1814
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v2

    .line 1816
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1817
    .local v7, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1818
    .local v6, "titles":[Ljava/lang/String;
    const/4 v4, 0x2

    .line 1819
    .local v4, "index":I
    const-string/jumbo v8, "ro.config.low_ram"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1820
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 1821
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1822
    const/4 v4, 0x1

    .line 1824
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1825
    .local v5, "summaries":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_7

    .line 1826
    aget-object v8, v7, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1827
    aget-object v8, v6, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1826
    if-eqz v8, :cond_a

    .line 1828
    :cond_6
    move v4, v3

    .line 1832
    :cond_7
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v9, v7, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1833
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    aget-object v9, v5, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1834
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1836
    .end local v1    # "currentTag":Ljava/lang/String;
    .end local v2    # "currentValue":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "summaries":[Ljava/lang/String;
    .end local v6    # "titles":[Ljava/lang/String;
    .end local v7    # "values":[Ljava/lang/String;
    :cond_8
    return-void

    .line 1809
    .restart local v0    # "currentLogpersistEnable":Ljava/lang/String;
    .restart local v1    # "currentTag":Ljava/lang/String;
    .restart local v2    # "currentValue":Ljava/lang/String;
    :cond_9
    iget-boolean v8, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v8, :cond_2

    .line 1810
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1825
    .end local v0    # "currentLogpersistEnable":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "summaries":[Ljava/lang/String;
    .restart local v6    # "titles":[Ljava/lang/String;
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateLogpersistValues()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1881
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v5, :cond_0

    .line 1882
    return-void

    .line 1884
    :cond_0
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1885
    .local v2, "currentValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1886
    const-string/jumbo v2, ""

    .line 1888
    :cond_1
    const-string/jumbo v5, "logd.logpersistd.buffer"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1889
    .local v1, "currentBuffers":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 1890
    :cond_2
    const-string/jumbo v1, "all"

    .line 1892
    :cond_3
    const/4 v4, 0x0

    .line 1893
    .local v4, "index":I
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1894
    const/4 v4, 0x1

    .line 1895
    const-string/jumbo v5, "kernel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1896
    const/4 v4, 0x3

    .line 1913
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b001a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1914
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1915
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1916
    if-eqz v4, :cond_8

    .line 1917
    iput-boolean v8, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistCleared:Z

    .line 1924
    :cond_5
    :goto_1
    return-void

    .line 1897
    :cond_6
    const-string/jumbo v5, "all"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1898
    const-string/jumbo v5, "radio"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 1897
    if-eqz v5, :cond_4

    .line 1899
    const-string/jumbo v5, "security"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1897
    if-eqz v5, :cond_4

    .line 1900
    const-string/jumbo v5, "kernel"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1897
    if-eqz v5, :cond_4

    .line 1901
    const/4 v4, 0x2

    .line 1902
    const-string/jumbo v5, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1903
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "main"

    aput-object v5, v0, v8

    const-string/jumbo v5, "events"

    aput-object v5, v0, v9

    const-string/jumbo v5, "system"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-string/jumbo v5, "crash"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    .line 1904
    .local v0, "contains":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_4

    .line 1905
    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1906
    const/4 v4, 0x1

    .line 1907
    goto/16 :goto_0

    .line 1904
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1918
    .end local v0    # "contains":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_8
    iget-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistCleared:Z

    if-nez v5, :cond_5

    .line 1920
    const-string/jumbo v5, "logd.logpersistd"

    const-string/jumbo v6, "clear"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1922
    iput-boolean v9, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistCleared:Z

    goto :goto_1
.end method

.method private updateMobileDataAlwaysOnOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1759
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    .line 1760
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1761
    const-string/jumbo v3, "mobile_data_always_on"

    .line 1759
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1762
    return-void
.end method

.method private updateMockLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1192
    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 1194
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v8, Lcom/android/settings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v2, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 1195
    .local v7, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_1

    .line 1196
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 1197
    .local v5, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-nez v8, :cond_0

    .line 1198
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1204
    .end local v5    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1205
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1207
    .local v4, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1208
    iget-object v9, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v10, 0x200

    .line 1207
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1209
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1210
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 1211
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1217
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    const v10, 0x7f0f00e0

    invoke-virtual {p0, v10, v9}, Lcom/android/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1218
    iput-boolean v12, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1222
    .end local v4    # "label":Ljava/lang/String;
    :goto_1
    return-void

    .line 1220
    :cond_3
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    const v9, 0x7f0f00df

    invoke-virtual {p0, v9}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1213
    .restart local v4    # "label":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1440
    return-void
.end method

.method private updateOemUnlockOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1288
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    .line 1289
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1290
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOemUnlockSettingDescription()V

    .line 1292
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1293
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 1294
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1303
    :cond_1
    return-void
.end method

.method private updateOemUnlockSettingDescription()V
    .locals 3

    .prologue
    .line 3264
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v1, :cond_1

    .line 3265
    const v0, 0x7f0f00db

    .line 3266
    .local v0, "oemUnlockSummary":I
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isBootloaderUnlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3267
    const v0, 0x7f0f11fb

    .line 3278
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3280
    .end local v0    # "oemUnlockSummary":I
    :cond_1
    return-void

    .line 3268
    .restart local v0    # "oemUnlockSummary":I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isSimLockedDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3269
    const v0, 0x7f0f11fe

    goto :goto_0

    .line 3270
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isOemUnlockAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3276
    const v0, 0x7f0f11fd

    .line 3275
    goto :goto_0
.end method

.method private updateOtaDisableAutomaticUpdateOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1240
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    .line 1241
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1242
    const-string/jumbo v4, "ota_disable_automatic_update"

    .line 1240
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1243
    return-void

    :cond_0
    move v0, v1

    .line 1240
    goto :goto_0
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2580
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2581
    const-string/jumbo v4, "overlay_display_devices"

    .line 2580
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2582
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2583
    const-string/jumbo v1, ""

    .line 2586
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 2587
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 2588
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2589
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 2590
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2591
    return-void

    .line 2587
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2594
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 2595
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2596
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 3

    .prologue
    .line 1099
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    const v2, 0x7f0f0158

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    .line 1107
    :goto_0
    return-void

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    const v2, 0x7f0f0157

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1104
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1352
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    .line 1353
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1354
    const-string/jumbo v3, "pointer_location"

    .line 1353
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1352
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1355
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2641
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    .line 2642
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "anr_show_background"

    .line 2641
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 2643
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 1511
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    .line 1510
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1512
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 1500
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1499
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1501
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1474
    const-string/jumbo v3, "debug.hwui.show_non_rect_clip"

    .line 1473
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1475
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1476
    const-string/jumbo v1, "hide"

    .line 1479
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1480
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1481
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1482
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1483
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1484
    return-void

    .line 1480
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1487
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1488
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1489
    return-void
.end method

.method private updateShowNotificationChannelWarningsOptions()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2652
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2653
    .local v0, "defaultWarningEnabled":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    .line 2654
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2655
    const-string/jumbo v4, "show_notification_channel_warnings"

    .line 2653
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 2656
    return-void

    .line 2652
    .end local v0    # "defaultWarningEnabled":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "defaultWarningEnabled":I
    goto :goto_0
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1363
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    .line 1364
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1365
    const-string/jumbo v3, "show_touches"

    .line 1364
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1363
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1366
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 1582
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1584
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    .line 1583
    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 1585
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1587
    const-string/jumbo v4, "accessibility_display_daltonizer"

    .line 1586
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1589
    .local v3, "mode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1590
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1591
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1593
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1594
    const v6, 0x7f0f0171

    invoke-virtual {p0, v6}, Lcom/android/settings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1593
    const v6, 0x7f0f0173

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1602
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .line 1583
    .end local v1    # "enabled":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 1596
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v5, "%s"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1599
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    .line 1600
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1599
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1343
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1344
    return-void

    .line 1343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTetheringHardwareOffloadOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1771
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mTetheringHardwareOffload:Landroid/support/v14/preference/SwitchPreference;

    .line 1772
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1773
    const-string/jumbo v4, "tether_offload_disabled"

    .line 1771
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1774
    return-void

    :cond_0
    move v0, v1

    .line 1771
    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1448
    const-string/jumbo v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1450
    const-string/jumbo v1, ""

    .line 1453
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1454
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1455
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1456
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1457
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1458
    return-void

    .line 1454
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1461
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 1462
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1463
    return-void
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1649
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1650
    const-string/jumbo v3, "usb_audio_automatic_routing_disabled"

    .line 1649
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1651
    return-void
.end method

.method private updateUsbConfigurationValues()V
    .locals 8

    .prologue
    .line 2006
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 2007
    const-string/jumbo v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 2009
    .local v2, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 2010
    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2011
    .local v3, "titles":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2012
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 2015
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mIsUnlocked:Z

    if-eqz v5, :cond_2

    .line 2016
    const-string/jumbo v5, "DevelopmentSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Set enable funtion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    move v1, v0

    .line 2022
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2023
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2024
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 2026
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .end local v3    # "titles":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 2012
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .restart local v3    # "titles":[Ljava/lang/String;
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateVerboseMultiBroadcast()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1009
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1010
    const-string/jumbo v3, "op_enable_wifi_multi_broadcast"

    .line 1009
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1011
    return-void

    .line 1009
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1225
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1226
    const-string/jumbo v4, "verifier_verify_adb_installs"

    .line 1225
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1227
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 1228
    return-void

    :cond_0
    move v0, v1

    .line 1225
    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1706
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1707
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1708
    return-void

    .line 1706
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1715
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1716
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1717
    return-void

    .line 1715
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1685
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    .line 1686
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1687
    const-string/jumbo v3, "wifi_display_certification_on"

    .line 1685
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1688
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1697
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1698
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V

    .line 1699
    return-void

    .line 1697
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1609
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1611
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    .line 1610
    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 1612
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1614
    const-string/jumbo v4, "accessibility_display_daltonizer"

    .line 1615
    const/4 v5, -0x1

    .line 1613
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1616
    .local v3, "mode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1617
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1619
    const/4 v4, 0x1

    return v4

    .line 1610
    .end local v1    # "enabled":Z
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 1622
    :cond_1
    return v6
.end method

.method private writeAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 982
    const-string/jumbo v2, "advanced_reboot"

    .line 983
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 981
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 984
    return-void

    .line 983
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "pref"    # Landroid/support/v7/preference/ListPreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 2572
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 2573
    .local v1, "scale":F
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 2574
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/support/v7/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2577
    .end local v1    # "scale":F
    :goto_1
    return-void

    .line 2572
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "scale":F
    goto :goto_0

    .line 2575
    .end local v1    # "scale":F
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 2627
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2628
    .local v1, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 2629
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2632
    .end local v1    # "limit":I
    :goto_1
    return-void

    .line 2627
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "limit":I
    goto :goto_0

    .line 2630
    .end local v1    # "limit":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeAptxHdSupportSwitch()V
    .locals 4

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1040
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "bluetooth_aptx_hd"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1041
    return-void

    .line 1040
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeBluetoothAvrcpVersion(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 2088
    const-string/jumbo v2, "persist.bluetooth.avrcpversion"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 2090
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2091
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2092
    .local v1, "titles":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2094
    .end local v1    # "titles":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private writeBluetoothConfigurationOption(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)V
    .locals 39
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 2257
    const v5, 0xf4240

    .line 2258
    .local v5, "codecTypeValue":I
    const/4 v6, 0x0

    .line 2259
    .local v6, "codecPriorityValue":I
    const/4 v7, 0x0

    .line 2260
    .local v7, "sampleRateValue":I
    const/4 v8, 0x0

    .line 2261
    .local v8, "bitsPerSampleValue":I
    const/4 v9, 0x0

    .line 2262
    .local v9, "channelModeValue":I
    const-wide/16 v10, 0x0

    .line 2263
    .local v10, "codecSpecific1Value":J
    const-wide/16 v12, 0x0

    .line 2264
    .local v12, "codecSpecific2Value":J
    const-wide/16 v14, 0x0

    .line 2265
    .local v14, "codecSpecific3Value":J
    const-wide/16 v16, 0x0

    .line 2268
    .local v16, "codecSpecific4Value":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    .line 2269
    .local v22, "codecType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 2270
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v27

    .line 2273
    .local v27, "index":I
    if-ltz v27, :cond_0

    .line 2274
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 2275
    const v37, 0x7f0b0009

    .line 2274
    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v35

    .line 2276
    .local v35, "summaries":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    aget-object v37, v35, v27

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2279
    .end local v27    # "index":I
    .end local v35    # "summaries":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v27

    .line 2280
    .restart local v27    # "index":I
    packed-switch v27, :pswitch_data_0

    .line 2345
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v33

    .line 2346
    .local v33, "sampleRate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 2347
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v27

    .line 2350
    if-ltz v27, :cond_1

    .line 2351
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 2352
    const v37, 0x7f0b000c

    .line 2351
    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v35

    .line 2353
    .restart local v35    # "summaries":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    aget-object v37, v35, v27

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2356
    .end local v35    # "summaries":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v27

    .line 2357
    packed-switch v27, :pswitch_data_1

    .line 2378
    :goto_1
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 2379
    .local v19, "bitsPerSample":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_2

    .line 2380
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v27

    .line 2383
    if-ltz v27, :cond_2

    .line 2384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 2385
    const v37, 0x7f0b000f

    .line 2384
    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v35

    .line 2386
    .restart local v35    # "summaries":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    aget-object v37, v35, v27

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2389
    .end local v35    # "summaries":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v27

    .line 2391
    packed-switch v27, :pswitch_data_2

    .line 2409
    :goto_2
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    .line 2410
    .local v21, "channelMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_3

    .line 2411
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v27

    .line 2414
    if-ltz v27, :cond_3

    .line 2415
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 2416
    const v37, 0x7f0b0012

    .line 2415
    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v35

    .line 2417
    .restart local v35    # "summaries":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    aget-object v37, v35, v27

    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2420
    .end local v35    # "summaries":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v27

    .line 2421
    packed-switch v27, :pswitch_data_3

    .line 2436
    :goto_3
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v30

    .line 2438
    .local v30, "ldacPlaybackQuality":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_4

    .line 2439
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    .line 2441
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    .line 2440
    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v27

    .line 2442
    if-ltz v27, :cond_4

    .line 2443
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 2445
    const v37, 0x7f0b0015

    .line 2443
    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v35

    .line 2446
    .restart local v35    # "summaries":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    .line 2447
    aget-object v37, v35, v27

    .line 2446
    invoke-virtual/range {v36 .. v37}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2450
    .end local v35    # "summaries":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v27

    .line 2452
    packed-switch v27, :pswitch_data_4

    .line 2463
    :goto_4
    new-instance v4, Landroid/bluetooth/BluetoothCodecConfig;

    invoke-direct/range {v4 .. v17}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    .line 2468
    .local v4, "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    move-object/from16 v37, v0

    monitor-enter v37

    .line 2469
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v36, v0

    if-eqz v36, :cond_5

    .line 2470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothCodecConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_5
    monitor-exit v37

    .line 2475
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v18

    .line 2476
    .local v18, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const-class v20, Landroid/bluetooth/BluetoothAdapter;

    .line 2478
    .local v20, "bluetoothAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/bluetooth/BluetoothAdapter;>;"
    :try_start_1
    const-string/jumbo v37, "getConnectionState"

    const/16 v36, 0x0

    check-cast v36, [Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v31

    .line 2479
    .local v31, "method":Ljava/lang/reflect/Method;
    const/16 v36, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2480
    const/16 v36, 0x0

    check-cast v36, [Ljava/lang/Object;

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .line 2482
    .local v34, "state":I
    const/16 v36, 0x2

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_8

    .line 2483
    const-string/jumbo v36, "BLUETOOTH"

    const-string/jumbo v37, "BluetoothAdapter.STATE_CONNECTED"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v25

    .line 2485
    .local v25, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const-string/jumbo v36, "BLUETOOTH"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "devices:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "device$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/bluetooth/BluetoothDevice;

    .line 2488
    .local v23, "device":Landroid/bluetooth/BluetoothDevice;
    const-class v37, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v38, "isConnected"

    const/16 v36, 0x0

    check-cast v36, [Ljava/lang/Class;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v29

    .line 2489
    .local v29, "isConnectedMethod":Ljava/lang/reflect/Method;
    const/16 v36, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2490
    const/16 v36, 0x0

    check-cast v36, [Ljava/lang/Object;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Boolean;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    .line 2491
    .local v28, "isConnected":Z
    if-eqz v28, :cond_6

    .line 2492
    const-string/jumbo v36, "1"

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_7

    const-string/jumbo v36, "2"

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_7

    const-string/jumbo v36, "3"

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_7

    const-string/jumbo v36, "4"

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 2493
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 2494
    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/provider/Settings$Global;->getBluetoothA2dpOptionalCodecsEnabledKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2495
    const/16 v38, 0x1

    .line 2493
    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 2504
    .end local v23    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v24    # "device$iterator":Ljava/util/Iterator;
    .end local v25    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v28    # "isConnected":Z
    .end local v29    # "isConnectedMethod":Ljava/lang/reflect/Method;
    .end local v31    # "method":Ljava/lang/reflect/Method;
    .end local v34    # "state":I
    :catch_0
    move-exception v26

    .line 2505
    .local v26, "e":Ljava/lang/Exception;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    .line 2509
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_8
    return-void

    .line 2283
    .end local v4    # "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    .end local v18    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v19    # "bitsPerSample":Ljava/lang/String;
    .end local v20    # "bluetoothAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/bluetooth/BluetoothAdapter;>;"
    .end local v21    # "channelMode":Ljava/lang/String;
    .end local v30    # "ldacPlaybackQuality":Ljava/lang/String;
    .end local v33    # "sampleRate":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v32

    .line 2284
    .local v32, "oldValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v36

    packed-switch v36, :pswitch_data_5

    goto/16 :goto_0

    .line 2288
    :pswitch_5
    const/4 v5, 0x0

    .line 2289
    goto/16 :goto_0

    .line 2291
    :pswitch_6
    const/4 v5, 0x1

    .line 2292
    goto/16 :goto_0

    .line 2294
    :pswitch_7
    const/4 v5, 0x2

    .line 2295
    goto/16 :goto_0

    .line 2297
    :pswitch_8
    const/4 v5, 0x3

    .line 2298
    goto/16 :goto_0

    .line 2300
    :pswitch_9
    const/4 v5, 0x4

    .line 2301
    goto/16 :goto_0

    .line 2307
    .end local v32    # "oldValue":Ljava/lang/String;
    :pswitch_a
    const/4 v5, 0x0

    .line 2308
    const v6, 0xf4240

    .line 2309
    goto/16 :goto_0

    .line 2311
    :pswitch_b
    const/4 v5, 0x1

    .line 2312
    const v6, 0xf4240

    .line 2313
    goto/16 :goto_0

    .line 2315
    :pswitch_c
    const/4 v5, 0x2

    .line 2316
    const v6, 0xf4240

    .line 2317
    goto/16 :goto_0

    .line 2319
    :pswitch_d
    const/4 v5, 0x3

    .line 2320
    const v6, 0xf4240

    .line 2321
    goto/16 :goto_0

    .line 2323
    :pswitch_e
    const/4 v5, 0x4

    .line 2324
    const v6, 0xf4240

    .line 2325
    goto/16 :goto_0

    .line 2327
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    move-object/from16 v37, v0

    monitor-enter v37

    .line 2328
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v36, v0

    if-eqz v36, :cond_9

    .line 2329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit v37

    .line 2332
    return-void

    .line 2327
    :catchall_0
    move-exception v36

    monitor-exit v37

    throw v36

    .line 2334
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpLock:Ljava/lang/Object;

    move-object/from16 v37, v0

    monitor-enter v37

    .line 2335
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v36, v0

    if-eqz v36, :cond_a

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_a
    monitor-exit v37

    .line 2339
    return-void

    .line 2334
    :catchall_1
    move-exception v36

    monitor-exit v37

    throw v36

    .line 2362
    .restart local v33    # "sampleRate":Ljava/lang/String;
    :pswitch_11
    const/4 v7, 0x1

    .line 2363
    goto/16 :goto_1

    .line 2365
    :pswitch_12
    const/4 v7, 0x2

    .line 2366
    goto/16 :goto_1

    .line 2368
    :pswitch_13
    const/4 v7, 0x4

    .line 2369
    goto/16 :goto_1

    .line 2371
    :pswitch_14
    const/16 v7, 0x8

    .line 2372
    goto/16 :goto_1

    .line 2396
    .restart local v19    # "bitsPerSample":Ljava/lang/String;
    :pswitch_15
    const/4 v8, 0x1

    .line 2397
    goto/16 :goto_2

    .line 2399
    :pswitch_16
    const/4 v8, 0x2

    .line 2400
    goto/16 :goto_2

    .line 2402
    :pswitch_17
    const/4 v8, 0x4

    .line 2403
    goto/16 :goto_2

    .line 2426
    .restart local v21    # "channelMode":Ljava/lang/String;
    :pswitch_18
    const/4 v9, 0x1

    .line 2427
    goto/16 :goto_3

    .line 2429
    :pswitch_19
    const/4 v9, 0x2

    .line 2430
    goto/16 :goto_3

    .line 2457
    .restart local v30    # "ldacPlaybackQuality":Ljava/lang/String;
    :pswitch_1a
    move/from16 v0, v27

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-long v10, v0

    .line 2458
    goto/16 :goto_4

    .line 2468
    .restart local v4    # "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    :catchall_2
    move-exception v36

    monitor-exit v37

    throw v36

    .line 2497
    .restart local v18    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v20    # "bluetoothAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/bluetooth/BluetoothAdapter;>;"
    .restart local v23    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v24    # "device$iterator":Ljava/util/Iterator;
    .restart local v25    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v28    # "isConnected":Z
    .restart local v29    # "isConnectedMethod":Ljava/lang/reflect/Method;
    .restart local v31    # "method":Ljava/lang/reflect/Method;
    .restart local v34    # "state":I
    :cond_b
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 2498
    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/provider/Settings$Global;->getBluetoothA2dpOptionalCodecsEnabledKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2499
    const/16 v38, 0x0

    .line 2497
    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 2280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 2357
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 2391
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 2421
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 2452
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    .line 2284
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private writeBluetoothDisableAbsVolumeOptions()V
    .locals 2

    .prologue
    .line 1740
    const-string/jumbo v1, "persist.bluetooth.disableabsvol"

    .line 1741
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1740
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    return-void

    .line 1741
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeBluetoothEnableInbandRingingOptions()V
    .locals 2

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothEnableInbandRinging:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1753
    const-string/jumbo v1, "persist.bluetooth.enableinbandringing"

    .line 1754
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothEnableInbandRinging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    .line 1753
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    :cond_0
    return-void

    .line 1754
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeBluetoothShowDevicesWithoutUserFriendlyNameOptions()V
    .locals 2

    .prologue
    .line 1730
    const-string/jumbo v1, "persist.bluetooth.showdeviceswithoutnames"

    .line 1731
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothShowDevicesWithoutNames:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1730
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    return-void

    .line 1731
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 3

    .prologue
    .line 1111
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1112
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const-string/jumbo v1, "persist.bluetooth.btsnoopenable"

    .line 1113
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1112
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method private writeColorTemperature()V
    .locals 3

    .prologue
    .line 1642
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    .line 1643
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    .line 1642
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1645
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f1117

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1646
    return-void

    .line 1643
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 2518
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 2519
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2520
    const-string/jumbo v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2519
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2521
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2522
    const-string/jumbo v3, "com.android.systemui"

    const-string/jumbo v4, "com.android.systemui.LoadAverageService"

    .line 2521
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2523
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 2524
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2528
    :goto_1
    return-void

    .line 2520
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2526
    .restart local v0    # "service":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1539
    const-string/jumbo v1, "debug.hwui.overdraw"

    .line 1540
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1539
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1542
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1543
    return-void

    .line 1540
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugHwRendererOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1564
    const-string/jumbo v1, "debug.hwui.renderer"

    .line 1565
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1564
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1567
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebugHwRendererOptions()V

    .line 1568
    return-void

    .line 1565
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1576
    const-string/jumbo v1, "debug.layout"

    .line 1577
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1576
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1579
    return-void

    .line 1577
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 5

    .prologue
    .line 1118
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1119
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    .line 1118
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_0
    return-void

    .line 1120
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeDisableDozeOptions()V
    .locals 3

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1003
    const-string/jumbo v2, "doze_mode_enabaled"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1002
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1004
    return-void

    .line 1003
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 7

    .prologue
    .line 1413
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1414
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1416
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1417
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 1418
    .local v1, "disableOverlays":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    const/16 v4, 0x3f0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1422
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_1
    return-void

    .line 1417
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v3    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "disableOverlays":I
    goto :goto_0

    .line 1424
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeForceResizableOptions()V
    .locals 3

    .prologue
    .line 1665
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1666
    const-string/jumbo v2, "force_resizable_activities"

    .line 1667
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1665
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1668
    return-void

    .line 1667
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1677
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1678
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1679
    const-string/jumbo v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1678
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1680
    const-string/jumbo v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1682
    return-void

    .line 1679
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1680
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1434
    const-string/jumbo v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1436
    return-void

    .line 1434
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 3

    .prologue
    .line 2532
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 2533
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 2532
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2536
    :goto_0
    return-void

    .line 2534
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 9
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1839
    if-eqz p1, :cond_8

    .line 1840
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "32768"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1841
    :goto_0
    const-string/jumbo v6, "persist.log.tag"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1842
    .local v0, "currentTag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1843
    const-string/jumbo v0, ""

    .line 1847
    :cond_0
    const-string/jumbo v6, ",+Settings"

    const-string/jumbo v7, ""

    .line 1846
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1848
    const-string/jumbo v7, "^Settings,*"

    const-string/jumbo v8, ""

    .line 1846
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1849
    const-string/jumbo v7, ",+"

    const-string/jumbo v8, ","

    .line 1846
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1850
    const-string/jumbo v7, ",+$"

    const-string/jumbo v8, ""

    .line 1846
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1851
    .local v3, "newTag":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1852
    const-string/jumbo p1, "65536"

    .line 1854
    const-string/jumbo v6, "persist.log.tag.snet_event_log"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1855
    .local v5, "snetValue":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1856
    :cond_1
    const-string/jumbo v6, "log.tag.snet_event_log"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1857
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1858
    :cond_2
    const-string/jumbo v6, "persist.log.tag.snet_event_log"

    const-string/jumbo v7, "I"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1863
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1866
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Settings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1868
    .end local v5    # "snetValue":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1869
    const-string/jumbo v6, "persist.log.tag"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->defaultLogdSizeValue()Ljava/lang/String;

    move-result-object v1

    .line 1872
    .local v1, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    .line 1873
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1874
    .local v4, "size":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "persist.logd.size"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v4, ""

    .end local v4    # "size":Ljava/lang/String;
    :cond_7
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    const-string/jumbo v6, "ctl.start"

    const-string/jumbo v7, "logd-reinit"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1877
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1878
    return-void

    .line 1839
    .end local v0    # "currentTag":Ljava/lang/String;
    .end local v1    # "defaultValue":Ljava/lang/String;
    .end local v3    # "newTag":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    .local v2, "disable":Z
    goto/16 :goto_0

    .line 1873
    .end local v2    # "disable":Z
    .restart local v0    # "currentTag":Ljava/lang/String;
    .restart local v1    # "defaultValue":Ljava/lang/String;
    .restart local v3    # "newTag":Ljava/lang/String;
    :cond_9
    move-object v4, v1

    .restart local v4    # "size":Ljava/lang/String;
    goto :goto_1
.end method

.method private writeLogpersistOption(Ljava/lang/Object;Z)V
    .locals 8
    .param p1, "newValue"    # Ljava/lang/Object;
    .param p2, "skipWarning"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1951
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-nez v5, :cond_0

    .line 1952
    return-void

    .line 1954
    :cond_0
    const-string/jumbo v5, "persist.log.tag"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1955
    .local v1, "currentTag":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v5, "Settings"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1956
    const/4 p1, 0x0

    .line 1957
    const/4 p2, 0x1

    .line 1960
    .end local p1    # "newValue":Ljava/lang/Object;
    .end local p2    # "skipWarning":Z
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1961
    :cond_2
    if-eqz p2, :cond_4

    .line 1962
    iput-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistCleared:Z

    .line 1980
    :cond_3
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/DevelopmentSettings;->setLogpersistOff(Z)V

    .line 1981
    return-void

    .line 1963
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistCleared:Z

    if-nez v5, :cond_3

    .line 1965
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1966
    .local v2, "currentValue":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1967
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1966
    if-eqz v5, :cond_3

    .line 1968
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 1969
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1970
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1971
    const v7, 0x7f0f00ff

    .line 1970
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1969
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1972
    const v6, 0x7f0f00fe

    .line 1969
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1973
    const v6, 0x1040013

    .line 1969
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1974
    const v6, 0x1040009

    .line 1969
    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    .line 1976
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    invoke-virtual {v5, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1977
    return-void

    .line 1984
    .end local v2    # "currentValue":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "logd.logpersistd.buffer"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1985
    .local v0, "currentBuffer":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 1986
    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->setLogpersistOff(Z)V

    .line 1988
    :cond_7
    const-string/jumbo v5, "persist.logd.logpersistd.buffer"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const-string/jumbo v5, "persist.logd.logpersistd"

    const-string/jumbo v6, "logcatd"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1991
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_8

    .line 1992
    const-string/jumbo v5, "logd.logpersistd"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1993
    .restart local v2    # "currentValue":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 1994
    const-string/jumbo v5, "logcatd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1993
    if-eqz v5, :cond_9

    .line 2002
    .end local v2    # "currentValue":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogpersistValues()V

    .line 2003
    return-void

    .line 1998
    .restart local v2    # "currentValue":Ljava/lang/String;
    :cond_9
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1991
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1999
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private writeMobileDataAlwaysOnOptions()V
    .locals 3

    .prologue
    .line 1765
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1766
    const-string/jumbo v2, "mobile_data_always_on"

    .line 1767
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1765
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1768
    return-void

    .line 1767
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMockLocation()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1125
    const-string/jumbo v7, "appops"

    invoke-virtual {p0, v7}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1128
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v7, Lcom/android/settings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 1129
    .local v6, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1

    .line 1131
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 1132
    .local v4, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 1133
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1135
    .local v3, "oldMockLocationApp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1136
    const/16 v8, 0x200

    .line 1135
    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1137
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3a

    .line 1138
    const/4 v9, 0x2

    .line 1137
    invoke-virtual {v1, v8, v7, v3, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1139
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1147
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "oldMockLocationApp":Ljava/lang/String;
    .end local v4    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1149
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1150
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v9, 0x200

    .line 1149
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1151
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1152
    iget-object v8, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1151
    const/16 v9, 0x3a

    .line 1152
    const/4 v10, 0x0

    .line 1151
    invoke-virtual {v1, v9, v7, v8, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1157
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    return-void

    .line 1153
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1443
    const-string/jumbo v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1445
    return-void

    .line 1443
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeOtaDisableAutomaticUpdateOptions()V
    .locals 3

    .prologue
    .line 1249
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1250
    const-string/jumbo v2, "ota_disable_automatic_update"

    .line 1251
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1249
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1252
    return-void

    .line 1251
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 2599
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2600
    const-string/jumbo v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .line 2599
    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2601
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 2602
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1348
    const-string/jumbo v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1347
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1349
    return-void

    .line 1348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 2635
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2636
    const-string/jumbo v2, "anr_show_background"

    .line 2637
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2635
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2638
    return-void

    .line 2637
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1515
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    .line 1516
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1515
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1518
    return-void

    .line 1516
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1504
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    .line 1505
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1504
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1507
    return-void

    .line 1505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1492
    const-string/jumbo v1, "debug.hwui.show_non_rect_clip"

    .line 1493
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1492
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1495
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1496
    return-void

    .line 1493
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowNotificationChannelWarningsOptions()V
    .locals 3

    .prologue
    .line 2646
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2647
    const-string/jumbo v2, "show_notification_channel_warnings"

    .line 2648
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2646
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2649
    return-void

    .line 2648
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1359
    const-string/jumbo v2, "show_touches"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1358
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1360
    return-void

    .line 1359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 7

    .prologue
    .line 1396
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1397
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1399
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1400
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 1401
    .local v3, "showUpdates":I
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    const/16 v4, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1405
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :cond_0
    :goto_1
    return-void

    .line 1400
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "showUpdates":I
    goto :goto_0

    .line 1407
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1626
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1627
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1628
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1629
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1634
    :goto_0
    return-void

    .line 1631
    :cond_0
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1632
    const-string/jumbo v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 3

    .prologue
    .line 1336
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    const-string/jumbo v1, "1"

    .line 1336
    :goto_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 1340
    :goto_1
    return-void

    .line 1337
    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1338
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeTetheringHardwareOffloadOptions()V
    .locals 3

    .prologue
    .line 1777
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1778
    const-string/jumbo v2, "tether_offload_disabled"

    .line 1779
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTetheringHardwareOffload:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1777
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1780
    return-void

    .line 1779
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1466
    const-string/jumbo v1, "debug.hwui.profile"

    .line 1467
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1466
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1469
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1470
    return-void

    .line 1467
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1654
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1655
    const-string/jumbo v2, "usb_audio_automatic_routing_disabled"

    .line 1656
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1654
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1657
    return-void

    .line 1656
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUsbConfigurationOption(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 2030
    .local v1, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2031
    .local v0, "function":Ljava/lang/String;
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2032
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 2036
    :goto_0
    return-void

    .line 2034
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private writeVerboseMultiBroadcast()V
    .locals 3

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1015
    const-string/jumbo v2, "op_enable_wifi_multi_broadcast"

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1014
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1016
    return-void

    .line 1015
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1232
    const-string/jumbo v2, "verifier_verify_adb_installs"

    .line 1233
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1231
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1234
    return-void

    .line 1233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1711
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1712
    return-void

    .line 1711
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1720
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1721
    return-void

    .line 1720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1691
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1692
    const-string/jumbo v2, "wifi_display_certification_on"

    .line 1693
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1691
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1694
    return-void

    .line 1693
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1702
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1703
    return-void

    .line 1702
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 430
    const/16 v0, 0x27

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 718
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 720
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 722
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 723
    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 725
    return-void

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 729
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2725
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 2726
    if-ne p2, v1, :cond_0

    .line 2727
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 2728
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 2729
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 2748
    :cond_0
    :goto_0
    return-void

    .line 2731
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 2732
    if-ne p2, v1, :cond_0

    .line 2733
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 2734
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeMockLocation()V

    .line 2735
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateMockLocation()V

    goto :goto_0

    .line 2737
    :cond_2
    if-nez p1, :cond_4

    .line 2738
    if-ne p2, v1, :cond_0

    .line 2739
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2740
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 2742
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 2746
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3031
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v5, :cond_2

    .line 3032
    if-ne p2, v6, :cond_1

    .line 3033
    iput-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 3034
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3035
    const-string/jumbo v6, "adb_enabled"

    .line 3034
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3036
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 3037
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 3038
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    .line 3040
    const-string/jumbo v5, "sys.debug.watchdog"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3041
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 3083
    :cond_0
    :goto_0
    return-void

    .line 3046
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 3048
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v5, :cond_3

    .line 3049
    if-ne p2, v6, :cond_0

    .line 3051
    :try_start_0
    const-string/jumbo v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3052
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 3053
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v4}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3054
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 3055
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "DevelopmentSettings"

    const-string/jumbo v6, "Unable to clear adb keys"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3058
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v5, :cond_5

    .line 3059
    if-ne p2, v6, :cond_4

    .line 3060
    iput-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 3062
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 3063
    .local v3, "mContext":Landroid/content/Context;
    const-string/jumbo v5, "development"

    invoke-virtual {v3, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3065
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "show"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3066
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3068
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3069
    const-string/jumbo v6, "development_settings_enabled"

    .line 3068
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3070
    iput-boolean v7, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 3071
    iget-boolean v5, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v5}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 3074
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "mContext":Landroid/content/Context;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 3076
    :cond_5
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-ne p1, v5, :cond_0

    .line 3077
    if-ne p2, v6, :cond_6

    .line 3078
    invoke-direct {p0, v7}, Lcom/android/settings/DevelopmentSettings;->setLogpersistOff(Z)V

    goto :goto_0

    .line 3080
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateLogpersistValues()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 435
    invoke-super/range {p0 .. p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 437
    const-string/jumbo v12, "window"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 439
    const-string/jumbo v12, "backup"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    .line 438
    invoke-static {v12}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 441
    const-string/jumbo v12, "webviewupdate"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v12

    .line 440
    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mWebViewUpdateService:Landroid/webkit/IWebViewUpdateService;

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 443
    const-string/jumbo v13, "persistent_data_block"

    .line 442
    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mOemUnlockManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 444
    const-string/jumbo v12, "phone"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "device_policy"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 447
    const-string/jumbo v12, "user"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 449
    const-string/jumbo v12, "wifi"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 450
    new-instance v12, Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    .line 451
    new-instance v12, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mCameraHalHdrplusController:Lcom/android/settings/development/CameraHalHdrplusPreferenceController;

    .line 452
    new-instance v12, Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mCameraLaserSensorController:Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    .line 454
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->isUiRestricted()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    .line 458
    :cond_0
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    .line 459
    new-instance v12, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 460
    return-void

    .line 463
    :cond_1
    const v12, 0x7f080029

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 466
    const-string/jumbo v12, "debug_debugging_category"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 465
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .line 467
    .local v1, "debugDebuggingCategory":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v12, "enable_adb"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    .line 468
    const-string/jumbo v12, "clear_adb_keys"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    .line 469
    const-string/jumbo v12, "ro.adb.secure"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_2

    .line 470
    if-eqz v1, :cond_2

    .line 471
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 474
    :cond_2
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    const-string/jumbo v12, "enable_terminal"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "com.android.terminal"

    invoke-static {v12, v13}, Lcom/android/settings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 477
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 478
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    .line 481
    :cond_3
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 482
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mCameraHalHdrplusController:Lcom/android/settings/development/CameraHalHdrplusPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 483
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mCameraLaserSensorController:Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 485
    const-string/jumbo v12, "getlogs"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mLogsPreference:Landroid/support/v7/preference/Preference;

    .line 486
    const-string/jumbo v12, "disable_doze"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 487
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    .line 490
    const-string/jumbo v12, "op_wifi_verbose_multi_broadcast"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 494
    const-string/jumbo v12, "bugreport"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBugreport:Landroid/support/v7/preference/Preference;

    .line 495
    const-string/jumbo v12, "bugreport_in_power"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    .line 496
    const-string/jumbo v12, "keep_screen_on"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    check-cast v12, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 497
    const-string/jumbo v12, "bt_hci_snoop_log"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    .line 498
    const-string/jumbo v12, "oem_unlock_enable"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    check-cast v12, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 499
    invoke-static {}, Lcom/android/settings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v12

    if-nez v12, :cond_4

    .line 500
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->removePreference(Landroid/support/v7/preference/Preference;)V

    .line 501
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 504
    :cond_4
    const-string/jumbo v12, "debug_view_attributes"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    .line 505
    const-string/jumbo v12, "force_allow_on_external"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    .line 506
    const-string/jumbo v12, "local_backup_password"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    .line 507
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    const-string/jumbo v12, "advanced_reboot"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    .line 511
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v12}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v12

    if-nez v12, :cond_5

    .line 512
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 513
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 514
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 515
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 516
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->disableForUser(Landroid/support/v7/preference/Preference;)V

    .line 519
    :cond_5
    const-string/jumbo v12, "debug_app"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    .line 520
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const-string/jumbo v12, "wait_for_debugger"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    .line 523
    const-string/jumbo v12, "mock_location_app"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    .line 524
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    const-string/jumbo v12, "verify_apps_over_usb"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    .line 527
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v12

    if-nez v12, :cond_6

    .line 528
    if-eqz v1, :cond_9

    .line 529
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 534
    :cond_6
    :goto_0
    const-string/jumbo v12, "strict_mode"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    .line 535
    const-string/jumbo v12, "pointer_location"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    .line 536
    const-string/jumbo v12, "show_touches"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    .line 537
    const-string/jumbo v12, "show_screen_updates"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 538
    const-string/jumbo v12, "disable_overlays"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    .line 541
    const-string/jumbo v12, "force_hw_ui"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    .line 542
    const-string/jumbo v12, "force_msaa"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    .line 543
    const-string/jumbo v12, "track_frame_time"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    .line 544
    const-string/jumbo v12, "show_non_rect_clip"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    .line 545
    const-string/jumbo v12, "show_hw_screen_udpates"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 546
    const-string/jumbo v12, "show_hw_layers_udpates"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    .line 547
    const-string/jumbo v12, "debug_layout"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 548
    const-string/jumbo v12, "force_rtl_layout_all_locales"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    .line 549
    const-string/jumbo v12, "debug_hw_overdraw"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    .line 550
    const-string/jumbo v12, "debug_hw_renderer"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    .line 551
    const-string/jumbo v12, "wifi_display_certification"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    .line 552
    const-string/jumbo v12, "wifi_verbose_logging"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    .line 553
    const-string/jumbo v12, "wifi_aggressive_handover"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    .line 554
    const-string/jumbo v12, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    .line 555
    const-string/jumbo v12, "mobile_data_always_on"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    .line 556
    const-string/jumbo v12, "tethering_hardware_offload"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mTetheringHardwareOffload:Landroid/support/v14/preference/SwitchPreference;

    .line 557
    const-string/jumbo v12, "select_logd_size"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    .line 558
    const-string/jumbo v12, "1"

    const-string/jumbo v13, "ro.debuggable"

    const-string/jumbo v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 559
    const-string/jumbo v12, "select_logpersist"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    .line 570
    :goto_1
    const-string/jumbo v12, "select_usb_configuration"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    .line 572
    const-string/jumbo v12, "bluetooth_show_devices_without_names"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    .line 571
    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothShowDevicesWithoutNames:Landroid/support/v14/preference/SwitchPreference;

    .line 573
    const-string/jumbo v12, "bluetooth_disable_absolute_volume"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    .line 574
    const-string/jumbo v12, "bluetooth_enable_inband_ringing"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothEnableInbandRinging:Landroid/support/v14/preference/SwitchPreference;

    .line 576
    const-string/jumbo v12, "debug_networking_category"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 575
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    .line 577
    .local v2, "debugNetworkingCategory":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/bluetooth/BluetoothHeadset;->isInbandRingingSupported(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 578
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothEnableInbandRinging:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 579
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothEnableInbandRinging:Landroid/support/v14/preference/SwitchPreference;

    .line 582
    :cond_7
    const-string/jumbo v12, "bluetooth_select_avrcp_version"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    .line 583
    const-string/jumbo v12, "bluetooth_select_a2dp_codec"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    .line 584
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/settings/DevelopmentSettings;->isSupportAptxHdSupport:Z

    .line 585
    const-string/jumbo v12, "bluetooth_select_a2dp_sample_rate"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    .line 586
    const-string/jumbo v12, "bluetooth_select_a2dp_bits_per_sample"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    .line 587
    const-string/jumbo v12, "bluetooth_select_a2dp_channel_mode"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    .line 588
    const-string/jumbo v12, "bluetooth_select_a2dp_ldac_playback_quality"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    .line 589
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->initBluetoothConfigurationValues()V

    .line 591
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0031

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0032

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "entriesvalue":[Ljava/lang/CharSequence;
    const/4 v12, 0x5

    new-array v10, v12, [Ljava/lang/String;

    .line 594
    .local v10, "usbentries":[Ljava/lang/CharSequence;
    const/4 v12, 0x5

    new-array v11, v12, [Ljava/lang/String;

    .line 595
    .local v11, "usbentriesvalue":[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v12, v4

    if-ge v7, v12, :cond_d

    .line 596
    const/4 v12, 0x3

    if-ge v7, v12, :cond_c

    .line 597
    aget-object v12, v4, v7

    aput-object v12, v10, v7

    .line 598
    aget-object v12, v5, v7

    aput-object v12, v11, v7

    .line 595
    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 531
    .end local v2    # "debugNetworkingCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v4    # "entries":[Ljava/lang/CharSequence;
    .end local v5    # "entriesvalue":[Ljava/lang/CharSequence;
    .end local v7    # "i":I
    .end local v10    # "usbentries":[Ljava/lang/CharSequence;
    .end local v11    # "usbentriesvalue":[Ljava/lang/CharSequence;
    :cond_9
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 561
    :cond_a
    const-string/jumbo v12, "select_logpersist"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/ListPreference;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    .line 562
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-eqz v12, :cond_b

    .line 563
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 564
    if-eqz v1, :cond_b

    .line 565
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 568
    :cond_b
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    goto/16 :goto_1

    .line 599
    .restart local v2    # "debugNetworkingCategory":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v4    # "entries":[Ljava/lang/CharSequence;
    .restart local v5    # "entriesvalue":[Ljava/lang/CharSequence;
    .restart local v7    # "i":I
    .restart local v10    # "usbentries":[Ljava/lang/CharSequence;
    .restart local v11    # "usbentriesvalue":[Ljava/lang/CharSequence;
    :cond_c
    const/4 v12, 0x3

    if-le v7, v12, :cond_8

    .line 600
    add-int/lit8 v12, v7, -0x1

    aget-object v13, v4, v7

    aput-object v13, v10, v12

    .line 601
    add-int/lit8 v12, v7, -0x1

    aget-object v13, v5, v7

    aput-object v13, v11, v12

    goto :goto_3

    .line 604
    :cond_d
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, v10}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 605
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, v11}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 606
    const-string/jumbo v12, "window_animation_scale"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    .line 607
    const-string/jumbo v12, "transition_animation_scale"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    .line 608
    const-string/jumbo v12, "animator_duration_scale"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    .line 609
    const-string/jumbo v12, "overlay_display_devices"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    .line 610
    const-string/jumbo v12, "simulate_color_space"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    .line 611
    const-string/jumbo v12, "usb_audio"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    .line 612
    const-string/jumbo v12, "force_resizable_activities"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    .line 615
    const-string/jumbo v12, "immediately_destroy_activities"

    .line 614
    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    .line 616
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    const-string/jumbo v12, "app_process_limit"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    .line 622
    const-string/jumbo v12, "show_all_anrs"

    .line 621
    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    .line 623
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    const-string/jumbo v12, "show_notification_channel_warnings"

    .line 626
    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    .line 628
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    const-string/jumbo v12, "hdcp_checking"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 632
    .local v6, "hdcpChecking":Landroid/support/v7/preference/Preference;
    if-eqz v6, :cond_e

    .line 633
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-direct {p0, v6}, Lcom/android/settings/DevelopmentSettings;->removePreferenceForProduction(Landroid/support/v7/preference/Preference;)Z

    .line 638
    :cond_e
    const-string/jumbo v12, "convert_to_file_encryption"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    .line 641
    .local v0, "convertFbePreference":Landroid/support/v7/preference/PreferenceScreen;
    :try_start_0
    const-string/jumbo v12, "mount"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 642
    .local v9, "service":Landroid/os/IBinder;
    invoke-static {v9}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v8

    .line 643
    .local v8, "mountService":Landroid/os/storage/IStorageManager;
    invoke-interface {v8}, Landroid/os/storage/IStorageManager;->isConvertibleToFBE()Z

    move-result v12

    if-nez v12, :cond_11

    .line 644
    const-string/jumbo v12, "convert_to_file_encryption"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v8    # "mountService":Landroid/os/storage/IStorageManager;
    .end local v9    # "service":Landroid/os/IBinder;
    :cond_f
    :goto_4
    const-string/jumbo v12, "ota_disable_automatic_update"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    .line 656
    const-string/jumbo v12, "ota_disable_automatic_update"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 658
    const-string/jumbo v12, "color_mode"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/settings/ColorModePreference;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    .line 665
    const-string/jumbo v12, "color_mode"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 666
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    .line 669
    const-string/jumbo v12, "color_temperature"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 670
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120033

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 671
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :goto_5
    const-string/jumbo v12, "aptx_hd_support"

    invoke-direct {p0, v12}, Lcom/android/settings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 686
    if-eqz v2, :cond_10

    sget-boolean v12, Lcom/android/settings/DevelopmentSettings;->isSupportAptxHdSupport:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_10

    .line 687
    iget-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v12}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 690
    :cond_10
    return-void

    .line 645
    .restart local v8    # "mountService":Landroid/os/storage/IStorageManager;
    .restart local v9    # "service":Landroid/os/IBinder;
    :cond_11
    :try_start_1
    const-string/jumbo v12, "file"

    const-string/jumbo v13, "ro.crypto.type"

    const-string/jumbo v14, "none"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 646
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 648
    const v13, 0x7f0f0166

    .line 647
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 650
    .end local v8    # "mountService":Landroid/os/storage/IStorageManager;
    .end local v9    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v3

    .line 651
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v12, "convert_to_file_encryption"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 674
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_12
    const-string/jumbo v12, "color_temperature"

    invoke-virtual {p0, v12}, Lcom/android/settings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 675
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    goto :goto_5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 818
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 819
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateUsbConfigurationValues()V

    .line 824
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 829
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 830
    const-string/jumbo v2, "DevelopmentSettings"

    const-string/jumbo v3, "bluetooth on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v5, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 834
    iput-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 836
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 837
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 836
    invoke-virtual {v0, v2, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 840
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 841
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 843
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBluetoothA2dpConfigurationValues()V

    .line 846
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 3104
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 3105
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 3106
    return-void
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 851
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 853
    iget-boolean v1, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 854
    return-void

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 857
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 858
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 860
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 861
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 862
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 863
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 865
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eq v1, v2, :cond_1

    .line 866
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v4, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 868
    :cond_1
    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 870
    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 872
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3087
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 3088
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 3089
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 3091
    :cond_0
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 3100
    :cond_1
    :goto_0
    return-void

    .line 3092
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_4

    .line 3093
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 3094
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 3096
    :cond_3
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 3097
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 3098
    iput-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersistClearDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 809
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 810
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/settings/ColorModePreference;->stopListening()V

    .line 813
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2953
    const-string/jumbo v0, "hdcp_checking"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2954
    const-string/jumbo v0, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateHdcpValues()V

    .line 2956
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    .line 2957
    return v2

    .line 2958
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectAvrcpVersion:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 2959
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeBluetoothAvrcpVersion(Ljava/lang/Object;)V

    .line 2960
    return v2

    .line 2961
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpCodec:Landroid/support/v7/preference/ListPreference;

    if-eq p1, v0, :cond_2

    .line 2962
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpSampleRate:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 2966
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DevelopmentSettings;->writeBluetoothConfigurationOption(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)V

    .line 2967
    return v2

    .line 2963
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpBitsPerSample:Landroid/support/v7/preference/ListPreference;

    if-eq p1, v0, :cond_2

    .line 2964
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpChannelMode:Landroid/support/v7/preference/ListPreference;

    if-eq p1, v0, :cond_2

    .line 2965
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothSelectA2dpLdacPlaybackQuality:Landroid/support/v7/preference/ListPreference;

    if-eq p1, v0, :cond_2

    .line 2968
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mLogdSize:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_4

    .line 2969
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 2970
    return v2

    .line 2971
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mLogpersist:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_5

    .line 2972
    invoke-direct {p0, p2, v3}, Lcom/android/settings/DevelopmentSettings;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 2973
    return v2

    .line 2974
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mUsbConfiguration:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_6

    .line 2975
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeUsbConfigurationOption(Ljava/lang/Object;)V

    .line 2976
    return v2

    .line 2977
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_7

    .line 2978
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mWindowAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v3, v0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2979
    return v2

    .line 2980
    :cond_7
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_8

    .line 2981
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v2, v0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2982
    return v2

    .line 2983
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_9

    .line 2984
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/support/v7/preference/ListPreference;Ljava/lang/Object;)V

    .line 2985
    return v2

    .line 2986
    :cond_9
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_a

    .line 2987
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 2988
    return v2

    .line 2989
    :cond_a
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mTrackFrameTime:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_b

    .line 2990
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    .line 2991
    return v2

    .line 2992
    :cond_b
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_c

    .line 2993
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    .line 2994
    return v2

    .line 2995
    :cond_c
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mDebugHwRenderer:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_d

    .line 2996
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeDebugHwRendererOptions(Ljava/lang/Object;)V

    .line 2997
    return v2

    .line 2998
    :cond_d
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mShowNonRectClip:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_e

    .line 2999
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    .line 3000
    return v2

    .line 3001
    :cond_e
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAppProcessLimit:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_f

    .line 3002
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 3003
    return v2

    .line 3004
    :cond_f
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mSimulateColorSpace:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_10

    .line 3005
    invoke-direct {p0, p2}, Lcom/android/settings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 3006
    return v2

    .line 3008
    :cond_10
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2752
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2753
    return v4

    .line 2756
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mTelephonyMonitorController:Lcom/android/settings/development/TelephonyMonitorPreferenceController;

    invoke-virtual {v5, p1}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2757
    return v3

    .line 2759
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mCameraHalHdrplusController:Lcom/android/settings/development/CameraHalHdrplusPreferenceController;

    invoke-virtual {v5, p1}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2760
    return v3

    .line 2762
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mCameraLaserSensorController:Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-virtual {v5, p1}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2763
    return v3

    .line 2766
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "getlogs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2768
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.oem.oemlogkit.startlog"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2769
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x30000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2770
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2776
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_8

    .line 2777
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2778
    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 2779
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 2780
    :cond_5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2781
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f010a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2780
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2782
    const v5, 0x7f0f0109

    .line 2780
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2783
    const v5, 0x1040013

    .line 2780
    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2784
    const v5, 0x1040009

    .line 2780
    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2786
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2931
    :cond_6
    :goto_1
    return v4

    .line 2788
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2789
    const-string/jumbo v5, "adb_enabled"

    .line 2788
    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2790
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 2791
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 2792
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_1

    .line 2794
    :cond_8
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mClearAdbKeys:Landroid/support/v7/preference/Preference;

    if-ne p1, v5, :cond_a

    .line 2795
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 2796
    :cond_9
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2797
    const v5, 0x7f0f010b

    .line 2796
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2798
    const v5, 0x104000a

    .line 2796
    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2799
    const/high16 v5, 0x1040000

    .line 2796
    invoke-virtual {v3, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto :goto_1

    .line 2801
    :cond_a
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_c

    .line 2802
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2803
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "com.android.terminal"

    .line 2804
    iget-object v6, p0, Lcom/android/settings/DevelopmentSettings;->mEnableTerminal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2803
    :goto_2
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1

    :cond_b
    move v3, v4

    .line 2805
    goto :goto_2

    .line 2806
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_c
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_e

    .line 2807
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2808
    const-string/jumbo v6, "bugreport_in_power_menu"

    .line 2809
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mBugreportInPower:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2807
    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2810
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->setBugreportStorageProviderStatus()V

    goto/16 :goto_1

    :cond_d
    move v3, v4

    .line 2809
    goto :goto_3

    .line 2811
    :cond_e
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-ne p1, v5, :cond_10

    .line 2812
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2813
    const-string/jumbo v6, "stay_on_while_plugged_in"

    .line 2814
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2815
    const/4 v3, 0x3

    .line 2812
    :goto_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    move v3, v4

    .line 2815
    goto :goto_4

    .line 2816
    :cond_10
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_11

    .line 2817
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_1

    .line 2818
    :cond_11
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-ne p1, v5, :cond_13

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v5}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2819
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mEnableOemUnlock:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2820
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2821
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_1

    .line 2824
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 2826
    :cond_13
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mMockLocationAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v5, :cond_14

    .line 2827
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/android/settings/AppPicker;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2828
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.settings.extra.REQUESTIING_PERMISSION"

    .line 2829
    const-string/jumbo v5, "android.permission.ACCESS_MOCK_LOCATION"

    .line 2828
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2830
    const/16 v3, 0x3e9

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 2831
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_14
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_16

    .line 2832
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2833
    const-string/jumbo v6, "debug_view_attributes"

    .line 2834
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mDebugViewAttributes:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2832
    :goto_5
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_15
    move v3, v4

    .line 2834
    goto :goto_5

    .line 2835
    :cond_16
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v5, :cond_18

    .line 2836
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2837
    const-string/jumbo v6, "force_allow_on_external"

    .line 2838
    iget-object v7, p0, Lcom/android/settings/DevelopmentSettings;->mForceAllowOnExternal:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2836
    :goto_6
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_17
    move v3, v4

    .line 2838
    goto :goto_6

    .line 2839
    :cond_18
    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mDebugAppPref:Landroid/support/v7/preference/Preference;

    if-ne p1, v5, :cond_19

    .line 2840
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/AppPicker;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2841
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings.extra.DEBUGGABLE"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2842
    const/16 v3, 0x3e8

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 2843
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_19
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWaitForDebugger:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1a

    .line 2844
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_1

    .line 2845
    :cond_1a
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1b

    .line 2846
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_1

    .line 2847
    :cond_1b
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mOtaDisableAutomaticUpdate:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1c

    .line 2848
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeOtaDisableAutomaticUpdateOptions()V

    goto/16 :goto_1

    .line 2849
    :cond_1c
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mStrictMode:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1d

    .line 2850
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_1

    .line 2851
    :cond_1d
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mPointerLocation:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1e

    .line 2852
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_1

    .line 2853
    :cond_1e
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowTouches:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_1f

    .line 2854
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_1

    .line 2855
    :cond_1f
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_20

    .line 2856
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_1

    .line 2857
    :cond_20
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDisableOverlays:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_21

    .line 2858
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_1

    .line 2859
    :cond_21
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowCpuUsage:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_22

    .line 2860
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_1

    .line 2861
    :cond_22
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_23

    .line 2862
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_1

    .line 2863
    :cond_23
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowAllANRs:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_24

    .line 2864
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_1

    .line 2865
    :cond_24
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowNotificationChannelWarnings:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_25

    .line 2866
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowNotificationChannelWarningsOptions()V

    goto/16 :goto_1

    .line 2867
    :cond_25
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mForceHardwareUi:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_26

    .line 2868
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_1

    .line 2869
    :cond_26
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mForceMsaa:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_27

    .line 2870
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_1

    .line 2871
    :cond_27
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_28

    .line 2872
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_1

    .line 2873
    :cond_28
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_29

    .line 2874
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_1

    .line 2875
    :cond_29
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDebugLayout:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2a

    .line 2876
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_1

    .line 2877
    :cond_2a
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mForceRtlLayout:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2b

    .line 2878
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_1

    .line 2879
    :cond_2b
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2c

    .line 2880
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_1

    .line 2881
    :cond_2c
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2d

    .line 2882
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_1

    .line 2883
    :cond_2d
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2e

    .line 2884
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_1

    .line 2885
    :cond_2e
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_2f

    .line 2886
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_1

    .line 2887
    :cond_2f
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_30

    .line 2888
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeMobileDataAlwaysOnOptions()V

    goto/16 :goto_1

    .line 2889
    :cond_30
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mTetheringHardwareOffload:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_31

    .line 2890
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeTetheringHardwareOffloadOptions()V

    goto/16 :goto_1

    .line 2891
    :cond_31
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_32

    .line 2892
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeColorTemperature()V

    goto/16 :goto_1

    .line 2893
    :cond_32
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mUSBAudio:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_33

    .line 2894
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_1

    .line 2895
    :cond_33
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mForceResizable:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_34

    .line 2896
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeForceResizableOptions()V

    goto/16 :goto_1

    .line 2899
    :cond_34
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAdvancedReboot:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_35

    .line 2900
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeAdvancedRebootOptions()V

    goto/16 :goto_1

    .line 2901
    :cond_35
    const-string/jumbo v3, "background_check"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2902
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->startBackgroundCheckFragment()V

    goto/16 :goto_1

    .line 2903
    :cond_36
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothShowDevicesWithoutNames:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_37

    .line 2904
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBluetoothShowDevicesWithoutUserFriendlyNameOptions()V

    goto/16 :goto_1

    .line 2905
    :cond_37
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothDisableAbsVolume:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_38

    .line 2906
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBluetoothDisableAbsVolumeOptions()V

    goto/16 :goto_1

    .line 2907
    :cond_38
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mBluetoothEnableInbandRinging:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_39

    .line 2908
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeBluetoothEnableInbandRingingOptions()V

    goto/16 :goto_1

    .line 2909
    :cond_39
    const-string/jumbo v3, "reset_shortcut_manager_throttling"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 2910
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetShortcutManagerThrottling()V

    goto/16 :goto_1

    .line 2913
    :cond_3a
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mDisableDozeSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_3b

    .line 2914
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeDisableDozeOptions()V

    goto/16 :goto_1

    .line 2915
    :cond_3b
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mVerboseMultiBroadcastSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_3c

    .line 2916
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeVerboseMultiBroadcast()V

    goto/16 :goto_1

    .line 2917
    :cond_3c
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mWirelessAdbDebuggingSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eq p1, v3, :cond_6

    .line 2922
    iget-object v3, p0, Lcom/android/settings/DevelopmentSettings;->mAptxHdSupportSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_3d

    .line 2923
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeAptxHdSupportSwitch()V

    goto/16 :goto_1

    .line 2928
    :cond_3d
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3

    .line 2771
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 758
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 760
    iget-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0f00cd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 765
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 766
    return-void

    .line 774
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 773
    invoke-static {v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 775
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v4, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 776
    if-nez v0, :cond_5

    .line 777
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 782
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 784
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "development_settings_enabled"

    .line 783
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 785
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 786
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 788
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 793
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 794
    const-string/jumbo v4, "development_settings_enabled"

    .line 793
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 795
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 796
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 797
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 799
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 801
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    if-eqz v2, :cond_4

    .line 802
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/settings/ColorModePreference;->startListening()V

    .line 803
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mColorModePreference:Lcom/android/settings/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/settings/ColorModePreference;->updateCurrentAndSupported()V

    .line 805
    :cond_4
    return-void

    .line 779
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :cond_5
    iget-object v4, p0, Lcom/android/settings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/settings/DevelopmentSettings;->mKeepScreenOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2691
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "sys.debug.watchdog"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2692
    :cond_0
    return-void

    .line 2694
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v2, :cond_3

    .line 2695
    if-eqz p2, :cond_4

    .line 2696
    iput-boolean v4, p0, Lcom/android/settings/DevelopmentSettings;->mDialogClicked:Z

    .line 2697
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialogs()V

    .line 2698
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2699
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2700
    const v4, 0x7f0f010d

    .line 2699
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2698
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2701
    const v3, 0x7f0f010c

    .line 2698
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2702
    const v3, 0x1040013

    .line 2698
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2703
    const v3, 0x1040009

    .line 2698
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 2705
    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2721
    :cond_3
    :goto_0
    return-void

    .line 2707
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->resetDangerousOptions()V

    .line 2708
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2709
    const-string/jumbo v3, "development_settings_enabled"

    .line 2708
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2711
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2712
    .local v1, "mContext":Landroid/content/Context;
    const-string/jumbo v2, "development"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2714
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "show"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2715
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2717
    iput-boolean p2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    .line 2718
    iget-boolean v2, p0, Lcom/android/settings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 3109
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 3111
    new-instance v0, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3113
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/support/v14/preference/SwitchPreference;Z)V
    .locals 2
    .param p1, "switchPreference"    # Landroid/support/v14/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    const/4 v1, 0x0

    .line 875
    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 877
    if-eqz p2, :cond_0

    const-string/jumbo v0, "sys.debug.watchdog"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 881
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 882
    return-void
.end method
