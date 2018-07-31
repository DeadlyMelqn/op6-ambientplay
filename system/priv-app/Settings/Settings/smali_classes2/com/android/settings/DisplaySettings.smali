.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;
.implements Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DisplaySettings$1;,
        Lcom/android/settings/DisplaySettings$2;,
        Lcom/android/settings/DisplaySettings$3;,
        Lcom/android/settings/DisplaySettings$4;,
        Lcom/android/settings/DisplaySettings$5;,
        Lcom/android/settings/DisplaySettings$BrightnessObserver;,
        Lcom/android/settings/DisplaySettings$DarkModeRunnable;,
        Lcom/android/settings/DisplaySettings$DefaultHandler;,
        Lcom/android/settings/DisplaySettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_ADJ_RESOLUTION:F = 2048.0f

.field private static final BRIGHTNESS_TRANSLATION:Z = false

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field public static final FILE_FONT_WARING:Ljava/lang/String; = "font_waring"

.field private static final KEY_AUTO_BRIGHTNESS:Ljava/lang/String; = "auto_brightness"

.field private static final KEY_AUTO_ROTATE:Ljava/lang/String; = "auto_rotate"

.field private static final KEY_BACK_TOP_THEME:Ljava/lang/String; = "back_topic_theme"

.field private static final KEY_CAMERA_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "camera_double_tap_power_gesture"

.field private static final KEY_CAMERA_GESTURE:Ljava/lang/String; = "camera_gesture"

.field private static final KEY_DARK_MODE:Ljava/lang/String; = "dark_mode"

.field private static final KEY_DARK_MODE_ACTION:Ljava/lang/String; = "oem_black_mode"

.field public static final KEY_DISPLAY_SIZE:Ljava/lang/String; = "screen_zoom"

.field private static final KEY_DISPLAY_SIZE_ADAPTION:Ljava/lang/String; = "display_size_adaption"

.field private static final KEY_DISPLAY_SYSTEM:Ljava/lang/String; = "display_system"

.field private static final KEY_DOZE:Ljava/lang/String; = "doze"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field public static final KEY_IS_CHECKED:Ljava/lang/String; = "is_checked"

.field private static final KEY_LAST_COLOR:Ljava/lang/String; = "last_color"

.field private static final KEY_LED_SETTINGS:Ljava/lang/String; = "led_settings"

.field private static final KEY_LOCKGUARD_WALLPAPER:Ljava/lang/String; = "lockguard_wallpaper_settings"

.field private static final KEY_MANUAL_BRIGHT:Ljava/lang/String; = "manual_brightness_displays"

.field private static final KEY_MSM_SCREEN_BETTER:Ljava/lang/String; = "msm_screen_better_settings"

.field private static final KEY_NETWORK_NAME_DISPLAYED:Ljava/lang/String; = "network_operator_display"

.field private static final KEY_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field private static final KEY_NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled_op"

.field private static final KEY_NIGHT_MODE_LEVEL:Ljava/lang/String; = "night_mode_level_op"

.field private static final KEY_NOTCH_MODE:Ljava/lang/String; = "oneplus_notch_display_guide"

.field private static final KEY_ONEPLUS_NOTCH_AREA:Ljava/lang/String; = "oneplus_notch_area"

.field private static final KEY_ONEPLUS_NOTCH_FULLSCREEN_APP:Ljava/lang/String; = "oneplus_notch_fullscreen_app"

.field private static final KEY_READING_MODE:Ljava/lang/String; = "oneplus_reading_mode"

.field private static final KEY_SCREEN_BETTER:Ljava/lang/String; = "screen_better_settings"

.field private static final KEY_SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field private static final KEY_SCREEN_COLOR_MODE:Ljava/lang/String; = "screen_color_mode"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_TAP_TO_WAKE:Ljava/lang/String; = "tap_to_wake"

.field private static final KEY_THEME_ACCENT_COLOR:Ljava/lang/String; = "theme_accent_color"

.field private static final KEY_THEME_MODE:Ljava/lang/String; = "op_theme_mode"

.field private static final KEY_VIDEO_ENHANCER:Ljava/lang/String; = "video_enhancer"

.field private static final KEY_VR_DISPLAY_PREF:Ljava/lang/String; = "vr_display_pref"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final MAX_COLOR_COUNT:I = 0x7

.field public static final MGS_THEME_STAR_WAR_MODE_CHANGE:I = 0x65

.field public static final MSG_THEME_MODE_CHANGE:I = 0x64

.field public static final NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled"

.field private static final NOTIFY_LIGHT_ENABLE_KEY:Ljava/lang/String; = "notify_light_enable"

.field private static final OEM_BLACK_MODE_ACCENT_COLOR:Ljava/lang/String; = "oem_black_mode_accent_color"

.field private static final OEM_BLACK_MODE_ACCENT_COLOR_INDEX:Ljava/lang/String; = "oem_black_mode_accent_color_index"

.field private static final OEM_WHITE_MODE_ACCENT_COLOR:Ljava/lang/String; = "oem_white_mode_accent_color"

.field private static final OEM_WHITE_MODE_ACCENT_COLOR_INDEX:Ljava/lang/String; = "oem_white_mode_accent_color_index"

.field private static final ONEPLUS_NOTCH_MODE:Ljava/lang/String; = "op_camera_notch_ignore"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final OP_THEME_PACKAGE:Ljava/lang/String; = "com.oneplus.skin"

.field private static final OXYGEN_THEME_INTENT:Ljava/lang/String; = "com.oneplus.oxygen.changetheme"

.field private static final OXYGEN_THEME_INTENT_EXTRA:Ljava/lang/String; = "oxygen_theme_status"

.field public static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field private static final SCREEN_COLOR_MODE_ADAPTIVE_MODEL_SETTINGS_VALUE:I = 0x5

.field private static final SCREEN_COLOR_MODE_BASIC_SETTINGS_VALUE:I = 0x2

.field private static final SCREEN_COLOR_MODE_DCI_P3_SETTINGS_VALUE:I = 0x4

.field private static final SCREEN_COLOR_MODE_DEFAULT_SETTINGS_VALUE:I = 0x1

.field private static final SCREEN_COLOR_MODE_DEFINED_SETTINGS_VALUE:I = 0x3

.field private static final SCREEN_COLOR_MODE_SOFT_SETTINGS_VALUE:I = 0x6

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "customization_settings"

.field private static final SHOW_NETWORK_NAME_MODE:Ljava/lang/String; = "show_network_name_mode"

.field private static final SHOW_NETWORK_NAME_OFF:I = 0x0

.field private static final SHOW_NETWORK_NAME_ON:I = 0x1

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"

.field private static final THEME_ANDROID_MODE:I = 0x2

.field private static final THEME_DARK_MODE:I = 0x1

.field private static final THEME_LIGHT_MODE:I = 0x0

.field private static final THEME_MODE_ACTION:Ljava/lang/String; = "android.settings.OEM_THEME_MODE"

.field private static final THEME_MODE_STAR_WAR_VALUE:I = 0x1

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"

.field private static isSupportReadingMode:Z = false

.field private static final sDCI_P3Path:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/DCI_P3"

.field private static final sOPEN_VALUE:Ljava/lang/String; = "mode = 1"

.field private static final sRGBPath:Ljava/lang/String; = "/sys/devices/virtual/graphics/fb0/SRGB"


# instance fields
.field private isAutoSwitchClickedDrivenBrightnessChange:Z

.field private mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

.field private mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mAutomatic:Z

.field private mAutomaticAvailable:Z

.field private mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mBlackColorStringIds:[I

.field private mBlackColors:[Ljava/lang/String;

.field private mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

.field private mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mColors:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurentValue:I

.field private mDarkModeEnable:I

.field private mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

.field private mDarkModeRunnable:Lcom/android/settings/DisplaySettings$DarkModeRunnable;

.field private mDefaultHandler:Lcom/android/settings/DisplaySettings$DefaultHandler;

.field private mDefaultThemeMode:I

.field private mDisplaySizeAdaptionPreference:Landroid/support/v7/preference/Preference;

.field private mDozePreference:Landroid/support/v7/preference/Preference;

.field private mExternalChange:Z

.field private mFontSizePref:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mLedSettingsPreference:Landroid/support/v7/preference/Preference;

.field private mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

.field private mMaximumBacklight:I

.field private mMinimumBacklight:I

.field private mMsmScreenPreference:Landroid/support/v7/preference/Preference;

.field private mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNewController:Z

.field private mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNightModeHandler:Landroid/os/Handler;

.field private mNightModeLevel:I

.field private mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

.field private mNightModeObserver:Landroid/database/ContentObserver;

.field private mNightModePreference:Landroid/support/v7/preference/ListPreference;

.field private mNotchAreaCategary:Landroid/support/v7/preference/PreferenceCategory;

.field private mNotchModeAppPreference:Landroid/support/v7/preference/Preference;

.field private mNotchModePreference:Landroid/support/v7/preference/Preference;

.field private mNotifyLightEnable:I

.field private mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mPower:Landroid/os/IPowerManager;

.field private mPreValue:I

.field private mReadingModePreference:Landroid/support/v7/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

.field private mScreenColorModePreference:Landroid/support/v7/preference/Preference;

.field private mScreenPreference:Landroid/support/v7/preference/Preference;

.field private mScreenSaverPreference:Landroid/support/v7/preference/Preference;

.field private mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

.field private mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

.field private mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mThemeModePreference:Landroid/support/v7/preference/ListPreference;

.field private mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mVideoEnhancerPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mWhiteColorStringIds:[I

.field private mWhiteColors:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DisplaySettings;->isSupportReadingMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/DisplaySettings;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/DisplaySettings;)Lcom/oneplus/settings/OneplusColorManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/DisplaySettings;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mExternalChange:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/TimeoutListPreference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/DisplaySettings;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateSlider()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/DisplaySettings;J)V
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;
    .param p1, "currentTimeout"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAutoSwitchDrivenSlider()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLockScreenRotation()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateMode()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/DisplaySettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenColorModePreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1811
    new-instance v0, Lcom/android/settings/DisplaySettings$4;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$4;-><init>()V

    .line 1810
    sput-object v0, Lcom/android/settings/DisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1820
    new-instance v0, Lcom/android/settings/DisplaySettings$5;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$5;-><init>()V

    .line 1819
    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mExternalChange:Z

    .line 189
    iput-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mNewController:Z

    .line 198
    iput v2, p0, Lcom/android/settings/DisplaySettings;->mDefaultThemeMode:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    .line 1359
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    .line 1384
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    .line 1385
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1384
    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 1510
    new-instance v0, Lcom/android/settings/DisplaySettings$DarkModeRunnable;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$DarkModeRunnable;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings/DisplaySettings$DarkModeRunnable;

    .line 1545
    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 1691
    iput v2, p0, Lcom/android/settings/DisplaySettings;->mPreValue:I

    .line 1692
    iput v2, p0, Lcom/android/settings/DisplaySettings;->mCurentValue:I

    invoke-static {}, Lcom/android/settings/Utils;->a()V

    .line 102
    return-void
.end method

.method private static allowAllRotations(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 649
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 650
    const v1, 0x1120006

    .line 649
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "restriction"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1773
    invoke-virtual {p0, p1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    .line 1774
    .local v0, "pref":Lcom/android/settingslib/RestrictedPreference;
    if-eqz v0, :cond_0

    .line 1775
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1776
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1777
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1776
    invoke-static {v1, p2, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1778
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1783
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getColorIndex()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1406
    const/4 v1, 0x0

    .line 1407
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1408
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_black_mode_accent_color_index"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1409
    .local v0, "dbValue":I
    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    add-int/lit8 v1, v0, -0x7

    .line 1413
    .end local v0    # "dbValue":I
    :goto_0
    return v1

    .line 1409
    .restart local v0    # "dbValue":I
    :cond_0
    move v1, v0

    goto :goto_0

    .line 1411
    .end local v0    # "dbValue":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_white_mode_accent_color_index"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "customization_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getThemeModeValue(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1161
    if-ne p1, v2, :cond_0

    .line 1162
    return v0

    .line 1163
    :cond_0
    if-nez p1, :cond_1

    .line 1164
    return v1

    .line 1165
    :cond_1
    if-ne p1, v1, :cond_2

    .line 1166
    return v2

    .line 1168
    :cond_2
    return p1
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 1562
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1564
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 1565
    return-void
.end method

.method private initAccentColors(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1465
    new-array v0, v3, [Ljava/lang/String;

    .line 1466
    const v1, 0x7f0c0362

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1467
    const v1, 0x7f0c0363

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1468
    const v1, 0x7f0c0364

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1469
    const v1, 0x7f0c0365

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1470
    const v1, 0x7f0c0366

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1471
    const v1, 0x7f0c0367

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1472
    const v1, 0x7f0c0368

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1473
    const v1, 0x7f0c0369

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1465
    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    .line 1475
    new-array v0, v3, [Ljava/lang/String;

    .line 1476
    const v1, 0x7f0c036a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1477
    const v1, 0x7f0c036b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1478
    const v1, 0x7f0c036c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1479
    const v1, 0x7f0c036d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 1480
    const v1, 0x7f0c036e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1481
    const v1, 0x7f0c036f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1482
    const v1, 0x7f0c0370

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1483
    const v1, 0x7f0c0371

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1475
    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    .line 1485
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1486
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mColors:[Ljava/lang/String;

    .line 1490
    :cond_0
    :goto_0
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mWhiteColorStringIds:[I

    .line 1499
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mBlackColorStringIds:[I

    .line 1508
    return-void

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mColors:[Ljava/lang/String;

    goto :goto_0

    .line 1490
    :array_0
    .array-data 4
        0x7f0f04fd
        0x7f0f04fe
        0x7f0f04ff
        0x7f0f0500
        0x7f0f0501
        0x7f0f0502
        0x7f0f0503
        0x7f0f0504
    .end array-data

    .line 1499
    :array_1
    .array-data 4
        0x7f0f0505
        0x7f0f0506
        0x7f0f0507
        0x7f0f0508
        0x7f0f0509
        0x7f0f050a
        0x7f0f050b
        0x7f0f050c
    .end array-data
.end method

.method private isAccentColorPreferenceEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1459
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_special_theme"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1460
    .local v0, "specialthemeMode":I
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 667
    const v0, 0x112001e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 679
    const v0, 0x112002a

    .line 678
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    .line 672
    const v2, 0x10e0020

    .line 671
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 672
    const/4 v3, -0x1

    .line 671
    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 673
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 674
    const-string/jumbo v2, "gesture.disable_camera_launch"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 673
    :cond_0
    return v1

    .line 671
    .end local v0    # "configSet":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "configSet":Z
    goto :goto_0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 654
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 657
    const v2, 0x104013f

    .line 656
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 654
    :cond_1
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 663
    const v0, 0x11200aa

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isVrDisplayModeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 683
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 684
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private killSelf()V
    .locals 2

    .prologue
    .line 1539
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1540
    .local v0, "home":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1541
    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    .line 1542
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 1544
    return-void
.end method

.method private onSaveNightModeSeekBarVale(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1356
    const-string/jumbo v1, "oem_nightmode_progress_status"

    .line 1354
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1357
    return-void
.end method

.method private resetDefinedScreenColorModeValue()V
    .locals 5

    .prologue
    .line 1445
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_screen_better_value"

    .line 1446
    const/16 v3, 0x2b

    const/4 v4, -0x2

    .line 1444
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1447
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    if-eqz v1, :cond_0

    .line 1448
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 1449
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/OneplusColorManager;->saveScreenBetter()V

    .line 1451
    :cond_0
    return-void
.end method

.method private saveColorInfo(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1417
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1418
    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    add-int/lit8 v0, p1, -0x7

    .line 1419
    .local v0, "tempIndex":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_black_mode_accent_color"

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1421
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_black_mode_accent_color_index"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1427
    .end local v0    # "tempIndex":I
    :goto_1
    return-void

    .line 1418
    :cond_0
    move v0, p1

    .restart local v0    # "tempIndex":I
    goto :goto_0

    .line 1423
    .end local v0    # "tempIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_white_mode_accent_color"

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1425
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_white_mode_accent_color_index"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private sendTheme(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "fromThemeSwitch"    # Z

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1434
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, p1}, Lcom/android/settings/DisplaySettings;->saveColorInfo(I)V

    .line 1436
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.OEM_COLOR_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.oneplus.skin"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1438
    const-string/jumbo v2, "oem_color_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1439
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1440
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1441
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 1639
    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    .line 1640
    const/4 p1, 0x2

    .line 1643
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    :goto_0
    return-void

    .line 1644
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 1650
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1653
    :goto_0
    return-void

    .line 1651
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateAutoSwitchDrivenSlider()V
    .locals 5

    .prologue
    .line 1679
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mNewController:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1680
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateBrightnessAutomatically()V

    .line 1688
    :goto_0
    return-void

    .line 1682
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1683
    .local v0, "value":I
    const-string/jumbo v1, "display"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value from database is when closing switch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1685
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBrightnessAutomatically()V
    .locals 5

    .prologue
    .line 1756
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_auto_brightness_adj"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1762
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1763
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    const/high16 v3, 0x45000000    # 2048.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 1764
    return-void
.end method

.method private updateFontSizeSummary()V
    .locals 9

    .prologue
    .line 964
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 965
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 966
    const-string/jumbo v7, "font_scale"

    const/high16 v8, 0x3f800000    # 1.0f

    .line 965
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 967
    .local v1, "currentScale":F
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 968
    .local v4, "res":Landroid/content/res/Resources;
    const v6, 0x7f0b0049

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 969
    .local v2, "entries":[Ljava/lang/String;
    const v6, 0x7f0b004a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 970
    .local v5, "strEntryValues":[Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v3

    .line 972
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 973
    return-void
.end method

.method private updateLockScreenRotation()V
    .locals 3

    .prologue
    .line 1555
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1556
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1559
    :cond_0
    return-void
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1660
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMode mAutomaticAvailable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/DisplaySettings;->mAutomaticAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1662
    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 1664
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    .line 1665
    const/4 v4, -0x2

    .line 1664
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1666
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    .line 1667
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1674
    .end local v0    # "automatic":I
    :cond_1
    return-void
.end method

.method private updateNotifyLightStatus(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1569
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_acc_breath_light"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1570
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_light_pulse"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1571
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "battery_led_low_power"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1572
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "battery_led_charging"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1573
    return-void
.end method

.method private updateScreenColorModePreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 938
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    .line 937
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 939
    .local v0, "value":I
    if-ne v4, v0, :cond_1

    .line 940
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 942
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 943
    :cond_2
    const/4 v1, 0x3

    if-ne v1, v0, :cond_3

    .line 944
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 945
    :cond_3
    const/4 v1, 0x4

    if-ne v1, v0, :cond_4

    .line 946
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f05c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 947
    :cond_4
    const/4 v1, 0x5

    if-ne v1, v0, :cond_5

    .line 948
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f045a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 949
    :cond_5
    const/4 v1, 0x6

    if-ne v1, v0, :cond_0

    .line 950
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f046d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    .line 959
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 958
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 961
    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1696
    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mNewController:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1699
    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_0

    .line 1700
    iput-boolean v6, p0, Lcom/android/settings/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 1701
    return-void

    .line 1704
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateBrightnessAutomatically()V

    .line 1746
    :goto_0
    return-void

    .line 1707
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    iget v4, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:I

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1709
    .local v1, "value":I
    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    if-eqz v2, :cond_2

    .line 1710
    iput-boolean v6, p0, Lcom/android/settings/DisplaySettings;->isAutoSwitchClickedDrivenBrightnessChange:Z

    .line 1711
    return-void

    .line 1718
    :cond_2
    const/4 v0, 0x0

    .line 1719
    .local v0, "isOK":Z
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mPreValue:I

    if-nez v2, :cond_3

    .line 1720
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings/DisplaySettings;->mPreValue:I

    .line 1721
    const/4 v0, 0x1

    .line 1724
    :cond_3
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mCurentValue:I

    if-nez v2, :cond_4

    .line 1725
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings/DisplaySettings;->mCurentValue:I

    .line 1726
    const/4 v0, 0x1

    .line 1729
    :cond_4
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/android/settings/DisplaySettings;->mCurentValue:I

    .line 1731
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mPreValue:I

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mCurentValue:I

    if-ne v2, v3, :cond_5

    if-nez v0, :cond_5

    .line 1732
    const-string/jumbo v2, "display"

    const-string/jumbo v3, "mPreValue==mCurentValue ! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return-void

    .line 1736
    :cond_5
    const-string/jumbo v2, "display"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSlider (mMaximumBacklight - mMinimumBacklight) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:I

    iget v4, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setMax(I)V

    .line 1741
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(Ljava/lang/String;)V

    .line 1743
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mCurentValue:I

    iput v2, p0, Lcom/android/settings/DisplaySettings;->mPreValue:I

    goto :goto_0
.end method

.method private updateState()V
    .locals 13

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateFontSizeSummary()V

    .line 799
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 802
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "oem_acc_breath_light"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    .line 803
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_0

    .line 804
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    iget v9, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_10

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v10, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 809
    :cond_0
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_1

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 811
    const-string/jumbo v10, "screen_brightness_mode"

    const/4 v11, 0x0

    .line 810
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 812
    .local v2, "brightnessMode":I
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_11

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 815
    .end local v2    # "brightnessMode":I
    :cond_1
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_2

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 817
    const-string/jumbo v10, "show_network_name_mode"

    const/4 v11, 0x1

    .line 816
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 818
    .local v7, "showNetworkNameMode":I
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v7, :cond_12

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 822
    .end local v7    # "showNetworkNameMode":I
    :cond_2
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_3

    .line 823
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "double_tap_to_wake"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 824
    .local v8, "value":I
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_13

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 828
    .end local v8    # "value":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_4

    .line 829
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "camera_gesture_disabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 830
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v8, :cond_14

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 834
    .end local v8    # "value":I
    :cond_4
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_5

    .line 836
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "camera_double_tap_power_gesture_disabled"

    const/4 v11, 0x0

    .line 835
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 837
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v8, :cond_15

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 840
    .end local v8    # "value":I
    :cond_5
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    if-eqz v9, :cond_7

    .line 842
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 843
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->getColorIndex()I

    move-result v3

    .line 844
    .local v3, "lastColor":I
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 845
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->isAccentColorPreferenceEnabled()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mColors:[Ljava/lang/String;

    if-eqz v9, :cond_16

    .line 846
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 850
    :goto_6
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->isAccentColorPreferenceEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setEnabled(Z)V

    .line 851
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v9, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 852
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "oem.op_dark_mode.support"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 853
    :cond_6
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 859
    .end local v3    # "lastColor":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "night_mode_enabled"

    const/4 v11, 0x0

    .line 858
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_17

    const/4 v5, 0x1

    .line 860
    .local v5, "opNightModeEnabled":Z
    :goto_7
    const-string/jumbo v9, "TAG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resetNightAndSaturationMode--opNightModeEnabled:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_8

    .line 862
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 864
    :cond_8
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_9

    .line 865
    if-eqz v5, :cond_18

    .line 866
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 867
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 868
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f02b7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 876
    :cond_9
    :goto_8
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_a

    .line 877
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v9, :cond_a

    .line 878
    if-eqz v5, :cond_19

    .line 879
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 880
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 881
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f02b7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 888
    :cond_a
    :goto_9
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_b

    .line 889
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 891
    :cond_b
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v9, :cond_c

    .line 892
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 895
    :cond_c
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_d

    .line 896
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "night_display_activated"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v0, 0x1

    .line 897
    .local v0, "OPNightModeState":Z
    :goto_a
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "reading_mode_status"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_1b

    const/4 v1, 0x1

    .line 898
    .local v1, "OPReadingModeState":Z
    :goto_b
    if-eqz v0, :cond_1c

    .line 899
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 900
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f02b7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 913
    .end local v0    # "OPNightModeState":Z
    .end local v1    # "OPReadingModeState":Z
    :cond_d
    :goto_c
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v9, :cond_e

    .line 914
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "video_enhancer"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 915
    .restart local v8    # "value":I
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_1e

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 919
    .end local v8    # "value":I
    :cond_e
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 920
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mNotchModeAppPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_f

    .line 921
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "op_camera_notch_ignore"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 922
    .local v4, "notchMode":I
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNotchModeAppPreference:Landroid/support/v7/preference/Preference;

    if-nez v4, :cond_1f

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {v10, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 926
    .end local v4    # "notchMode":I
    :cond_f
    return-void

    .line 804
    .end local v5    # "opNightModeEnabled":Z
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 812
    .restart local v2    # "brightnessMode":I
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 818
    .end local v2    # "brightnessMode":I
    .restart local v7    # "showNetworkNameMode":I
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 824
    .end local v7    # "showNetworkNameMode":I
    .restart local v8    # "value":I
    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 830
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 837
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 848
    .end local v8    # "value":I
    .restart local v3    # "lastColor":I
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_16
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0362

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 858
    .end local v3    # "lastColor":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_17
    const/4 v5, 0x0

    .restart local v5    # "opNightModeEnabled":Z
    goto/16 :goto_7

    .line 870
    :cond_18
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 871
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenColorModePreference()V

    .line 872
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 883
    :cond_19
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 884
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9

    .line 896
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "OPNightModeState":Z
    goto/16 :goto_a

    .line 897
    :cond_1b
    const/4 v1, 0x0

    .restart local v1    # "OPReadingModeState":Z
    goto/16 :goto_b

    .line 902
    :cond_1c
    if-eqz v1, :cond_1d

    sget-boolean v9, Lcom/android/settings/DisplaySettings;->isSupportReadingMode:Z

    if-eqz v9, :cond_1d

    .line 903
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 904
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f03ea

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 906
    :cond_1d
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenColorModePreference()V

    .line 907
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 915
    .end local v0    # "OPNightModeState":Z
    .end local v1    # "OPReadingModeState":Z
    .restart local v8    # "value":I
    :cond_1e
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 922
    .end local v8    # "value":I
    .restart local v4    # "notchMode":I
    :cond_1f
    const/4 v9, 0x0

    goto/16 :goto_e
.end method

.method private updateThemeModePreferenceDescription(I)V
    .locals 5
    .param p1, "themeMode"    # I

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_special_theme"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1374
    .local v1, "specialthemeMode":I
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1375
    .local v0, "entries":[Ljava/lang/CharSequence;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1376
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 1379
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    const/4 v11, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isAdded()Z

    move-result v8

    if-nez v8, :cond_0

    .line 692
    return-void

    .line 695
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    .line 697
    .local v3, "preference":Lcom/android/settings/TimeoutListPreference;
    invoke-virtual {v3}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 698
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f10fb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 718
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 719
    return-void

    .line 699
    .end local v4    # "summary":Ljava/lang/String;
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_2

    .line 701
    const-string/jumbo v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 703
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 704
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 705
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    array-length v8, v1

    if-nez v8, :cond_4

    .line 706
    :cond_3
    const-string/jumbo v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 708
    .end local v4    # "summary":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    .line 709
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_6

    .line 710
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 711
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_5

    .line 712
    move v0, v2

    .line 709
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 715
    .end local v6    # "timeout":J
    :cond_6
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aget-object v10, v1, v0

    aput-object v10, v9, v11

    const v10, 0x7f0f0937

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private valueToBrightness(I)I
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1273
    return p1
.end method


# virtual methods
.method brightnessToValue(I)I
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 1752
    return p1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1769
    const v0, 0x7f0f0eaa

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 312
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 314
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 316
    .local v8, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    .line 317
    new-instance v12, Lcom/android/settings/DisplaySettings$DefaultHandler;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/DisplaySettings$DefaultHandler;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mDefaultHandler:Lcom/android/settings/DisplaySettings$DefaultHandler;

    .line 318
    new-instance v12, Lcom/oneplus/settings/OneplusColorManager;

    sget-object v13, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v12, v13}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 319
    const v12, 0x7f080031

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 320
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 321
    .local v7, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->initAccentColors(Landroid/content/res/Resources;)V

    .line 322
    const-string/jumbo v12, "screen_brightness"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    .line 323
    const-string/jumbo v12, "display_system"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    .line 325
    const-string/jumbo v12, "screensaver"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    .line 326
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    if-eqz v12, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 328
    const v13, 0x112004b

    .line 327
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 332
    :cond_0
    const-string/jumbo v12, "screen_timeout"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/settings/TimeoutListPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    .line 334
    const-string/jumbo v12, "font_size"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/support/v7/preference/Preference;

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 337
    const-string/jumbo v12, "auto_brightness"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 338
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    :goto_0
    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    .line 355
    const-string/jumbo v12, "network_operator_display"

    .line 354
    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v13, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 358
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 359
    const-string/jumbo v12, "doze"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v7/preference/Preference;

    .line 360
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportAlwaysOnDisplay()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 361
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v7/preference/Preference;

    const v13, 0x7f0f04cb

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 363
    :cond_1
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 432
    :goto_1
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 434
    const-string/jumbo v12, "vr_display_pref"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/DropDownPreference;

    .line 435
    .local v11, "vrDisplayPref":Landroid/support/v7/preference/DropDownPreference;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/CharSequence;

    .line 436
    const v13, 0x7f0f0fa1

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 437
    const v13, 0x7f0f0fa2

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 435
    invoke-virtual {v11, v12}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 439
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/CharSequence;

    const-string/jumbo v13, "0"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string/jumbo v13, "1"

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 441
    move-object v1, v0

    .line 442
    .local v1, "c":Landroid/content/Context;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 443
    .local v3, "currentUser":I
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 444
    const-string/jumbo v13, "vr_display_mode"

    .line 445
    const/4 v14, 0x0

    .line 443
    invoke-static {v12, v13, v14, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 447
    .local v2, "current":I
    invoke-virtual {v11, v2}, Landroid/support/v7/preference/DropDownPreference;->setValueIndex(I)V

    .line 448
    new-instance v12, Lcom/android/settings/DisplaySettings$6;

    invoke-direct {v12, p0, v0}, Lcom/android/settings/DisplaySettings$6;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v11, v12}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 476
    .end local v1    # "c":Landroid/content/Context;
    .end local v2    # "current":I
    .end local v3    # "currentUser":I
    .end local v11    # "vrDisplayPref":Landroid/support/v7/preference/DropDownPreference;
    :goto_2
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    .line 477
    const-string/jumbo v12, "dark_mode"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    .line 478
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "oem_black_mode"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/settings/DisplaySettings;->mDarkModeEnable:I

    .line 480
    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    iget v12, p0, Lcom/android/settings/DisplaySettings;->mDarkModeEnable:I

    if-nez v12, :cond_16

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v13, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 481
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 484
    const-string/jumbo v12, "op_theme_mode"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/ListPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    .line 485
    sget-object v12, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b00aa

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b00ae

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, "entriesvalue":[Ljava/lang/CharSequence;
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, v4}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 489
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 496
    .end local v4    # "entries":[Ljava/lang/CharSequence;
    .end local v5    # "entriesvalue":[Ljava/lang/CharSequence;
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "oem_black_mode"

    iget v14, p0, Lcom/android/settings/DisplaySettings;->mDefaultThemeMode:I

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 497
    .local v10, "themeMode":I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "oem_special_theme"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 498
    .local v9, "specialthemeMode":I
    const/4 v12, 0x1

    if-ne v10, v12, :cond_18

    const/4 v12, 0x1

    if-ne v9, v12, :cond_18

    .line 499
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 504
    :goto_5
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 505
    invoke-direct {p0, v10}, Lcom/android/settings/DisplaySettings;->getThemeModeValue(I)I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/settings/DisplaySettings;->updateThemeModePreferenceDescription(I)V

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "oem.op_dark_mode.support"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 507
    :cond_3
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 511
    :cond_4
    const-string/jumbo v12, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 513
    const-string/jumbo v12, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 516
    :cond_5
    const-string/jumbo v12, "back_topic_theme"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 517
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 518
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v12, :cond_6

    .line 520
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 526
    :cond_6
    const-string/jumbo v12, "msm_screen_better_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    .line 527
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "oem_acc_breath_light"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    .line 529
    const-string/jumbo v12, "notify_light_enable"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 530
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 531
    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    iget v12, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    if-nez v12, :cond_19

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v13, v12}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 533
    const-string/jumbo v12, "lockguard_wallpaper_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

    .line 534
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 536
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mLockWallPaperPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 539
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v14, "camera_gesture"

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 540
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v14, "tap_to_wake"

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 542
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v14, "auto_rotate"

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "power"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 545
    .local v6, "pm":Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v12

    iput v12, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    .line 546
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v12

    iput v12, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:I

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x112001e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/settings/DisplaySettings;->mAutomaticAvailable:Z

    .line 548
    const-string/jumbo v12, "power"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mPower:Landroid/os/IPowerManager;

    .line 550
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 551
    const-string/jumbo v13, "oem.autobrightctl.animation.support"

    .line 550
    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/settings/DisplaySettings;->mNewController:Z

    .line 553
    const-string/jumbo v12, "manual_brightness_displays"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    .line 554
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v12, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setCallback(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V

    .line 555
    new-instance v12, Lcom/android/settings/DisplaySettings$BrightnessObserver;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v12, p0, v13}, Lcom/android/settings/DisplaySettings$BrightnessObserver;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

    .line 556
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

    invoke-virtual {v12}, Lcom/android/settings/DisplaySettings$BrightnessObserver;->startObserving()V

    .line 558
    const-string/jumbo v12, "theme_accent_color"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 559
    const-string/jumbo v12, "led_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 560
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 561
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    iget-object v14, p0, Lcom/android/settings/DisplaySettings;->mWhiteColorStringIds:[I

    invoke-virtual {v12, v13, v14}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;[I)V

    .line 562
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v13, 0x7f0c0362

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 570
    :goto_7
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v13, 0x7f0f021f

    invoke-virtual {v12, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 571
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 572
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mMsmScreenPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 573
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 575
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 577
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 579
    :cond_7
    const-string/jumbo v12, "night_mode_enabled_op"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 580
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v12, :cond_8

    .line 581
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 583
    :cond_8
    const-string/jumbo v12, "night_mode_level_op"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    .line 584
    const-string/jumbo v12, "screen_color_mode"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    .line 585
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v12, :cond_9

    .line 586
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v12, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;)V

    .line 591
    :cond_9
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v12, :cond_a

    .line 592
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v13, "wallpaper"

    invoke-virtual {p0, v13}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 594
    :cond_a
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "oem.read_mode.support"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/settings/DisplaySettings;->isSupportReadingMode:Z

    .line 595
    const-string/jumbo v12, "oneplus_reading_mode"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mReadingModePreference:Landroid/support/v7/preference/Preference;

    .line 596
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mReadingModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v12, :cond_b

    sget-boolean v12, Lcom/android/settings/DisplaySettings;->isSupportReadingMode:Z

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_b

    .line 597
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mReadingModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 602
    :cond_b
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v12, :cond_e

    .line 603
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v12, :cond_c

    .line 604
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 606
    :cond_c
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v12, :cond_d

    .line 607
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 609
    :cond_d
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v12, :cond_e

    .line 610
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 614
    :cond_e
    const-string/jumbo v12, "video_enhancer"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SwitchPreference;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 615
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v12, :cond_f

    .line 616
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 618
    :cond_f
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportVideoEnhancer()Z

    move-result v12

    if-nez v12, :cond_10

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v12, :cond_10

    .line 619
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 622
    :cond_10
    const-string/jumbo v12, "display_size_adaption"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mDisplaySizeAdaptionPreference:Landroid/support/v7/preference/Preference;

    .line 623
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mDisplaySizeAdaptionPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 626
    const-string/jumbo v12, "oneplus_notch_area"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotchAreaCategary:Landroid/support/v7/preference/PreferenceCategory;

    .line 627
    const-string/jumbo v12, "oneplus_notch_display_guide"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotchModePreference:Landroid/support/v7/preference/Preference;

    .line 628
    const-string/jumbo v12, "oneplus_notch_fullscreen_app"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotchModeAppPreference:Landroid/support/v7/preference/Preference;

    .line 629
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotchModeAppPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 631
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v12

    if-nez v12, :cond_1c

    .line 632
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mNotchAreaCategary:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    const-string/jumbo v13, "oneplus_notch_catagary_divider_line"

    invoke-virtual {p0, v13}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 634
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenDisplayAdaption()Z

    move-result v12

    if-nez v12, :cond_11

    .line 635
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mDisplaySizeAdaptionPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 641
    :cond_11
    :goto_8
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotchModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v12, :cond_12

    .line 642
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mNotchModePreference:Landroid/support/v7/preference/Preference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 646
    :cond_12
    return-void

    .line 340
    .end local v6    # "pm":Landroid/os/PowerManager;
    .end local v9    # "specialthemeMode":I
    .end local v10    # "themeMode":I
    :cond_13
    const-string/jumbo v12, "auto_brightness"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_14
    const-string/jumbo v12, "doze"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 463
    :cond_15
    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v12, "vr_display_pref"

    invoke-virtual {p0, v12}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v13, v12}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    .line 480
    :cond_16
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 490
    :cond_17
    sget-object v12, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b00ab

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 492
    .restart local v4    # "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b00ad

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 493
    .restart local v5    # "entriesvalue":[Ljava/lang/CharSequence;
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, v4}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 494
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v12, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 501
    .end local v4    # "entries":[Ljava/lang/CharSequence;
    .end local v5    # "entriesvalue":[Ljava/lang/CharSequence;
    .restart local v9    # "specialthemeMode":I
    .restart local v10    # "themeMode":I
    :cond_18
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mThemeModePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 531
    :cond_19
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 563
    .restart local v6    # "pm":Landroid/os/PowerManager;
    :cond_1a
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 564
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iget-object v14, p0, Lcom/android/settings/DisplaySettings;->mBlackColorStringIds:[I

    invoke-virtual {v12, v13, v14}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;[I)V

    .line 565
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v13, 0x7f0c036a

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 567
    :cond_1b
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const v13, 0x7f0c0362

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 638
    :cond_1c
    iget-object v12, p0, Lcom/android/settings/DisplaySettings;->mSystemRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v13, p0, Lcom/android/settings/DisplaySettings;->mDisplaySizeAdaptionPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_8
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 790
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 791
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/settings/DisplaySettings$BrightnessObserver;->stopObserving()V

    .line 794
    :cond_0
    return-void
.end method

.method public onOPBrightValueChanged(II)V
    .locals 5
    .param p1, "bright"    # I
    .param p2, "value"    # I

    .prologue
    .line 1223
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mExternalChange:Z

    .line 1228
    move v1, p2

    .line 1230
    .local v1, "mValue":I
    iget v3, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    add-int v2, p2, v3

    .line 1232
    .local v2, "val":I
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mNewController:Z

    if-eqz v3, :cond_0

    .line 1233
    int-to-float v3, v2

    invoke-direct {p0, v3}, Lcom/android/settings/DisplaySettings;->setBrightnessAdj(F)V

    .line 1234
    invoke-direct {p0, v2}, Lcom/android/settings/DisplaySettings;->setBrightness(I)V

    .line 1235
    new-instance v3, Lcom/android/settings/DisplaySettings$8;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/DisplaySettings$8;-><init>(Lcom/android/settings/DisplaySettings;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1242
    new-instance v3, Lcom/android/settings/DisplaySettings$9;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/DisplaySettings$9;-><init>(Lcom/android/settings/DisplaySettings;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1267
    :goto_0
    return-void

    .line 1249
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    if-nez v3, :cond_1

    .line 1250
    new-instance v3, Lcom/android/settings/DisplaySettings$10;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/DisplaySettings$10;-><init>(Lcom/android/settings/DisplaySettings;I)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1258
    :cond_1
    int-to-float v3, p2

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v3, v4

    .line 1259
    .local v0, "adj":F
    new-instance v3, Lcom/android/settings/DisplaySettings$11;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/DisplaySettings$11;-><init>(Lcom/android/settings/DisplaySettings;F)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onOPBrightValueStartTrackingTouch(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1203
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mNewController:Z

    if-eqz v1, :cond_0

    .line 1204
    move v0, p1

    .line 1205
    .local v0, "val":I
    int-to-float v1, p1

    invoke-direct {p0, v1}, Lcom/android/settings/DisplaySettings;->setBrightnessAdj(F)V

    .line 1206
    invoke-direct {p0, p1}, Lcom/android/settings/DisplaySettings;->setBrightness(I)V

    .line 1207
    new-instance v1, Lcom/android/settings/DisplaySettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/DisplaySettings$7;-><init>(Lcom/android/settings/DisplaySettings;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1220
    .end local v0    # "val":I
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 768
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 770
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccentColorPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->onDismiss(Landroid/content/DialogInterface;)V

    .line 773
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 777
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 18
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 977
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 978
    .local v7, "key":Ljava/lang/String;
    const-string/jumbo v14, "screen_timeout"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 980
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 981
    .local v12, "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "screen_off_timeout"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 982
    int-to-long v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    .end local v12    # "value":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1

    move-object/from16 v14, p2

    .line 988
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 989
    .local v2, "auto":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "screen_brightness_mode"

    .line 990
    if-eqz v2, :cond_8

    const/4 v14, 0x1

    .line 989
    :goto_1
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 992
    .end local v2    # "auto":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_2

    move-object/from16 v14, p2

    .line 993
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 994
    .local v6, "isShow":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "show_network_name_mode"

    .line 995
    if-eqz v6, :cond_9

    const/4 v14, 0x1

    .line 994
    :goto_2
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 998
    .end local v6    # "isShow":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_3

    move-object/from16 v14, p2

    .line 999
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1000
    .local v13, "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "double_tap_to_wake"

    if-eqz v13, :cond_a

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1002
    .end local v13    # "value":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_4

    move-object/from16 v14, p2

    .line 1003
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1004
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "camera_gesture_disabled"

    .line 1005
    if-eqz v13, :cond_b

    const/4 v14, 0x0

    .line 1004
    :goto_4
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1007
    .end local v13    # "value":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_5

    move-object/from16 v14, p2

    .line 1008
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1009
    .restart local v13    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "camera_double_tap_power_gesture_disabled"

    .line 1010
    if-eqz v13, :cond_c

    const/4 v14, 0x0

    .line 1009
    :goto_5
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1012
    .end local v13    # "value":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 1014
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1016
    .restart local v12    # "value":I
    const-string/jumbo v14, "uimode"

    .line 1015
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/UiModeManager;

    .line 1017
    .local v11, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v11, v12}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1023
    .end local v11    # "uiManager":Landroid/app/UiModeManager;
    .end local v12    # "value":I
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mDarkModePreferce:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_d

    .line 1024
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1025
    .restart local v13    # "value":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings/DisplaySettings$DarkModeRunnable;

    if-nez v14, :cond_7

    .line 1026
    new-instance v14, Lcom/android/settings/DisplaySettings$DarkModeRunnable;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/DisplaySettings$DarkModeRunnable;-><init>(Lcom/android/settings/DisplaySettings;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings/DisplaySettings$DarkModeRunnable;

    .line 1028
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings/DisplaySettings$DarkModeRunnable;

    invoke-virtual {v14, v13}, Lcom/android/settings/DisplaySettings$DarkModeRunnable;->setValue(Z)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings/DisplaySettings$DarkModeRunnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/DisplaySettings;->mDarkModeRunnable:Lcom/android/settings/DisplaySettings$DarkModeRunnable;

    const-wide/16 v16, 0x12c

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1031
    const/4 v14, 0x1

    return v14

    .line 983
    .end local v13    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 984
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DisplaySettings"

    const-string/jumbo v15, "could not persist screen timeout setting"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 990
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "auto":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 995
    .end local v2    # "auto":Z
    .restart local v6    # "isShow":Z
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1000
    .end local v6    # "isShow":Z
    .restart local v13    # "value":Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1005
    :cond_b
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 1010
    :cond_c
    const/4 v14, 0x1

    goto :goto_5

    .line 1018
    .end local v13    # "value":Z
    :catch_1
    move-exception v3

    .line 1019
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DisplaySettings"

    const-string/jumbo v15, "could not persist night mode setting"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1033
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_10

    .line 1034
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1035
    .restart local v13    # "value":Z
    if-eqz v13, :cond_f

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/DisplaySettings;->updateNotifyLightStatus(I)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_e

    .line 1037
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v14, v13}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1039
    :cond_e
    const/4 v14, 0x1

    return v14

    .line 1035
    :cond_f
    const/4 v14, 0x0

    goto :goto_7

    .line 1041
    .end local v13    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_10
    const-string/jumbo v14, "theme_accent_color"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    move-object/from16 v10, p2

    .line 1042
    check-cast v10, Ljava/lang/String;

    .line 1043
    .local v10, "theme":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 1044
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/DisplaySettings;->sendTheme(IZ)V

    .line 1068
    .end local v10    # "theme":Ljava/lang/String;
    :cond_11
    :goto_8
    const-string/jumbo v14, "op_theme_mode"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1070
    :try_start_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1072
    .restart local v12    # "value":I
    const/4 v14, 0x3

    if-eq v12, v14, :cond_1c

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_black_mode"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_black_mode"

    invoke-static {v14, v15, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_special_theme"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1076
    const-string/jumbo v14, "op_theme_mode"

    invoke-static {v14, v12}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mDefaultHandler:Lcom/android/settings/DisplaySettings$DefaultHandler;

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Lcom/android/settings/DisplaySettings$DefaultHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1078
    .local v8, "msg":Landroid/os/Message;
    iput v12, v8, Landroid/os/Message;->arg1:I

    .line 1079
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mDefaultHandler:Lcom/android/settings/DisplaySettings$DefaultHandler;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v8, v0, v1}, Lcom/android/settings/DisplaySettings$DefaultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1080
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/DisplaySettings;->getThemeModeValue(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/DisplaySettings;->updateThemeModePreferenceDescription(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1096
    .end local v8    # "msg":Landroid/os/Message;
    .end local v12    # "value":I
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_15

    move-object/from16 v14, p2

    .line 1097
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1099
    .local v4, "enabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "night_mode_enabled"

    if-eqz v4, :cond_1d

    const/4 v14, 0x1

    .line 1098
    :goto_a
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1100
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1101
    const-string/jumbo v15, "oem_nightmode_progress_status"

    const/16 v16, 0x190

    .line 1100
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1102
    .local v9, "progress":I
    if-eqz v4, :cond_23

    .line 1103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_13

    .line 1104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0f02b7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1108
    :cond_13
    if-ltz v9, :cond_1e

    const/16 v14, 0x64

    if-ge v9, v14, :cond_1e

    .line 1109
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    .line 1121
    :cond_14
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1142
    .end local v4    # "enabled":Z
    .end local v9    # "progress":I
    :cond_15
    :goto_c
    const-string/jumbo v14, "video_enhancer"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1143
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1144
    .restart local v4    # "enabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "video_enhancer"

    if-eqz v4, :cond_24

    const/4 v14, 0x1

    :goto_d
    const/16 v17, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v15, v0, v14, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1145
    const-string/jumbo v15, "persist.sys.oem.vendor.media.vpp.enable"

    if-eqz v4, :cond_25

    const-string/jumbo v14, "1"

    :goto_e
    invoke-static {v15, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .end local v4    # "enabled":Z
    :cond_16
    const/4 v14, 0x1

    return v14

    .line 1046
    .restart local v10    # "theme":Ljava/lang/String;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 1047
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mColors:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_11

    .line 1048
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 1049
    if-nez v5, :cond_18

    .line 1050
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_8

    .line 1052
    :cond_18
    add-int/lit8 v14, v5, 0x7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_8

    .line 1047
    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 1057
    .end local v5    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1058
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mColors:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_11

    .line 1059
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mColors:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 1060
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/android/settings/DisplaySettings;->sendTheme(IZ)V

    goto/16 :goto_8

    .line 1058
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1082
    .end local v5    # "i":I
    .end local v10    # "theme":Ljava/lang/String;
    .restart local v12    # "value":I
    :cond_1c
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_black_mode"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_black_mode"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_special_theme"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1085
    const-string/jumbo v14, "op_theme_mode"

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mDefaultHandler:Lcom/android/settings/DisplaySettings$DefaultHandler;

    const/16 v15, 0x65

    invoke-virtual {v14, v15}, Lcom/android/settings/DisplaySettings$DefaultHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1087
    .restart local v8    # "msg":Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v8, Landroid/os/Message;->arg1:I

    .line 1088
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mDefaultHandler:Lcom/android/settings/DisplaySettings$DefaultHandler;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v14, v8, v0, v1}, Lcom/android/settings/DisplaySettings$DefaultHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1089
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/DisplaySettings;->getThemeModeValue(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/DisplaySettings;->updateThemeModePreferenceDescription(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_9

    .line 1092
    .end local v8    # "msg":Landroid/os/Message;
    .end local v12    # "value":I
    :catch_2
    move-exception v3

    .line 1093
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v14, "DisplaySettings"

    const-string/jumbo v15, "could not persist screen timeout setting"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 1099
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "enabled":Z
    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 1110
    .restart local v9    # "progress":I
    :cond_1e
    const/16 v14, 0x64

    if-lt v9, v14, :cond_1f

    const/16 v14, 0xc7

    if-gt v9, v14, :cond_1f

    .line 1111
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_b

    .line 1112
    :cond_1f
    const/16 v14, 0xc8

    if-lt v9, v14, :cond_20

    const/16 v14, 0x12b

    if-gt v9, v14, :cond_20

    .line 1113
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_b

    .line 1114
    :cond_20
    const/16 v14, 0x12c

    if-lt v9, v14, :cond_21

    const/16 v14, 0x18f

    if-gt v9, v14, :cond_21

    .line 1115
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_b

    .line 1116
    :cond_21
    const/16 v14, 0x190

    if-lt v9, v14, :cond_22

    const/16 v14, 0x1f3

    if-gt v9, v14, :cond_22

    .line 1117
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_b

    .line 1118
    :cond_22
    const/16 v14, 0x1f4

    if-lt v9, v14, :cond_14

    const/16 v14, 0x258

    if-gt v9, v14, :cond_14

    .line 1119
    const/4 v14, 0x6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    goto/16 :goto_b

    .line 1123
    :cond_23
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    if-eqz v14, :cond_15

    .line 1124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/DisplaySettings;->mNightModeLevelPreference:Lcom/oneplus/settings/ui/OPNightModeLevelPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 1125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mScreenColorModePreference:Landroid/support/v7/preference/Preference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1126
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateScreenColorModePreference()V

    goto/16 :goto_c

    .line 1144
    .end local v9    # "progress":I
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_24
    const/4 v14, 0x0

    goto/16 :goto_d

    .line 1145
    :cond_25
    const-string/jumbo v14, "0"

    goto/16 :goto_e
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v8, 0x1

    .line 1174
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "msm_screen_better_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1175
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1176
    .local v4, "intents":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.OPScreenBetterActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1178
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1179
    return v8

    .line 1180
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v4    # "intents":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "doze"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1181
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1182
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.oneplus.aod"

    const-string/jumbo v6, "com.oneplus.settings.SettingsActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1184
    return v8

    .line 1187
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "display_size_adaption"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "oneplus_notch_fullscreen_app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1188
    :cond_2
    const/4 v2, 0x0

    .line 1190
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.settings.action.DISPLAYSIZEADAPTION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    .local v3, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v5, "classname"

    .end local v2    # "intent":Landroid/content/Intent;
    const-class v6, Lcom/android/settings/Settings$DisplaySizeAdaptionAppListActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 1196
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return v8

    .line 1193
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1194
    .end local v2    # "intent":Landroid/content/Intent;
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No activity found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1199
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    const/4 v5, 0x0

    return v5

    .line 1193
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    move-object v2, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_0

    .line 1155
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->handleLockScreenRotationPreferenceClick()V

    .line 1157
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1302
    if-eqz p1, :cond_1

    .line 1304
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 1305
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v2, :cond_0

    .line 1306
    iput v2, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    .line 1307
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1340
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->onSaveNightModeSeekBarVale(I)V

    .line 1343
    :cond_1
    return-void

    .line 1309
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    .line 1310
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_3

    .line 1311
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v3, :cond_0

    .line 1312
    iput v3, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    .line 1313
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1315
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_4

    .line 1316
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_4

    .line 1317
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v4, :cond_0

    .line 1318
    iput v4, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    .line 1319
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1321
    :cond_4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_5

    .line 1322
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_5

    .line 1323
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v5, :cond_0

    .line 1324
    iput v5, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    .line 1325
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1327
    :cond_5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_6

    .line 1328
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x1f3

    if-gt v0, v1, :cond_6

    .line 1329
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    if-eq v0, v6, :cond_0

    .line 1330
    iput v6, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    .line 1331
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1333
    :cond_6
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 1334
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x258

    if-gt v0, v1, :cond_0

    .line 1335
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1336
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    .line 1337
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightModeHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeLevel:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 736
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 737
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 739
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 740
    const-string/jumbo v8, "screen_off_timeout"

    const-wide/16 v10, 0x7530

    .line 739
    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 741
    .local v2, "currentTimeout":J
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 742
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v7, p0}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 744
    const-string/jumbo v8, "device_policy"

    .line 743
    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 745
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 746
    invoke-static {v7}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 749
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 748
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v4

    .line 750
    .local v4, "maxTimeout":J
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v7, v4, v5, v0}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 752
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v4    # "maxTimeout":J
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 754
    const-string/jumbo v7, "wallpaper"

    const-string/jumbo v8, "no_set_wallpaper"

    invoke-direct {p0, v7, v8}, Lcom/android/settings/DisplaySettings;->disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLockScreenRotation()V

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v7, v8}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 761
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mBacktopThemePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "oem_acc_backgap_theme"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_2

    :goto_0
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 763
    return-void

    .line 761
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 723
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 727
    const-string/jumbo v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 728
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 725
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reading_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 730
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 729
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 732
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1347
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 781
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNightModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 785
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1351
    return-void
.end method

.method public saveBrightnessDataBase(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 1279
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mExternalChange:Z

    .line 1280
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mNewController:Z

    if-eqz v1, :cond_0

    .line 1281
    iget v1, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:I

    add-int v0, p1, v1

    .line 1282
    .local v0, "val":I
    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/settings/DisplaySettings;->setBrightnessAdj(F)V

    .line 1283
    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->setBrightness(I)V

    .line 1284
    new-instance v1, Lcom/android/settings/DisplaySettings$12;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/DisplaySettings$12;-><init>(Lcom/android/settings/DisplaySettings;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1297
    .end local v0    # "val":I
    :cond_0
    return-void
.end method
