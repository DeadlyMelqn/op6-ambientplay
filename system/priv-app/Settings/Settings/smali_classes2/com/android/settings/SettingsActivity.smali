.class public Lcom/android/settings/SettingsActivity;
.super Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsActivity$1;,
        Lcom/android/settings/SettingsActivity$2;,
        Lcom/android/settings/SettingsActivity$3;
    }
.end annotation


# static fields
.field private static final ACTION_TIMER_SWITCH:Ljava/lang/String; = "qualcomm.intent.action.TIMER_SWITCH"

.field private static final ACTIVATE_SEARCH:I = 0x0

.field private static final ACTIVATE_SEARCH_DELAY:I = 0x12c

.field public static final BACK_STACK_PREFS:Ljava/lang/String; = ":settings:prefs"

.field private static final EMPTY_QUERY:Ljava/lang/String; = ""

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final EXTRA_HIDE_DRAWER:Ljava/lang/String; = ":settings:hide_drawer"

.field public static final EXTRA_LAUNCH_ACTIVITY_ACTION:Ljava/lang/String; = ":settings:launch_activity_action"

.field protected static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field protected static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field protected static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":settings:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":settings:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_AS_SHORTCUT:Ljava/lang/String; = ":settings:show_fragment_as_shortcut"

.field public static final EXTRA_SHOW_FRAGMENT_AS_SUBSETTING:Ljava/lang/String; = ":settings:show_fragment_as_subsetting"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":settings:show_fragment_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE_RESID:Ljava/lang/String; = ":settings:show_fragment_title_resid"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE_RES_PACKAGE_NAME:Ljava/lang/String; = ":settings:show_fragment_title_res_package_name"

.field static final EXTRA_SHOW_MENU:Ljava/lang/String; = "show_drawer_menu"

.field public static final EXTRA_SOURCE_METRICS_CATEGORY:Ljava/lang/String; = ":settings:source_metrics"

.field private static final EXTRA_UI_OPTIONS:Ljava/lang/String; = "settings:ui_options"

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static final LOADER_ID_INDEXABLE_CONTENT_MONITOR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final LTE_4G_FRAGMENT:Ljava/lang/String; = "com.android.settings.Lte4GEnableSetting"

.field public static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field public static final META_DATA_KEY_LAUNCH_ACTIVITY_ACTION:Ljava/lang/String; = "com.android.settings.ACTIVITY_ACTION"

.field private static final MOBILENETWORK_FRAGMENT:Ljava/lang/String; = "com.android.settings.MobileNetworkMain"

.field private static final MSG_DATA_FORCE_REFRESH:Ljava/lang/String; = "msg_data_force_refresh"

.field private static final ONEPLUS_CLOUD_PACKAGE:Ljava/lang/String; = "com.oneplus.cloud"

.field private static final PROFILEMGR_MAIN_FRAGMENT:Ljava/lang/String; = "com.android.settings.ProfileMgrMain"

.field private static final REQUEST_SUGGESTION:I = 0x2a

.field private static final SAVE_KEY_CATEGORIES:Ljava/lang/String; = ":settings:categories"

.field private static final SAVE_KEY_HOME_ACTIVITIES_COUNT:Ljava/lang/String; = ":settings:home_activities_count"

.field private static final SAVE_KEY_SEARCH_MENU_EXPANDED:Ljava/lang/String; = ":settings:search_menu_expanded"

.field private static final SAVE_KEY_SEARCH_QUERY:Ljava/lang/String; = ":settings:search_query"

.field private static final SAVE_KEY_SHOW_HOME_AS_UP:Ljava/lang/String; = ":settings:show_home_as_up"

.field private static final SAVE_KEY_SHOW_SEARCH:Ljava/lang/String; = ":settings:show_search"

.field private static final SYSTEM_UPDATE:Ljava/lang/String; = "android.settings.SystemUpdateActivity"


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActivityAction:Ljava/lang/String;

.field private mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

.field private mCurrentSuggestion:Landroid/content/ComponentName;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mMainContentId:I

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

.field private final mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/SettingsActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/SettingsActivity;)Lcom/android/settings/search/DynamicIndexableContentMonitor;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/SettingsActivity;

    .prologue
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/SettingsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/SettingsActivity;

    .prologue
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/SettingsActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/SettingsActivity;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/SettingsActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/SettingsActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 377
    const/16 v0, 0x85

    new-array v0, v0, [Ljava/lang/String;

    .line 378
    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 379
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 381
    const-class v1, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 382
    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 383
    const-class v1, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 384
    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 385
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 386
    const-class v1, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 387
    const-class v1, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 388
    const-class v1, Lcom/android/settings/OtherDeviceFunctionsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 389
    const-class v1, Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 390
    const-class v1, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 391
    const-class v1, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 392
    const-class v1, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 393
    const-class v1, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 394
    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 395
    const-class v1, Lcom/android/settings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 396
    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 397
    const-class v1, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 398
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 399
    const-class v1, Lcom/android/settings/applications/NotificationApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 400
    const-class v1, Lcom/android/settings/applications/ManageAssist;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 401
    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 402
    const-class v1, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 403
    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 404
    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 405
    const-class v1, Lcom/android/settings/applications/UsageAccessDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 406
    const-class v1, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 407
    const-class v1, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 408
    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 409
    const-class v1, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 410
    const-class v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 411
    const-class v1, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 412
    const-class v1, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 413
    const-class v1, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 414
    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeForget;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 415
    const-class v1, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 416
    const-class v1, Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 417
    const-class v1, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 418
    const-class v1, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 419
    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 420
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 421
    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 422
    const-class v1, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 423
    const-class v1, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 424
    const-class v1, Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 425
    const-class v1, Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 426
    const-class v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 427
    const-class v1, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 428
    const-class v1, Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 429
    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 430
    const-class v1, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 431
    const-class v1, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 432
    const-class v1, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 433
    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 434
    const-class v1, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 435
    const-class v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 436
    const-class v1, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 437
    const-class v1, Lcom/android/settings/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 438
    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 439
    const-class v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 440
    const-class v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 441
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 442
    const-class v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 443
    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 444
    const-class v1, Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 445
    const-class v1, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 446
    const-class v1, Lcom/android/settings/ApnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 447
    const-class v1, Lcom/android/settings/ApnEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 448
    const-class v1, Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 449
    const-class v1, Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 451
    const-class v1, Lcom/oneplus/settings/notification/OPPreferenceSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 453
    const-class v1, Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 454
    const-class v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 455
    const-class v1, Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 456
    const-class v1, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 457
    const-class v1, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 458
    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 459
    const-class v1, Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 460
    const-class v1, Lcom/android/settings/applications/DrawOverlayDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 461
    const-class v1, Lcom/android/settings/applications/WriteSettingsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 462
    const-class v1, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 463
    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 464
    const-class v1, Lcom/android/settings/applications/VrListenerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 465
    const-class v1, Lcom/android/settings/applications/PictureInPictureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 466
    const-class v1, Lcom/android/settings/applications/PictureInPictureDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 467
    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 468
    const-class v1, Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 469
    const-class v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 470
    const-class v1, Lcom/android/settings/deviceinfo/ImeiInformation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 471
    const-class v1, Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 472
    const-class v1, Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 473
    const-class v1, Lcom/android/settings/TestingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 474
    const-class v1, Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 475
    const-class v1, Lcom/android/settings/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 477
    const-class v1, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 478
    const-class v1, Lcom/oneplus/settings/storage/OPStorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 479
    const-class v1, Lcom/oneplus/settings/OPApplicationsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 480
    const-class v1, Lcom/oneplus/settings/OPDeviceName;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 481
    const-class v1, Lcom/oneplus/settings/OPButtonsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 482
    const-class v1, Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 483
    const-class v1, Lcom/oneplus/settings/OPCredentialsManagementSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 484
    const-class v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 485
    const-class v1, Lcom/oneplus/settings/notification/OPRingPattern;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 486
    const-class v1, Lcom/oneplus/settings/notification/OPSilentMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 487
    const-class v1, Lcom/oneplus/settings/notification/OPVibrationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 488
    const-class v1, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 489
    const-class v1, Lcom/android/settings/datausage/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    .line 490
    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    .line 491
    const-class v1, Lcom/android/settings/Settings$OPRingModeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    .line 492
    const-class v1, Lcom/android/settings/Settings$OPSilentModeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    .line 493
    const-class v1, Lcom/android/settings/Settings$OPDeviceNameActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    .line 494
    const-class v1, Lcom/android/settings/Settings$OPVibrationModeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 495
    const-class v1, Lcom/android/settings/datausage/DataSaverSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    aput-object v1, v0, v2

    .line 496
    const-class v1, Lcom/oneplus/settings/better/OPNightMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x72

    aput-object v1, v0, v2

    .line 497
    const-class v1, Lcom/oneplus/settings/better/OPReadingMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 498
    const-class v1, Lcom/oneplus/settings/better/OPGamingMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    aput-object v1, v0, v2

    .line 499
    const-class v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    aput-object v1, v0, v2

    .line 500
    const-class v1, Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    aput-object v1, v0, v2

    .line 501
    const-class v1, Lcom/oneplus/settings/product/OPPreInstalledAppList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x77

    aput-object v1, v0, v2

    .line 502
    const-class v1, Lcom/oneplus/settings/product/OPProductInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x78

    aput-object v1, v0, v2

    .line 505
    const-class v1, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x79

    aput-object v1, v0, v2

    .line 506
    const-class v1, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    .line 508
    const-class v1, Lcom/oneplus/settings/OPDefaultHomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    .line 509
    const-class v1, Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    .line 510
    const-class v1, Lcom/oneplus/settings/better/OPAppLocker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    .line 512
    const-class v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    .line 515
    const-class v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    .line 518
    const-class v1, Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    aput-object v1, v0, v2

    .line 521
    const-class v1, Lcom/android/settings/enterprise/EnterprisePrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x81

    aput-object v1, v0, v2

    .line 523
    const-class v1, Lcom/android/settings/applications/ExternalSourcesDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x82

    aput-object v1, v0, v2

    .line 524
    const-class v1, Lcom/android/settings/webview/WebViewAppPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x83

    aput-object v1, v0, v2

    .line 525
    const-class v1, Lcom/oneplus/settings/notification/OPEarphoneMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x84

    aput-object v1, v0, v2

    .line 377
    sput-object v0, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 529
    new-array v0, v4, [Ljava/lang/String;

    .line 530
    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    .line 529
    sput-object v0, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    .line 218
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;-><init>()V

    .line 336
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    .line 338
    const-class v1, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 339
    const-class v1, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 340
    const-class v1, Lcom/android/settings/Settings$MobileNetworkMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 341
    const-class v1, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 342
    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 343
    const-class v1, Lcom/android/settings/Settings$RoamingSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 344
    const-class v1, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 345
    const-class v1, Lcom/android/settings/Settings$Lte4GEnableActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 346
    const-class v1, Lcom/android/settings/Settings$WirelessSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 348
    const-class v1, Lcom/android/settings/Settings$HomeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 349
    const-class v1, Lcom/android/settings/Settings$SoundSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 350
    const-class v1, Lcom/android/settings/Settings$DisplaySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 351
    const-class v1, Lcom/android/settings/Settings$StorageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 352
    const-class v1, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 353
    const-class v1, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 355
    const-class v1, Lcom/android/settings/Settings$ProfileMgrMainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 356
    const-class v1, Lcom/android/settings/Settings$LocationSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 357
    const-class v1, Lcom/android/settings/Settings$SecuritySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 358
    const-class v1, Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 359
    const-class v1, Lcom/android/settings/Settings$UserSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 360
    const-class v1, Lcom/android/settings/Settings$AccountSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 362
    const-class v1, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 363
    const-class v1, Lcom/android/settings/Settings$DeviceInfoSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 364
    const-class v1, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 365
    const-class v1, Lcom/android/settings/Settings$PrintSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 366
    const-class v1, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 367
    const-class v1, Lcom/android/settings/Settings$TimerSwitchSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 368
    const-class v1, Lcom/android/settings/Settings$SystemUpdateActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 369
    const-class v1, Lcom/android/settings/Settings$OtherDeviceFunctionsSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 370
    const-class v1, Lcom/android/settings/Settings$OPCloudServiceSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 371
    const-class v1, Lcom/android/settings/Settings$OPOthersSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 373
    const-class v1, Lcom/android/settings/Settings$EnterprisePrivacySettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 336
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 538
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 539
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 554
    new-instance v0, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    .line 566
    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;-><init>()V

    .line 565
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    .line 579
    const v0, 0x7f0a032b

    iput v0, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    .line 584
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 593
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 601
    new-instance v0, Lcom/android/settings/SettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 218
    return-void
.end method

.method private doUpdateTilesList()V
    .locals 22

    .prologue
    .line 1477
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1478
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    .line 1479
    .local v17, "um":Landroid/os/UserManager;
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v10

    .line 1481
    .local v10, "isAdmin":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1482
    .local v11, "packageName":Ljava/lang/String;
    new-instance v18, Landroid/content/ComponentName;

    const-class v19, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    const-string/jumbo v19, "android.hardware.wifi"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    .line 1482
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1485
    new-instance v18, Landroid/content/ComponentName;

    .line 1486
    const-class v19, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1485
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const-string/jumbo v19, "android.hardware.bluetooth"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    .line 1485
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1491
    new-instance v19, Landroid/content/ComponentName;

    .line 1492
    const-class v18, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1491
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x7f120022

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1494
    const-string/jumbo v18, "android.hardware.wifi"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 1491
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1497
    new-instance v19, Landroid/content/ComponentName;

    .line 1498
    const-class v18, Lcom/android/settings/Settings$MobileNetworkMainActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1497
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x7f120022

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1500
    const-string/jumbo v18, "android.hardware.telephony"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 1497
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1503
    new-instance v18, Landroid/content/ComponentName;

    .line 1504
    const-class v19, Lcom/android/settings/Settings$AccessibilitySettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1503
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120022

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    .line 1503
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1507
    new-instance v18, Landroid/content/ComponentName;

    .line 1508
    const-class v19, Lcom/android/settings/Settings$Lte4GEnableActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1507
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120021

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 1507
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1511
    new-instance v18, Landroid/content/ComponentName;

    .line 1512
    const-class v19, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1511
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v19

    .line 1511
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1515
    new-instance v18, Landroid/content/ComponentName;

    .line 1516
    const-class v19, Lcom/android/settings/Settings$RoamingSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1515
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f12001c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 1515
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1519
    new-instance v18, Landroid/content/ComponentName;

    .line 1520
    const-class v19, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1519
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v19

    .line 1519
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1523
    new-instance v18, Landroid/content/ComponentName;

    .line 1524
    const-class v19, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1523
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    move/from16 v19, v0

    .line 1523
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1527
    new-instance v19, Landroid/content/ComponentName;

    .line 1528
    const-class v18, Lcom/android/settings/Settings$UserSettingsActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1527
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1530
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    .line 1527
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1532
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 1534
    .local v3, "adapter":Landroid/nfc/NfcAdapter;
    new-instance v19, Landroid/content/ComponentName;

    .line 1535
    const-class v18, Lcom/android/settings/Settings$PaymentSettingsActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1534
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string/jumbo v18, "android.hardware.nfc"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1537
    const-string/jumbo v18, "android.hardware.nfc.hce"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 1536
    if-eqz v18, :cond_7

    .line 1538
    if-eqz v3, :cond_6

    const/16 v18, 0x1

    .line 1534
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1540
    new-instance v19, Landroid/content/ComponentName;

    .line 1541
    const-class v18, Lcom/android/settings/Settings$PrintSettingsActivity;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1540
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x7f120022

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_8

    .line 1543
    const-string/jumbo v18, "android.software.print"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 1540
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1546
    new-instance v18, Landroid/content/ComponentName;

    .line 1547
    const-class v19, Lcom/android/settings/Settings$DeviceInfoSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1546
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120022

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    .line 1546
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1551
    new-instance v18, Landroid/content/ComponentName;

    .line 1552
    const-class v19, Lcom/android/settings/Settings$OtherDeviceFunctionsSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1551
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120022

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 1551
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1556
    new-instance v18, Landroid/content/ComponentName;

    .line 1557
    const-class v19, Lcom/android/settings/Settings$SystemUpdateActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1556
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120022

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 1556
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1561
    new-instance v18, Landroid/content/ComponentName;

    .line 1562
    const-class v19, Lcom/android/settings/Settings$ProfileMgrMainActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1561
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120024

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 1561
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1565
    new-instance v18, Landroid/content/ComponentName;

    .line 1566
    const-class v19, Lcom/android/settings/Settings$OPOthersSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1565
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    const/16 v19, 0x1

    .line 1565
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1569
    new-instance v19, Landroid/content/ComponentName;

    .line 1570
    const-class v18, Lcom/android/settings/Settings$OPCloudServiceSettings;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1569
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string/jumbo v20, "com.oneplus.cloud"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    .line 1569
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1575
    new-instance v18, Landroid/content/ComponentName;

    .line 1576
    const-class v19, Lcom/android/settings/Settings$OPFontStyleSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1575
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportFontStyleSetting()Z

    move-result v19

    .line 1575
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1581
    new-instance v18, Landroid/content/ComponentName;

    .line 1582
    const-class v19, Lcom/android/settings/Settings$OPDefaultHomeSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1581
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->isShowLauncherTile()Z

    move-result v19

    .line 1581
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    .line 1587
    const-string/jumbo v19, "show"

    sget-object v20, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v21, "eng"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1586
    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1588
    const-string/jumbo v18, "no_debugging_features"

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v18

    xor-int/lit8 v13, v18, 0x1

    .line 1589
    :goto_6
    new-instance v18, Landroid/content/ComponentName;

    .line 1590
    const-class v19, Lcom/android/settings/Settings$DevelopmentSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1589
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1594
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/settings/qstile/DevelopmentTiles;->setTilesEnabled(Landroid/content/Context;Z)V

    .line 1597
    const/4 v14, 0x0

    .line 1598
    .local v14, "showTimerSwitch":Z
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v18, "qualcomm.intent.action.TIMER_SWITCH"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1599
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 1600
    const/16 v19, 0x0

    .line 1599
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 1601
    .local v8, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_0

    .line 1604
    const/4 v14, 0x0

    .line 1607
    :cond_0
    new-instance v18, Landroid/content/ComponentName;

    .line 1608
    const-class v19, Lcom/android/settings/Settings$TimerSwitchSettingsActivity;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1607
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    .line 1611
    xor-int/lit8 v18, v10, 0x1

    if-eqz v18, :cond_b

    .line 1613
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v4

    .line 1614
    .local v4, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "category$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 1615
    .local v5, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v0, v5, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "tile$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settingslib/drawer/Tile;

    .line 1616
    .local v15, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v0, v15, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1617
    .local v7, "component":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 1617
    invoke-static/range {v18 .. v19}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_2

    .line 1619
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v1, v10, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V

    goto :goto_7

    .line 1493
    .end local v3    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v4    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v5    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v6    # "category$iterator":Ljava/util/Iterator;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v8    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v14    # "showTimerSwitch":Z
    .end local v15    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v16    # "tile$iterator":Ljava/util/Iterator;
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1499
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1529
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 1538
    .restart local v3    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1536
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1542
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1571
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1586
    :cond_a
    const/4 v13, 0x0

    .local v13, "showDev":Z
    goto/16 :goto_6

    .line 1625
    .end local v13    # "showDev":Z
    .restart local v8    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v14    # "showTimerSwitch":Z
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->updateCategories()V

    .line 1626
    return-void
.end method

.method private getLauncherPackageName()Ljava/util/List;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1630
    sget-object v7, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1631
    .local v1, "myPkg":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    .local v2, "packageNames":Ljava/util/List;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1633
    .local v6, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1634
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.category.HOME"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    sget-object v7, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x20000

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1636
    .local v3, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "ri$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1637
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1640
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1641
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1643
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string/jumbo v7, "SettingsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLauncherPackageName count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", pkgs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 1645
    :cond_2
    return-object v10

    .line 1647
    :cond_3
    return-object v2
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1671
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1672
    const/16 v4, 0x80

    .line 1671
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1673
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    :cond_0
    return-void

    .line 1674
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1675
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.ACTIVITY_ACTION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-void

    .line 1676
    :catch_0
    move-exception v1

    .line 1678
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    :cond_0
    const-string/jumbo v1, "com.android.settings."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    const-string/jumbo v1, "com.android.settings."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 740
    :cond_1
    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1237
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object v1

    .line 1239
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 1242
    :cond_1
    const-string/jumbo v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1243
    const-string/jumbo v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1242
    if-nez v1, :cond_2

    .line 1244
    const-string/jumbo v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1242
    if-eqz v1, :cond_3

    .line 1246
    :cond_2
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1249
    :cond_3
    return-object v0
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 749
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 751
    return v3

    .line 753
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 754
    sget-object v2, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 753
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    :cond_2
    return v3
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 744
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 745
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShowLauncherTile()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1652
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getLauncherPackageName()Ljava/util/List;

    move-result-object v0

    .line 1653
    .local v0, "launcherName":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1654
    return v2

    .line 1656
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private revertToInitialFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1794
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setNestedScrollingEnabled(Z)V

    .line 1796
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 1797
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setTitleEnabled(Z)V

    .line 1800
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1801
    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 1802
    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1803
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1805
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1806
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1808
    :cond_1
    return-void
.end method

.method private setCoordinatorLayoutEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->setNestedScrollingEnabled(Z)V

    .line 1762
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 1763
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;->setTitleEnabled(Z)V

    .line 1765
    :cond_0
    return-void
.end method

.method private setTileEnabled(Landroid/content/ComponentName;ZZLandroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .param p3, "isAdmin"    # Z
    .param p4, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 1662
    xor-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1662
    if-eqz v0, :cond_0

    .line 1664
    const/4 p2, 0x0

    .line 1666
    .end local p2    # "enabled":Z
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;Z)V

    .line 1667
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1085
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1087
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 1088
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 1089
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 1093
    :goto_0
    return v3

    .line 1091
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1096
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 1097
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    .line 1099
    return v1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 1104
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 1105
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 1106
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1110
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1113
    :cond_0
    return-void

    .line 1108
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1050
    const-string/jumbo v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1051
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 1052
    iput-object v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1053
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1056
    const-string/jumbo v5, ":settings:show_fragment_title_res_package_name"

    .line 1055
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1057
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1060
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    .line 1059
    invoke-virtual {p0, v4, v6, v5}, Lcom/android/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 1061
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1062
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1063
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    return-void

    .line 1065
    .end local v0    # "authContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1066
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1069
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_0
    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 1072
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1073
    const-string/jumbo v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1074
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1075
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1074
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method private setToolBar()V
    .locals 2

    .prologue
    .line 649
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v1, :cond_1

    .line 650
    const v1, 0x7f0a0327

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mCoordinatorLayout:Lcom/oneplus/lib/design/widget/CoordinatorLayout;

    .line 651
    const v1, 0x7f0a0328

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mAppBarLayout:Lcom/oneplus/lib/design/widget/AppBarLayout;

    .line 652
    const v1, 0x7f0a0329

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mToolbarLayout:Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;

    .line 653
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 657
    :cond_0
    const v1, 0x7f0a032a

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 658
    .local v0, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 660
    .end local v0    # "toolbar":Landroid/widget/Toolbar;
    :cond_1
    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 9
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 1365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1366
    const/4 v6, 0x0

    return-object v6

    .line 1368
    :cond_0
    const-class v6, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1369
    const-string/jumbo v6, "Settings"

    const-string/jumbo v7, "switchToFragment, launch simSettings  "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v4, "provisioningIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1373
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1374
    const/4 v6, 0x0

    return-object v6

    .line 1377
    .end local v4    # "provisioningIntent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v6, "com.android.settings.Lte4GEnableSetting"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1378
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.settings.SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1379
    .local v2, "newIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1380
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1381
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1382
    const/4 v6, 0x0

    return-object v6

    .line 1385
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v6, "com.android.settings.ProfileMgrMain"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1386
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1387
    .local v3, "profilemgrIntent":Landroid/content/Intent;
    const-string/jumbo v6, "com.codeaurora.STARTPROFILE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    const-string/jumbo v6, "com.android.profile"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1390
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1391
    const/4 v6, 0x0

    return-object v6

    .line 1393
    .end local v3    # "profilemgrIntent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v6, "com.android.settings.MobileNetworkMain"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1394
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1395
    .local v1, "mobileNetworkIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    const-string/jumbo v6, "com.qualcomm.qti.networksetting"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1399
    const/4 v6, 0x0

    return-object v6

    .line 1403
    .end local v1    # "mobileNetworkIntent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v6, "android.settings.SystemUpdateActivity"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1404
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->SystemUpdateHandle()V

    .line 1405
    const/4 v6, 0x0

    return-object v6

    .line 1409
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    .line 1410
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid fragment for this activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1413
    :cond_6
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1414
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 1415
    .local v5, "transaction":Landroid/app/FragmentTransaction;
    iget v6, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    invoke-virtual {v5, v6, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1416
    if-eqz p7, :cond_7

    .line 1417
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v6}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1419
    :cond_7
    if-eqz p4, :cond_8

    .line 1420
    const-string/jumbo v6, ":settings:prefs"

    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1422
    :cond_8
    if-lez p5, :cond_a

    .line 1423
    invoke-virtual {v5, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1427
    :cond_9
    :goto_0
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1428
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1429
    return-object v0

    .line 1424
    :cond_a
    if-eqz p6, :cond_9

    .line 1425
    invoke-virtual {v5, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1769
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1770
    return-void

    .line 1773
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/SettingsActivity;->setCoordinatorLayoutEnable(Z)V

    .line 1775
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1776
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1777
    check-cast v8, Lcom/android/settings/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 1783
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1784
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1785
    return-void

    .line 1780
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1781
    const v5, 0x7f0f0f1d

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    .line 1779
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    goto :goto_0
.end method

.method private updateSearchIndex()V
    .locals 2

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$4;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 789
    return-void
.end method

.method private updateTilesList()V
    .locals 1

    .prologue
    .line 1468
    new-instance v0, Lcom/android/settings/SettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$8;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 1474
    return-void
.end method


# virtual methods
.method public SystemUpdateHandle()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1434
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    .line 1435
    const-string/jumbo v10, "carrier_config"

    .line 1434
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1436
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1437
    .local v0, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v9, "ci_action_on_sys_update_bool"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1438
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/android/settings/Utils;->ciActionOnSysUpdate(Landroid/content/Context;Landroid/os/PersistableBundle;)V

    .line 1441
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v9, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1442
    .local v6, "newIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1443
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1445
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1446
    .local v5, "listSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1447
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1448
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1449
    .local v2, "flags":I
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_1

    .line 1452
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1453
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1454
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1452
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1455
    const/high16 v9, 0x10000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1456
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1457
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1458
    return-void

    .line 1446
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1462
    .end local v2    # "flags":I
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1337
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1338
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1339
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 1206
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1207
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1210
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1211
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1212
    .local v2, "modIntent":Landroid/content/Intent;
    const-string/jumbo v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1214
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1215
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 1219
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string/jumbo v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1220
    const-string/jumbo v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1221
    return-object v2

    .line 1217
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .line 1223
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1224
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1225
    .restart local v2    # "modIntent":Landroid/content/Intent;
    const-string/jumbo v5, ":settings:launch_activity_action"

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    return-object v2

    .line 1229
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_2
    return-object v4
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    new-instance v0, Lcom/android/settings/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 729
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 1198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1199
    sget-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 1198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1201
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1789
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1825
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 1826
    if-eqz p2, :cond_0

    .line 1827
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    .line 1828
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1827
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1830
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1831
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 1081
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 1082
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1714
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 665
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 667
    const-string/jumbo v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    .line 669
    .local v0, "index":Lcom/android/settings/search/Index;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->setContext(Landroid/content/Context;)V

    .line 670
    invoke-virtual {v0}, Lcom/android/settings/search/Index;->update()V

    .line 673
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setToolBar()V

    .line 675
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 798
    const v4, 0x7f10043a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 801
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->setRequestedOrientation(I)V

    .line 803
    invoke-super/range {p0 .. p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 805
    .local v28, "startTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->updateSearchIndex()V

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 809
    const/16 v7, 0x2000

    .line 808
    invoke-virtual {v4, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 813
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 815
    .local v22, "intent":Landroid/content/Intent;
    const-string/jumbo v4, ":settings:launch_activity_action"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 818
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 824
    return-void

    .line 819
    :catch_0
    move-exception v21

    .line 820
    .local v21, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Activity not found for action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 827
    .end local v21    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string/jumbo v4, "settings:ui_options"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string/jumbo v7, "settings:ui_options"

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/Window;->setUiOptions(I)V

    .line 835
    :cond_3
    const-string/jumbo v4, "development"

    .line 836
    const/4 v7, 0x0

    .line 835
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 839
    const-string/jumbo v4, ":settings:show_fragment"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 841
    .local v5, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static/range {v22 .. v22}, Lcom/android/settings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 842
    const-string/jumbo v4, ":settings:show_fragment_as_shortcut"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 841
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    .line 844
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    .line 845
    .local v20, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    .line 847
    .local v19, "className":Ljava/lang/String;
    const-class v4, Lcom/android/settings/Settings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 848
    const-class v4, Lcom/android/settings/Settings$WirelessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 847
    if-nez v4, :cond_d

    .line 849
    const-class v4, Lcom/android/settings/Settings$DeviceSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 847
    if-nez v4, :cond_d

    .line 850
    const-class v4, Lcom/android/settings/Settings$PersonalSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 847
    if-nez v4, :cond_d

    .line 851
    const-class v4, Lcom/android/settings/Settings$WirelessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 847
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 856
    move-object/from16 v0, p0

    instance-of v4, v0, Lcom/android/settings/SubSettings;

    if-nez v4, :cond_e

    .line 857
    const-string/jumbo v4, ":settings:show_fragment_as_subsetting"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 860
    :goto_3
    if-eqz v23, :cond_4

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v27

    .line 863
    .local v27, "themeResId":I
    const v4, 0x7f100446

    move/from16 v0, v27

    if-eq v0, v4, :cond_4

    .line 864
    const v4, 0x7f100448

    move/from16 v0, v27

    if-eq v0, v4, :cond_4

    .line 865
    const v4, 0x7f10043e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 874
    .end local v27    # "themeResId":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v4, :cond_f

    .line 875
    const v4, 0x7f0401ae

    .line 874
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 876
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 893
    if-eqz p1, :cond_10

    .line 897
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setToolBar()V

    .line 899
    const-string/jumbo v4, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 900
    const-string/jumbo v4, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 902
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 905
    const-string/jumbo v4, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 906
    .local v18, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    if-eqz v18, :cond_5

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 909
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 912
    :cond_5
    const-string/jumbo v4, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 913
    const-string/jumbo v4, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 944
    .end local v18    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v4, :cond_6

    .line 946
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v7, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 948
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v4, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 951
    :cond_6
    const v4, 0x7f0a032c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_7

    .line 953
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    .line 956
    :cond_7
    const-string/jumbo v4, "extra_prefs_show_button_bar"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 958
    const v4, 0x7f0a02ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 959
    .local v16, "buttonBar":Landroid/view/View;
    if-eqz v16, :cond_a

    .line 960
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 962
    const v4, 0x7f0a02bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 963
    .local v15, "backButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/SettingsActivity$5;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    const v4, 0x7f0a017d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    .line 970
    .local v26, "skipButton":Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/SettingsActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 976
    const v4, 0x7f0a00f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 977
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/SettingsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/settings/SettingsActivity$7;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 985
    const-string/jumbo v4, "extra_prefs_set_next_text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 986
    const-string/jumbo v4, "extra_prefs_set_next_text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 987
    .local v17, "buttonText":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 988
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 994
    .end local v17    # "buttonText":Ljava/lang/String;
    :cond_8
    :goto_7
    const-string/jumbo v4, "extra_prefs_set_back_text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 995
    const-string/jumbo v4, "extra_prefs_set_back_text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 996
    .restart local v17    # "buttonText":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 997
    const/16 v4, 0x8

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1003
    .end local v17    # "buttonText":Ljava/lang/String;
    :cond_9
    :goto_8
    const-string/jumbo v4, "extra_prefs_show_skip"

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1004
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1009
    .end local v15    # "backButton":Landroid/widget/Button;
    .end local v16    # "buttonBar":Landroid/view/View;
    .end local v26    # "skipButton":Landroid/widget/Button;
    :cond_a
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v25

    .line 1010
    .local v25, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v25, :cond_b

    .line 1011
    new-instance v24, Landroid/nfc/NdefMessage;

    const-string/jumbo v4, "com.android.settings"

    invoke-static {v4}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/nfc/NdefRecord;

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v7}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 1012
    .local v24, "msg":Landroid/nfc/NdefMessage;
    const/4 v4, 0x0

    new-array v4, v4, [Landroid/app/Activity;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2, v4}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 1017
    .end local v24    # "msg":Landroid/nfc/NdefMessage;
    :cond_b
    return-void

    .line 841
    .end local v19    # "className":Ljava/lang/String;
    .end local v20    # "cn":Landroid/content/ComponentName;
    .end local v25    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 847
    .restart local v19    # "className":Ljava/lang/String;
    .restart local v20    # "cn":Landroid/content/ComponentName;
    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 856
    :cond_e
    const/16 v23, 0x1

    .local v23, "isSubSettings":Z
    goto/16 :goto_3

    .line 875
    .end local v23    # "isSubSettings":Z
    :cond_f
    const v4, 0x7f0401af

    goto/16 :goto_4

    .line 915
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v4, :cond_13

    .line 916
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 918
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    if-eqz v4, :cond_11

    .line 919
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 925
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 927
    const-string/jumbo v4, ":settings:show_fragment_args"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 929
    .local v6, "initialArguments":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 928
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 929
    const/4 v11, 0x0

    move-object/from16 v4, p0

    .line 928
    invoke-direct/range {v4 .. v11}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_5

    .line 920
    .end local v6    # "initialArguments":Landroid/os/Bundle;
    :cond_11
    if-eqz v23, :cond_12

    .line 921
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_9

    .line 923
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    goto :goto_9

    .line 932
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setToolBar()V

    .line 935
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 937
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 938
    const v4, 0x7f0f0f1c

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 939
    const-class v4, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 940
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 939
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 940
    const/4 v14, 0x0

    move-object/from16 v7, p0

    .line 939
    invoke-direct/range {v7 .. v14}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_5

    .line 946
    :cond_14
    const/4 v4, 0x1

    goto/16 :goto_6

    .line 991
    .restart local v15    # "backButton":Landroid/widget/Button;
    .restart local v16    # "buttonBar":Landroid/view/View;
    .restart local v17    # "buttonText":Ljava/lang/String;
    .restart local v26    # "skipButton":Landroid/widget/Button;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1000
    :cond_16
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 681
    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 683
    :cond_0
    return v5

    .line 686
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 687
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v4, 0x7f140004

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 690
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 692
    .local v1, "query":Ljava/lang/String;
    const v4, 0x7f0a0459

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 693
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SearchView;

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 695
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v4, :cond_3

    .line 696
    :cond_2
    return v5

    .line 699
    :cond_3
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v4, :cond_4

    .line 700
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v5}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 703
    :cond_4
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 705
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "android:id/search_src_text"

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 706
    .local v2, "searchViewId":I
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 707
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c02bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 713
    :goto_0
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 714
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 716
    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v4, :cond_5

    .line 717
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->expandActionView()Z

    .line 719
    :cond_5
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v1, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 721
    return v7

    .line 710
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c02bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1185
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onDestroy()V

    .line 1193
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1733
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1734
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1735
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 1738
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1719
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1721
    sget-boolean v0, Lcom/oneplus/settings/utils/OPUtils;->mAppUpdated:Z

    if-eqz v0, :cond_0

    .line 1722
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/Index;->update()V

    .line 1723
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->setAppUpdated(Z)V

    .line 1726
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1728
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1840
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 633
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 634
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const v0, 0x7f0f093b

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 637
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, -0x1

    .line 638
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 637
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 639
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method public onProfileTileOpen()V
    .locals 1

    .prologue
    .line 1753
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v0, :cond_0

    .line 1754
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1756
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1706
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1707
    const/4 v0, 0x0

    return v0

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1699
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1700
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1022
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onResume()V

    .line 1024
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020480

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1031
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1117
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1119
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1120
    const-string/jumbo v2, ":settings:categories"

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1123
    :cond_0
    const-string/jumbo v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1124
    const-string/jumbo v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1126
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 1132
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 1133
    :goto_0
    const-string/jumbo v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1135
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    return-void

    .line 1132
    :cond_2
    const/4 v0, 0x0

    .local v0, "isExpanded":Z
    goto :goto_0

    .line 1135
    .end local v0    # "isExpanded":Z
    :cond_3
    const-string/jumbo v1, ""

    .restart local v1    # "query":Ljava/lang/String;
    goto :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 1142
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onStart()V

    .line 1144
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 1145
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1160
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1161
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1165
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 1168
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    .line 1169
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1173
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onStop()V

    .line 1175
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1176
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mUserAddRemoveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1177
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :goto_0
    return-void

    .line 1178
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected onTileClicked(Lcom/android/settingslib/drawer/Tile;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .prologue
    .line 1743
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_0

    .line 1745
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    .line 1749
    :goto_0
    return-void

    .line 1747
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onTileClicked(Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_0
.end method

.method public setDisplaySearchMenu(Z)V
    .locals 1
    .param p1, "displaySearch"    # Z

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eq p1, v0, :cond_0

    .line 1044
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1045
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->invalidateOptionsMenu()V

    .line 1047
    :cond_0
    return-void
.end method

.method protected setMainContentId(I)V
    .locals 0
    .param p1, "contentId"    # I

    .prologue
    .line 1039
    iput p1, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    .line 1040
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1816
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1693
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1349
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1350
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mMainContentId:I

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1351
    if-eqz p2, :cond_0

    .line 1352
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1353
    const-string/jumbo v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1357
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1358
    return-void

    .line 1355
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1273
    const/4 v6, 0x0

    .line 1274
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1275
    if-eqz p4, :cond_1

    .line 1276
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1283
    .end local v6    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    .line 1282
    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 1284
    return-void

    .line 1279
    .restart local v6    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, ""

    .local v6, "title":Ljava/lang/String;
    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1310
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1311
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1325
    :goto_0
    return-void

    .line 1313
    :cond_0
    const/4 v4, 0x0

    .line 1314
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 1315
    if-eqz p4, :cond_2

    .line 1316
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1323
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    .line 1322
    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    goto :goto_0

    .line 1319
    .restart local v4    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    .local v4, "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public startSuggestion(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1819
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCurrentSuggestion:Landroid/content/ComponentName;

    .line 1820
    const/16 v0, 0x2a

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1821
    return-void
.end method
