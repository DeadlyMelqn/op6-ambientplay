.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Lcom/android/settings/applications/AppInfoBase;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$1;,
        Lcom/android/settings/applications/InstalledAppDetails$2;,
        Lcom/android/settings/applications/InstalledAppDetails$3;,
        Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;,
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;
    }
.end annotation


# static fields
.field private static final DLG_DISABLE:I = 0x2

.field private static final DLG_FORCE_STOP:I = 0x1

.field private static final DLG_SPECIAL_DISABLE:I = 0x3

.field private static final KEY_ACTION_BUTTONS:Ljava/lang/String; = "action_buttons"

.field private static final KEY_BATTERY:Ljava/lang/String; = "battery"

.field private static final KEY_DATA:Ljava/lang/String; = "data_settings"

.field private static final KEY_HEADER:Ljava/lang/String; = "header_view"

.field private static final KEY_INSTANT_APP_BUTTONS:Ljava/lang/String; = "instant_app_buttons"

.field private static final KEY_INSTANT_APP_SUPPORTED_LINKS:Ljava/lang/String; = "instant_app_launch_supported_domain_urls"

.field private static final KEY_LAUNCH:Ljava/lang/String; = "preferred_settings"

.field private static final KEY_MEMORY:Ljava/lang/String; = "memory"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "notification_settings"

.field private static final KEY_PERMISSION:Ljava/lang/String; = "permission_settings"

.field private static final KEY_STORAGE:Ljava/lang/String; = "storage_settings"

.field private static final KEY_VERSION:Ljava/lang/String; = "app_version"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "InstalledAppDetails"

.field private static final NOTIFICATION_TUNER_SETTING:Ljava/lang/String; = "show_importance_slider"

.field private static final REQUEST_REMOVE_DEVICE_ADMIN:I = 0x1

.field public static final REQUEST_UNINSTALL:I = 0x0

.field private static final SUB_INFO_FRAGMENT:I = 0x1

.field public static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field public static final UNINSTALL_UPDATES:I = 0x2


# instance fields
.field private mActionButtons:Lcom/android/settings/applications/LayoutPreference;

.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryPercent:Ljava/lang/String;

.field private mBatteryPreference:Landroid/support/v7/preference/Preference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPreference:Landroid/support/v7/preference/Preference;

.field private mDisableAfterUninstall:Z

.field private mForceStopButton:Landroid/widget/Button;

.field private mHeader:Lcom/android/settings/applications/LayoutPreference;

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mInstantAppButtonsController:Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

.field private mInstantAppDomainsPreference:Lcom/android/settings/applications/AppDomainsPreference;

.field private mLaunchPreference:Landroid/support/v7/preference/Preference;

.field private mMemoryPreference:Landroid/support/v7/preference/Preference;

.field private mNotificationPreference:Landroid/support/v7/preference/Preference;

.field private final mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionsPreference:Landroid/support/v7/preference/Preference;

.field private mShowUninstalled:Z

.field private mSipper:Lcom/android/internal/os/BatterySipper;

.field protected mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field protected mStatsManager:Lcom/android/settings/applications/ProcStatsData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStoragePreference:Landroid/support/v7/preference/Preference;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mVersionPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "-value"    # Lcom/android/settingslib/net/ChartData;

    .prologue
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "-value"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "fragment"    # Ljava/lang/Class;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 204
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 1357
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1376
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1384
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 1383
    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 147
    return-void
.end method

.method private addAppInstallerInfoPref(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 11
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    const/4 v10, 0x0

    .line 1107
    const/4 v3, 0x0

    .line 1110
    .local v3, "installerPackageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1114
    .end local v3    # "installerPackageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 1115
    return-void

    .line 1111
    .restart local v3    # "installerPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1112
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception while retrieving the package installer of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1117
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "installerPackageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1119
    .local v2, "installerLabel":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 1120
    return-void

    .line 1122
    :cond_1
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 1123
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    const v7, 0x7f0f0b5e

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 1124
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1125
    new-instance v5, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1126
    .local v5, "pref":Landroid/support/v7/preference/Preference;
    const v7, 0x7f0f0b5f

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 1127
    const-string/jumbo v7, "app_info_store"

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1128
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v10

    const v8, 0x7f0f0b60

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1129
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.SHOW_APP_INFO"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1131
    .local v4, "intent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 1132
    .local v6, "result":Landroid/content/Intent;
    if-eqz v6, :cond_2

    .line 1133
    const-string/jumbo v7, "android.intent.extra.PACKAGE_NAME"

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1134
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 1138
    :goto_1
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1139
    return-void

    .line 1136
    :cond_2
    invoke-virtual {v5, v10}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private addDynamicPrefs()V
    .locals 15

    .prologue
    const v5, 0x7f0f1043

    .line 980
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    return-void

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    .line 984
    .local v14, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/DefaultHomePreference;->hasHomePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    new-instance v0, Lcom/android/settings/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 986
    const-class v2, Lcom/android/settings/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_home"

    const v4, 0x7f0f1138

    .line 985
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 989
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/DefaultBrowserPreference;->hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 990
    new-instance v0, Lcom/android/settings/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 991
    const-class v2, Lcom/android/settings/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_browser"

    const v4, 0x7f0f105d

    .line 990
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/DefaultPhonePreference;->hasPhonePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 995
    new-instance v0, Lcom/android/settings/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 996
    const-class v2, Lcom/android/settings/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_phone_app"

    const v4, 0x7f0f105f

    .line 995
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 999
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/DefaultEmergencyPreference;->hasEmergencyPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1000
    new-instance v0, Lcom/android/settings/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 1001
    const-class v2, Lcom/android/settings/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_emergency_app"

    .line 1002
    const v4, 0x7f0f0b1d

    .line 1000
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1004
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/DefaultSmsPreference;->hasSmsPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1005
    new-instance v0, Lcom/android/settings/applications/ShortcutPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 1006
    const-class v2, Lcom/android/settings/applications/AdvancedAppSettings;

    const-string/jumbo v3, "default_sms_app"

    const v4, 0x7f0f0a6a

    .line 1005
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/ShortcutPreference;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;II)V

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1010
    :cond_5
    const/4 v12, 0x0

    .line 1012
    .local v12, "packageInfoWithActivities":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    .line 1013
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    .line 1012
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1017
    .end local v12    # "packageInfoWithActivities":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string/jumbo v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->hasPermission(Ljava/lang/String;)Z

    move-result v8

    .line 1018
    .local v8, "hasDrawOverOtherApps":Z
    const-string/jumbo v0, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->hasPermission(Ljava/lang/String;)Z

    move-result v10

    .line 1019
    .local v10, "hasWriteSettings":Z
    if-eqz v12, :cond_b

    .line 1021
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1022
    iget-object v1, v12, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 1020
    invoke-static {v0, v1}, Lcom/android/settings/applications/PictureInPictureSettings;->checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    .line 1023
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isPotentialAppSource()Z

    move-result v11

    .line 1024
    .local v11, "isPotentialAppSource":Z
    if-nez v8, :cond_6

    if-nez v10, :cond_6

    if-nez v9, :cond_6

    if-eqz v11, :cond_a

    .line 1026
    :cond_6
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 1027
    .local v6, "category":Landroid/support/v7/preference/PreferenceCategory;
    const v0, 0x7f0f1042

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 1028
    invoke-virtual {v14, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1030
    if-eqz v8, :cond_7

    .line 1031
    new-instance v13, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1032
    .local v13, "pref":Landroid/support/v7/preference/Preference;
    const v0, 0x7f0f10bc

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 1033
    const-string/jumbo v0, "system_alert_window"

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1034
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$7;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$7;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 1042
    invoke-virtual {v6, v13}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1044
    .end local v13    # "pref":Landroid/support/v7/preference/Preference;
    :cond_7
    if-eqz v10, :cond_8

    .line 1045
    new-instance v13, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1046
    .restart local v13    # "pref":Landroid/support/v7/preference/Preference;
    const v0, 0x7f0f10ca

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 1047
    const-string/jumbo v0, "write_settings_apps"

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1048
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$8;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$8;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 1056
    invoke-virtual {v6, v13}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1058
    .end local v13    # "pref":Landroid/support/v7/preference/Preference;
    :cond_8
    if-eqz v9, :cond_9

    .line 1059
    new-instance v13, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1060
    .restart local v13    # "pref":Landroid/support/v7/preference/Preference;
    const v0, 0x7f0f1234

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 1061
    const-string/jumbo v0, "picture_in_picture"

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1062
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$9;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$9;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 1072
    invoke-virtual {v6, v13}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1074
    .end local v13    # "pref":Landroid/support/v7/preference/Preference;
    :cond_9
    if-eqz v11, :cond_a

    .line 1075
    new-instance v13, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1076
    .restart local v13    # "pref":Landroid/support/v7/preference/Preference;
    const v0, 0x7f0f018b

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 1077
    const-string/jumbo v0, "install_other_apps"

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1078
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$10;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$10;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 1086
    invoke-virtual {v6, v13}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1090
    .end local v6    # "category":Landroid/support/v7/preference/PreferenceCategory;
    .end local v13    # "pref":Landroid/support/v7/preference/Preference;
    :cond_a
    invoke-direct {p0, v14}, Lcom/android/settings/applications/InstalledAppDetails;->addAppInstallerInfoPref(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->maybeAddInstantAppButtons()V

    .line 1092
    return-void

    .line 1014
    .end local v8    # "hasDrawOverOtherApps":Z
    .end local v10    # "hasWriteSettings":Z
    .end local v11    # "isPotentialAppSource":Z
    .restart local v12    # "packageInfoWithActivities":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    .line 1015
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception while retrieving the package info of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1019
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "packageInfoWithActivities":Landroid/content/pm/PackageInfo;
    .restart local v8    # "hasDrawOverOtherApps":Z
    .restart local v10    # "hasWriteSettings":Z
    :cond_b
    const/4 v9, 0x0

    .local v9, "hasPictureInPictureActivities":Z
    goto/16 :goto_1
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/16 v7, 0x3e7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 818
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 842
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 823
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 827
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 829
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 830
    const-string/jumbo v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 829
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 831
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string/jumbo v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 833
    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 834
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 836
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 835
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 838
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 839
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 838
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private clearExtraInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1428
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 1431
    :cond_0
    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 792
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 794
    const-string/jumbo v4, "activity"

    .line 792
    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 797
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 798
    .local v2, "userId":I
    invoke-virtual {v0, p1, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 799
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    .line 801
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 802
    .local v1, "newEnt":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 803
    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 806
    return-void
.end method

.method private getDataSummary()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 716
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v1, v1, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v2

    .line 718
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 719
    const v1, 0x7f0f10ad

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 722
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 723
    invoke-static {v0, v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 724
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v4, v4, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v4

    .line 725
    const v6, 0x10010

    .line 724
    invoke-static {v0, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 722
    const v4, 0x7f0f1029

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 727
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "totalBytes":J
    :cond_1
    const v1, 0x7f0f0b42

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "appRow"    # Lcom/android/settings/notification/NotificationBackend$AppRow;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1254
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .prologue
    .line 1248
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    .line 1249
    .local v0, "appRow":Lcom/android/settings/notification/NotificationBackend$AppRow;
    invoke-static {v0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1237
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageList;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    .line 1240
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1241
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    .line 1243
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const v4, 0x7f0f0b0e

    .line 222
    const/4 v0, 0x0

    .line 226
    .local v0, "disableable":Z
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    .line 226
    if-eqz v1, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 238
    :goto_0
    return v0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setText(I)V

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    :cond_2
    const v1, 0x7f0f0b0f

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 235
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleHeader()V
    .locals 3

    .prologue
    .line 457
    const-string/jumbo v1, "header_view"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    .line 460
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a01a1

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, "btnPanel":Landroid/view/View;
    const-string/jumbo v1, "action_buttons"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/LayoutPreference;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    .line 466
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 467
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v2, 0x7f0f0b05

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 468
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActionButtons:Lcom/android/settings/applications/LayoutPreference;

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 469
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 486
    return-void
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1157
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1158
    :cond_0
    return v2

    .line 1160
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1161
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1162
    const/4 v1, 0x1

    return v1

    .line 1160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    :cond_3
    return v2
.end method

.method private initUninstallButtons()V
    .locals 8

    .prologue
    .line 247
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    const/4 v4, 0x1

    .line 248
    .local v4, "isBundled":Z
    :goto_0
    const/4 v2, 0x1

    .line 249
    .local v2, "enabled":Z
    if-eqz v4, :cond_9

    .line 250
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v2

    .line 262
    .end local v2    # "enabled":Z
    :goto_1
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    const/4 v2, 0x0

    .line 269
    :cond_0
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->isProfileOrDeviceOwner(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 270
    const/4 v2, 0x0

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 275
    const/4 v2, 0x0

    .line 279
    :cond_2
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 280
    const/4 v2, 0x0

    .line 289
    :cond_3
    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 290
    if-eqz v4, :cond_b

    .line 291
    const/4 v2, 0x0

    .line 307
    :cond_4
    :goto_2
    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v6, :cond_5

    .line 308
    const/4 v2, 0x0

    .line 313
    :cond_5
    :try_start_0
    const-string/jumbo v6, "webviewupdate"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v5

    .line 314
    .local v5, "webviewUpdateService":Landroid/webkit/IWebViewUpdateService;
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_6

    .line 315
    const/4 v2, 0x0

    .line 321
    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 322
    if-eqz v2, :cond_7

    .line 324
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_7
    return-void

    .line 247
    .end local v4    # "isBundled":Z
    .end local v5    # "webviewUpdateService":Landroid/webkit/IWebViewUpdateService;
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "isBundled":Z
    goto :goto_0

    .line 252
    .restart local v2    # "enabled":Z
    :cond_9
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-nez v6, :cond_a

    .line 253
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_a

    .line 256
    const/4 v2, 0x0

    .line 258
    :cond_a
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v7, 0x7f0f0b0b

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 293
    .end local v2    # "enabled":Z
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v3, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 295
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_d

    .line 298
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_c

    const/4 v2, 0x1

    .restart local v2    # "enabled":Z
    goto :goto_2

    .end local v2    # "enabled":Z
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "enabled":Z
    goto :goto_2

    .line 302
    .end local v2    # "enabled":Z
    :cond_d
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v2, v6, 0x1

    .local v2, "enabled":Z
    goto :goto_2

    .line 317
    .end local v0    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v2    # "enabled":Z
    .end local v3    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 243
    const/4 v1, 0x4

    .line 242
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPotentialAppSource()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1096
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 1097
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1101
    :cond_1
    new-instance v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 1102
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1101
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    .line 1103
    .local v0, "appState":Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v1

    return v1
.end method

.method private isProfileOrDeviceOwner(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 330
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 332
    .local v4, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 331
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 333
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 334
    return v7

    .line 336
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 337
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 338
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 339
    return v7

    .line 342
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method private isSingleUser()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 940
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    .line 941
    .local v0, "userCount":I
    if-eq v0, v1, :cond_0

    .line 942
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 941
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 942
    goto :goto_0
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 490
    .local v0, "result":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 490
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 8
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x0

    .line 587
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    const v5, 0x7f0a00b0

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 588
    .local v1, "appSnippet":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 591
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 592
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 594
    .local v2, "isInstantApp":Z
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 595
    :goto_0
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v4

    invoke-interface {v4, p0, v1}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newAppHeaderController(Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v4

    .line 598
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 595
    invoke-virtual {v4, v5}, Lcom/android/settings/applications/AppHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v4

    .line 599
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 595
    invoke-virtual {v4, v5}, Lcom/android/settings/applications/AppHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settings/applications/AppHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/settings/applications/AppHeaderController;->setIsInstantApp(Z)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 603
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mVersionPreference:Landroid/support/v7/preference/Preference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v5, v7

    const v6, 0x7f0f0b45

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 604
    return-void

    .line 594
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/settings/Utils;->getInstallationStatus(Landroid/content/pm/ApplicationInfo;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public static setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "appSnippet"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "versionName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1215
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1216
    const v3, 0x1020018

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1215
    const v5, 0x7f040233

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1218
    const v3, 0x7f0a00b1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1219
    .local v1, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1221
    const v3, 0x7f0a00b3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1222
    .local v2, "labelView":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    const v3, 0x7f0a03d4

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1226
    .local v0, "appVersion":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1227
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1228
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1229
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 1230
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 1229
    const v5, 0x7f0f0b45

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    :goto_0
    return-void

    .line 1232
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 607
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 609
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 610
    .local v1, "match":I
    if-ltz v1, :cond_0

    .line 611
    const/4 v2, 0x1

    return v2

    .line 613
    .end local v1    # "match":I
    :catch_0
    move-exception v0

    .line 618
    :cond_0
    return v3
.end method

.method private startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 866
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {p1, p2, p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 867
    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "caller"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p3, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    .line 872
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 873
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "package"

    iget-object v3, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string/jumbo v1, "uid"

    iget-object v3, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 875
    const-string/jumbo v1, "hideInfoButton"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 877
    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 878
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 879
    return-void
.end method

.method private startManagePermissionsActivity()V
    .locals 5

    .prologue
    .line 846
    sget-boolean v2, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 848
    .local v2, "isCtaVersion":Z
    if-eqz v2, :cond_0

    .line 849
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.oneplus.security.action.OPPERMISSION_APP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 850
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "packageName"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_1
    return-void

    .line 853
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    const-string/jumbo v3, "hideInfoButton"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "InstalledAppDetails"

    const-string/jumbo v4, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->stopListeningToPackageRemove()V

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 783
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 784
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 785
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 786
    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 787
    return-void
.end method

.method private updateBattery()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 698
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 700
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    .line 702
    .local v0, "dischargeAmount":I
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 703
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    .line 702
    div-double/2addr v2, v4

    .line 703
    int-to-double v4, v0

    .line 702
    mul-double/2addr v2, v4

    .line 703
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 702
    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 706
    .local v1, "percentOfMax":I
    invoke-static {v1}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPercent:Ljava/lang/String;

    .line 708
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0f107b

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 713
    .end local v0    # "dischargeAmount":I
    .end local v1    # "percentOfMax":I
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 711
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    const v3, 0x7f0f107c

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDynamicPrefs()V
    .locals 5

    .prologue
    const v3, 0x7f0f05e2

    const v2, 0x7f0f05e1

    .line 1169
    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1170
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/applications/DefaultHomePreference;->isHomeDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 1174
    :cond_0
    const-string/jumbo v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1175
    if-eqz v0, :cond_1

    .line 1176
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/applications/DefaultBrowserPreference;->isBrowserDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 1179
    :cond_1
    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_2

    .line 1181
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/applications/DefaultPhonePreference;->isPhoneDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 1184
    :cond_2
    const-string/jumbo v1, "default_emergency_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_3

    .line 1186
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    .line 1187
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1186
    invoke-static {v1, v4}, Lcom/android/settings/applications/DefaultEmergencyPreference;->isEmergencyDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 1189
    :cond_3
    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1190
    if-eqz v0, :cond_4

    .line 1191
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/applications/DefaultSmsPreference;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_4
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 1194
    :cond_4
    const-string/jumbo v1, "system_alert_window"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1195
    if-eqz v0, :cond_5

    .line 1196
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1198
    :cond_5
    const-string/jumbo v1, "picture_in_picture"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1199
    if-eqz v0, :cond_6

    .line 1200
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1201
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    .line 1200
    invoke-static {v1, v2, v3}, Lcom/android/settings/applications/PictureInPictureDetails;->getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 1203
    :cond_6
    const-string/jumbo v1, "write_settings_apps"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1204
    if-eqz v0, :cond_7

    .line 1205
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1207
    :cond_7
    const-string/jumbo v1, "install_other_apps"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1208
    if-eqz v0, :cond_8

    .line 1209
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings/applications/ExternalSourcesDetails;->getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1211
    :cond_8
    return-void

    :cond_9
    move v1, v3

    .line 1172
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 1177
    goto/16 :goto_1

    :cond_b
    move v1, v3

    .line 1182
    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 1187
    goto/16 :goto_3

    :cond_d
    move v2, v3

    .line 1192
    goto :goto_4
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 815
    :goto_0
    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 813
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    const v5, 0x7f0f0b59

    const v2, 0x7f0f0b58

    const v4, 0x7f0f0b33

    const/4 v3, 0x0

    .line 732
    packed-switch p1, :pswitch_data_0

    .line 773
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppButtonsController:Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppButtonsController:Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 734
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 734
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 737
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$4;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 734
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 748
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 748
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 751
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$5;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 748
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 761
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0b51

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 761
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0b52

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 761
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 764
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$6;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$6;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    const v2, 0x7f0f0b32

    .line 761
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 776
    :cond_0
    return-object v3

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 374
    const/16 v0, 0x14

    return v0
.end method

.method synthetic lambda$-com_android_settings_applications_InstalledAppDetails_52028(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    return-void
.end method

.method maybeAddInstantAppButtons()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    const-string/jumbo v1, "instant_app_buttons"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    .line 1147
    .local v0, "buttons":Lcom/android/settings/applications/LayoutPreference;
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 1149
    const v2, 0x7f0a01a2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1150
    new-instance v3, Lcom/android/settings/applications/-$Lambda$uQiCU3kEAQBwhjE41Xw9XFOmQyY;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/-$Lambda$uQiCU3kEAQBwhjE41Xw9XFOmQyY;-><init>(Ljava/lang/Object;)V

    .line 1147
    invoke-interface {v1, p0, v2, v3}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newInstantAppButtonsController(Landroid/app/Fragment;Landroid/view/View;Lcom/android/settings/applications/instantapps/InstantAppButtonsController$ShowDialogDelegate;)Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    move-result-object v1

    .line 1151
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    .line 1147
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/instantapps/InstantAppButtonsController;->show()Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppButtonsController:Lcom/android/settings/applications/instantapps/InstantAppButtonsController;

    .line 1154
    .end local v0    # "buttons":Lcom/android/settings/applications/LayoutPreference;
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 409
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 410
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    .line 411
    return-void

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 414
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->handleHeader()V

    .line 415
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    .line 417
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a00b0

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 415
    invoke-interface {v1, p0, v2}, Lcom/android/settings/applications/ApplicationFeatureProvider;->newAppHeaderController(Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v1

    .line 418
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    .line 415
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/AppHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v1

    .line 419
    const/4 v2, 0x2

    .line 415
    invoke-virtual {v1, v2, v4}, Lcom/android/settings/applications/AppHeaderController;->setButtonActions(II)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/AppHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/applications/AppHeaderController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/AppHeaderController;->bindAppHeaderButtons()Lcom/android/settings/applications/AppHeaderController;

    .line 424
    const-string/jumbo v1, "notification_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    .line 425
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 426
    const-string/jumbo v1, "storage_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    .line 427
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 428
    const-string/jumbo v1, "permission_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    .line 429
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 430
    const-string/jumbo v1, "data_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    .line 431
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 434
    :cond_1
    const-string/jumbo v1, "battery"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    .line 435
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 436
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 437
    const-string/jumbo v1, "memory"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    .line 438
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 440
    const-string/jumbo v1, "preferred_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    .line 441
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4

    .line 442
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/lit8 v1, v1, 0x1

    .line 442
    if-eqz v1, :cond_3

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 451
    :goto_0
    const-string/jumbo v1, "app_version"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mVersionPreference:Landroid/support/v7/preference/Preference;

    .line 453
    const-string/jumbo v1, "instant_app_launch_supported_domain_urls"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppDomainsPreference;

    .line 452
    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppDomainsPreference:Lcom/android/settings/applications/AppDomainsPreference;

    .line 454
    return-void

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 449
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 546
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/applications/AppInfoBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 547
    packed-switch p1, :pswitch_data_0

    .line 564
    :goto_0
    return-void

    .line 549
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v0, :cond_0

    .line 550
    iput-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 551
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 552
    const/4 v2, 0x3

    .line 551
    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 553
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 551
    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 557
    :cond_0
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    invoke-virtual {p0, v3, v3}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->startListeningToPackageRemove()V

    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 886
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v6, :cond_0

    .line 887
    invoke-virtual {p0, v9, v9}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 888
    return-void

    .line 890
    :cond_0
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 891
    .local v2, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_9

    .line 892
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 893
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->stopListeningToPackageRemove()V

    .line 894
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 895
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 896
    .local v4, "uninstallDAIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    .line 897
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    .line 896
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    invoke-virtual {v0, v4, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 899
    return-void

    .line 901
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v4    # "uninstallDAIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 902
    iget v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    .line 901
    invoke-static {v6, v2, v7}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 903
    .local v1, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-nez v6, :cond_3

    .line 904
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v6, v2, v7}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 905
    :goto_0
    if-eqz v1, :cond_4

    xor-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_4

    .line 906
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 936
    .end local v1    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_2
    :goto_1
    return-void

    .line 903
    .restart local v1    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_3
    const/4 v3, 0x1

    .local v3, "uninstallBlockedBySystem":Z
    goto :goto_0

    .line 907
    .end local v3    # "uninstallBlockedBySystem":Z
    :cond_4
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    .line 908
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    .line 912
    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isSingleUser()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 913
    const/4 v5, 0x3

    invoke-virtual {p0, v5, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 915
    :cond_5
    const/4 v5, 0x2

    invoke-virtual {p0, v5, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 918
    :cond_6
    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v7, v9, [Ljava/lang/Object;

    .line 920
    check-cast v5, Ljava/lang/Object;

    aput-object v5, v7, v8

    .line 918
    invoke-virtual {v6, v7}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 922
    :cond_7
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-nez v5, :cond_8

    .line 923
    invoke-direct {p0, v2, v9, v8}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 925
    :cond_8
    invoke-direct {p0, v2, v8, v8}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 927
    .end local v1    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_9
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v5, :cond_2

    .line 928
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a

    .line 930
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 929
    invoke-static {v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 932
    :cond_a
    invoke-virtual {p0, v9, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 348
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 351
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->clearExtraInfo()V

    .line 354
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 355
    const v2, 0x7f08003e

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->addPreferencesFromResource(I)V

    .line 356
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->addDynamicPrefs()V

    .line 358
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    const-string/jumbo v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 359
    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    .line 362
    .local v1, "statsService":Landroid/net/INetworkStatsService;
    :try_start_0
    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v1    # "statsService":Landroid/net/INetworkStatsService;
    :goto_0
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 370
    return-void

    .line 363
    .restart local v1    # "statsService":Landroid/net/INetworkStatsService;
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "statsService":Landroid/net/INetworkStatsService;
    :cond_0
    const-string/jumbo v2, "data_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 496
    const/4 v0, 0x2

    const v1, 0x7f0f0b11

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 498
    const v0, 0x7f0f0b0c

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 500
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 405
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onDestroy()V

    .line 406
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 533
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 541
    return v1

    .line 535
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 536
    return v2

    .line 538
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 539
    return v2

    .line 533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPackageRemoved()V
    .locals 2

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    .line 1261
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onPackageRemoved()V

    .line 1262
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 399
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onPause()V

    .line 400
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 947
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 948
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 976
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 950
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    .line 951
    const v1, 0x7f0f0f87

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 953
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->startManagePermissionsActivity()V

    goto :goto_0

    .line 954
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 955
    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 956
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_4

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 958
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 957
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;Z)V

    goto :goto_0

    .line 959
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 960
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    const v1, 0x7f0f1028

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 961
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_6

    .line 962
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 964
    .local v4, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 965
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPercent:Ljava/lang/String;

    move-object v1, p0

    .line 964
    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V

    goto :goto_0

    .line 974
    .end local v4    # "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    :cond_6
    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 504
    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v4, :cond_0

    .line 505
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x1

    .line 508
    .local v0, "showIt":Z
    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v4, :cond_4

    .line 509
    const/4 v0, 0x0

    .line 521
    :cond_1
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 522
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_a

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 523
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 524
    .local v1, "uninstallUpdatesItem":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    xor-int/lit8 v3, v2, 0x1

    :cond_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 525
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 527
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 526
    invoke-static {v2, v1, v3}, Lcom/android/settingslib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 529
    :cond_3
    return-void

    .line 510
    .end local v1    # "uninstallUpdatesItem":Landroid/view/MenuItem;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v4, :cond_5

    .line 511
    const/4 v0, 0x0

    goto :goto_0

    .line 512
    :cond_5
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 513
    const/4 v0, 0x0

    goto :goto_0

    .line 514
    :cond_6
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 515
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 516
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_9

    .line 517
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :cond_9
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v6, :cond_1

    .line 519
    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    move v2, v3

    .line 522
    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 379
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onResume()V

    .line 380
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    .line 381
    return-void

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 384
    new-instance v0, Lcom/android/settingslib/AppItem;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v1}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 385
    .local v0, "app":Lcom/android/settingslib/AppItem;
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 386
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v2

    .line 389
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 387
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 391
    :cond_1
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 392
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 393
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateDynamicPrefs()V

    .line 394
    return-void
.end method

.method prepareInstantAppPrefs()V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 572
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 573
    .local v2, "isInstant":Z
    if-eqz v2, :cond_0

    .line 574
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 575
    .local v0, "handledDomainSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 576
    .local v1, "handledDomains":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppDomainsPreference:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 578
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppDomainsPreference:Lcom/android/settings/applications/AppDomainsPreference;

    array-length v4, v1

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppDomainsPreference;->setValues([I)V

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 583
    .end local v0    # "handledDomainSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "handledDomains":[Ljava/lang/String;
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInstantAppDomainsPreference:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method protected refreshUi()Z
    .locals 13

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 624
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v9, :cond_0

    .line 625
    const/4 v9, 0x0

    return v9

    .line 628
    :cond_0
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v9, :cond_1

    .line 629
    const/4 v9, 0x0

    return v9

    .line 633
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v4, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 635
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 636
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 637
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 638
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 639
    .local v0, "activityPkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 643
    .local v7, "metadata":Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 644
    const-string/jumbo v9, "android.app.home.alternate"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 645
    .local v6, "metaPkg":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/android/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 646
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 636
    .end local v6    # "metaPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "activityPkg":Ljava/lang/String;
    .end local v7    # "metadata":Landroid/os/Bundle;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 652
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v9}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 653
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->prepareInstantAppPrefs()V

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 658
    .local v2, "context":Landroid/app/Activity;
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v10, v2}, Lcom/android/settings/applications/AppStorageSettings;->getSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 661
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 660
    invoke-static {v9, v10, v11}, Lcom/android/settings/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    .line 662
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 663
    iget-object v12, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 662
    invoke-static {v10, v11, v12, v2}, Lcom/android/settingslib/applications/AppUtils;->getLaunchByDefaultSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/support/v7/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 665
    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 664
    invoke-static {v10, v2, v11}, Lcom/android/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    if-eqz v9, :cond_4

    .line 667
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 670
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateBattery()V

    .line 672
    iget-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v9, :cond_7

    .line 674
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 675
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 694
    :cond_5
    const/4 v9, 0x1

    return v9

    .line 675
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 680
    :cond_7
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 681
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2200

    .line 680
    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 683
    .local v1, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v9, :cond_5

    .line 687
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_8
    const/4 v9, 0x0

    goto :goto_2

    .line 689
    .end local v1    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 690
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x0

    return v9
.end method
