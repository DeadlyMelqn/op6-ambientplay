.class public Lcom/android/settings/applications/ManageApplications;
.super Lcom/android/settings/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$1;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;,
        Lcom/android/settings/applications/ManageApplications$SectionInfo;,
        Lcom/android/settings/applications/ManageApplications$SummaryProvider;
    }
.end annotation


# static fields
.field private static final ADVANCED_SETTINGS:I = 0x2

.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field static final DEBUG:Z

.field public static final EXTRA_CLASSNAME:Ljava/lang/String; = "classname"

.field private static final EXTRA_FILTER_MODE:Ljava/lang/String; = "filterMode"

.field private static final EXTRA_HAS_BRIDGE:Ljava/lang/String; = "hasBridge"

.field private static final EXTRA_HAS_ENTRIES:Ljava/lang/String; = "hasEntries"

.field private static final EXTRA_SHOW_SYSTEM:Ljava/lang/String; = "showSystem"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final EXTRA_STORAGE_TYPE:Ljava/lang/String; = "storageType"

.field public static final EXTRA_VOLUME_NAME:Ljava/lang/String; = "volumeName"

.field public static final EXTRA_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTERS_SCREENCUTTING:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APPS_ALL:I = 0x2

.field public static final FILTER_APPS_BACKGROUND_OPTIMIZE_ALL:I = 0x10

.field public static final FILTER_APPS_BACKGROUND_OPTIMIZE_NOT:I = 0x11

.field public static final FILTER_APPS_BLOCKED:I = 0x5

.field public static final FILTER_APPS_DISABLED:I = 0x4

.field public static final FILTER_APPS_DISPLAY_SIZE_ADAPTION_ALL:I = 0x13

.field public static final FILTER_APPS_DISPLAY_SIZE_ADAPTION_FULL_SCREEN:I = 0x14

.field public static final FILTER_APPS_DISPLAY_SIZE_ADAPTION_ORIGINAL_SIZE:I = 0x15

.field public static final FILTER_APPS_ENABLED:I = 0x3

.field public static final FILTER_APPS_HIDE_NOTIFICATIONS:I = 0x8

.field public static final FILTER_APPS_INSTALL_SOURCES:I = 0x12

.field public static final FILTER_APPS_PERSONAL:I = 0xa

.field public static final FILTER_APPS_POWER_WHITELIST:I = 0x0

.field public static final FILTER_APPS_POWER_WHITELIST_ALL:I = 0x1

.field public static final FILTER_APPS_PRIORITY:I = 0x9

.field public static final FILTER_APPS_SENSITIVE:I = 0x7

.field public static final FILTER_APPS_SILENT:I = 0x6

.field public static final FILTER_APPS_USAGE_ACCESS:I = 0xd

.field public static final FILTER_APPS_WITH_DOMAIN_URLS:I = 0xc

.field public static final FILTER_APPS_WITH_OVERLAY:I = 0xe

.field public static final FILTER_APPS_WORK:I = 0xb

.field public static final FILTER_APPS_WRITE_SETTINGS:I = 0xf

.field public static final FILTER_LABELS:[I

.field public static final FILTER_LABELS_SCREENCUTTING:[I

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field public static final LIST_TYPE_BACKGROUND_OPTIMIZE:I = 0xb

.field public static final LIST_TYPE_DISPLAY_SIZE_ADAPION:I = 0xc

.field public static final LIST_TYPE_DOMAINS_URLS:I = 0x2

.field public static final LIST_TYPE_GAMES:I = 0x9

.field public static final LIST_TYPE_HIGH_POWER:I = 0x5

.field public static final LIST_TYPE_MAIN:I = 0x0

.field public static final LIST_TYPE_MANAGE_SOURCES:I = 0x8

.field public static final LIST_TYPE_MOVIES:I = 0xa

.field public static final LIST_TYPE_NOTIFICATION:I = 0x1

.field public static final LIST_TYPE_OVERLAY:I = 0x6

.field public static final LIST_TYPE_STORAGE:I = 0x3

.field public static final LIST_TYPE_USAGE_ACCESS:I = 0x4

.field public static final LIST_TYPE_WRITE_SETTINGS:I = 0x7

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final STORAGE_TYPE_DEFAULT:I = 0x0

.field public static final STORAGE_TYPE_MUSIC:I = 0x1

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field static final TAG:Ljava/lang/String; = "ManageApplications"


# instance fields
.field private curPosition:I

.field private emptyView:Landroid/view/View;

.field public mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field public mFilter:I

.field private mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFinishAfterDialog:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSystem:Z

.field private mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field private mStorageType:I

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mVolumeName:Ljava/lang/String;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/ListView;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/applications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/applications/ManageApplications;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ManageApplications;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/16 v4, 0x16

    .line 135
    const-string/jumbo v0, "ManageApplications"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    .line 191
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    .line 223
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS_SCREENCUTTING:[I

    .line 256
    new-array v0, v4, [Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 257
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 258
    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 257
    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    aput-object v1, v0, v6

    .line 259
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 260
    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 259
    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    aput-object v1, v0, v7

    .line 261
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v8

    .line 262
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v5

    .line 263
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 264
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 266
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 267
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 268
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 269
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 270
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 271
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 272
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 273
    sget-object v1, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 274
    sget-object v1, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 275
    sget-object v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 277
    sget-object v1, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 278
    sget-object v1, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 280
    sget-object v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 282
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 283
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_FULL_SCREEN:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 284
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_ORIGINAL_SIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 256
    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 288
    new-array v0, v4, [Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 289
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 290
    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 289
    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    aput-object v1, v0, v6

    .line 291
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 292
    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 291
    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    aput-object v1, v0, v7

    .line 293
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v8

    .line 294
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v5

    .line 295
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 296
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 298
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 299
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 300
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 301
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 302
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 303
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 304
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 305
    sget-object v1, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 306
    sget-object v1, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 307
    sget-object v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 309
    sget-object v1, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 310
    sget-object v1, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 312
    sget-object v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 314
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 315
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_DEFAULT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 316
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_FULL_SCREEN:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 288
    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS_SCREENCUTTING:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1795
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ManageApplications$1;-><init>()V

    .line 1794
    sput-object v0, Lcom/android/settings/applications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 131
    return-void

    .line 191
    nop

    :array_0
    .array-data 4
        0x7f0f1074
        0x7f0f1038
        0x7f0f1038
        0x7f0f1039
        0x7f0f0b26
        0x7f0f103c
        0x7f0f1041
        0x7f0f103f
        0x7f0f1040
        0x7f0f103e
        0x7f0f103a
        0x7f0f103b
        0x7f0f103d
        0x7f0f1038
        0x7f0f10c7
        0x7f0f10cd
        0x7f0f1038
        0x7f0f040c
        0x7f0f1271
        0x7f0f1038
        0x7f0f045d
        0x7f0f045e
    .end array-data

    .line 223
    :array_1
    .array-data 4
        0x7f0f1074
        0x7f0f1038
        0x7f0f1038
        0x7f0f1039
        0x7f0f0b26
        0x7f0f103c
        0x7f0f1041
        0x7f0f103f
        0x7f0f1040
        0x7f0f103e
        0x7f0f103a
        0x7f0f103b
        0x7f0f103d
        0x7f0f1038
        0x7f0f10c7
        0x7f0f10cd
        0x7f0f1038
        0x7f0f040c
        0x7f0f1271
        0x7f0f1038
        0x7f0f04c9
        0x7f0f02b4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 321
    const v0, 0x7f0a0453

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 382
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 965
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->curPosition:I

    .line 131
    return-void
.end method

.method private createHeader()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 528
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f0a0148

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 529
    .local v2, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 530
    const v5, 0x7f040031

    .line 529
    invoke-virtual {v4, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    .line 531
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v5, 0x7f0a00c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    .line 533
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v5, 0x7f0a00c9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 535
    new-instance v4, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    .line 536
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 537
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 538
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v2, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 540
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getDefaultFilter()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 541
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v4, :cond_1

    .line 543
    const/4 v3, 0x0

    .line 544
    .local v3, "showWorkApps":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->hasMultiAppProfiles(Landroid/os/UserManager;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 546
    const/4 v3, 0x1

    .line 553
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 554
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 555
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v4, v9}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 558
    .end local v3    # "showWorkApps":Z
    :cond_1
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v4, v7, :cond_2

    .line 559
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v4, v8}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 567
    :cond_2
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v4, v8, :cond_3

    .line 568
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v4, v7}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 570
    :cond_3
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 571
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    new-instance v5, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setOverrideFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 574
    :cond_4
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    iget v5, p0, Lcom/android/settings/applications/ManageApplications;->mStorageType:I

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/settings/applications/ManageApplications;->getCompositeFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v1

    .line 575
    .local v1, "compositeFilter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    if-eqz v1, :cond_5

    .line 576
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setCompositeFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 579
    :cond_5
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v4, v9, :cond_6

    .line 580
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 581
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 585
    :cond_6
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_7

    .line 586
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 587
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 588
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 591
    :cond_7
    return-void

    .line 549
    .end local v1    # "compositeFilter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .restart local v3    # "showWorkApps":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 550
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method static getCompositeFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .locals 4
    .param p0, "listType"    # I
    .param p1, "storageType"    # I
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 595
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;

    invoke-direct {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    .line 597
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 598
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .end local v0    # "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .local v1, "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    move-object v0, v1

    .line 602
    .end local v1    # "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .restart local v0    # "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    :goto_0
    return-object v0

    .line 600
    :cond_0
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .end local v0    # "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .restart local v1    # "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    move-object v0, v1

    .end local v1    # "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .restart local v0    # "filter":Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    goto :goto_0

    .line 604
    :cond_1
    const/16 v2, 0x9

    if-ne p0, v2, :cond_2

    .line 605
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object v2

    .line 606
    :cond_2
    const/16 v2, 0xa

    if-ne p0, v2, :cond_3

    .line 607
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v3, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object v2

    .line 610
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private getDefaultFilter()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 645
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 625
    :pswitch_1
    const/16 v0, 0xc

    return v0

    .line 627
    :pswitch_2
    const/16 v0, 0xd

    return v0

    .line 629
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 631
    :pswitch_4
    const/16 v0, 0xe

    return v0

    .line 633
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 635
    :pswitch_6
    const/16 v0, 0x12

    return v0

    .line 638
    :pswitch_7
    const/16 v0, 0x10

    return v0

    .line 642
    :pswitch_8
    const/16 v0, 0x13

    return v0

    .line 623
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private isFastScrollEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 650
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 659
    :pswitch_0
    return v0

    .line 657
    :pswitch_1
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v2, 0x7f0a0453

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 650
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 6
    .param p2, "titleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    .line 843
    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    .line 842
    invoke-static/range {v0 .. v5}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    .line 844
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 784
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 836
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    const v2, 0x7f0f0afa

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 786
    :pswitch_0
    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    .line 787
    const v2, 0x7f0f0f87

    .line 786
    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 790
    :pswitch_1
    const-class v1, Lcom/android/settings/applications/AppLaunchSettings;

    const v2, 0x7f0f0afc

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 793
    :pswitch_2
    const-class v1, Lcom/android/settings/applications/UsageAccessDetails;

    const v2, 0x7f0f1064

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 796
    :pswitch_3
    const-class v1, Lcom/android/settings/applications/AppStorageSettings;

    const v2, 0x7f0f0977

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 799
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 800
    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mFinishAfterDialog:Z

    .line 799
    invoke-static {p0, v1, v3, v2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 803
    :pswitch_5
    const-class v1, Lcom/android/settings/applications/DrawOverlayDetails;

    const v2, 0x7f0f10c5

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 806
    :pswitch_6
    const-class v1, Lcom/android/settings/applications/WriteSettingsDetails;

    const v2, 0x7f0f10cf

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 809
    :pswitch_7
    const-class v1, Lcom/android/settings/applications/ExternalSourcesDetails;

    const v2, 0x7f0f018b

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 813
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 814
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 815
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mFinishAfterDialog:Z

    invoke-static {p0, v1, v3, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 823
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_9
    const-class v1, Lcom/android/settings/applications/AppStorageSettings;

    const v2, 0x7f0f1240

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 826
    :pswitch_a
    const-class v1, Lcom/android/settings/applications/AppStorageSettings;

    const v2, 0x7f0f1241

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 830
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mFinishAfterDialog:Z

    invoke-static {p0, v1, v3, v2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 3

    .prologue
    const/16 v2, 0xdd

    const/16 v1, 0x41

    .line 665
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 698
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 667
    :pswitch_1
    return v1

    .line 669
    :pswitch_2
    const/16 v0, 0x85

    return v0

    .line 671
    :pswitch_3
    const/16 v0, 0x8f

    return v0

    .line 673
    :pswitch_4
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mStorageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 674
    const/16 v0, 0x347

    return v0

    .line 676
    :cond_0
    const/16 v0, 0xb6

    return v0

    .line 678
    :pswitch_5
    const/16 v0, 0x346

    return v0

    .line 680
    :pswitch_6
    const/16 v0, 0x3a7

    return v0

    .line 682
    :pswitch_7
    const/16 v0, 0x5f

    return v0

    .line 684
    :pswitch_8
    const/16 v0, 0xb8

    return v0

    .line 686
    :pswitch_9
    return v2

    .line 688
    :pswitch_a
    return v2

    .line 691
    :pswitch_b
    return v1

    .line 695
    :pswitch_c
    return v1

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 761
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 762
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_1

    .line 763
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 771
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mFinishAfterDialog:Z

    if-eqz v0, :cond_4

    .line 772
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 766
    :cond_3
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    .line 768
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 777
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0

    .line 774
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0a0454

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 390
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 391
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 395
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 396
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string/jumbo v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    :goto_0
    if-nez v1, :cond_0

    .line 398
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 400
    :cond_0
    const-class v3, Lcom/android/settings/Settings$AllApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 401
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    .line 452
    :cond_1
    :goto_1
    if-eqz p1, :cond_11

    .line 453
    const-string/jumbo v3, "sortOrder"

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 454
    const-string/jumbo v3, "showSystem"

    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    .line 455
    const-string/jumbo v3, "filterMode"

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    .line 460
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f0b43

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 462
    new-instance v3, Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/applications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    .line 463
    return-void

    .line 396
    :cond_2
    const/4 v1, 0x0

    .local v1, "className":Ljava/lang/String;
    goto :goto_0

    .line 402
    .end local v1    # "className":Ljava/lang/String;
    :cond_3
    const-class v3, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 403
    iput v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 404
    new-instance v3, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    goto :goto_1

    .line 405
    :cond_4
    const-class v3, Lcom/android/settings/Settings$DomainsURLsAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 406
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto :goto_1

    .line 407
    :cond_5
    const-class v3, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 408
    if-eqz v0, :cond_6

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 409
    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 410
    const-string/jumbo v3, "volumeName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    .line 411
    const-string/jumbo v3, "storageType"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mStorageType:I

    .line 412
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 417
    :goto_3
    iput v6, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_1

    .line 415
    :cond_6
    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto :goto_3

    .line 418
    :cond_7
    const-class v3, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 419
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_1

    .line 420
    :cond_8
    const-class v3, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 421
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 423
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_1

    .line 424
    :cond_9
    const-class v3, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 425
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_1

    .line 426
    :cond_a
    const-class v3, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 427
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_1

    .line 429
    :cond_b
    const-class v3, Lcom/android/settings/Settings$ManageExternalSourcesActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 430
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_1

    .line 431
    :cond_c
    const-class v3, Lcom/android/settings/Settings$BgOptimizeAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 432
    const/16 v3, 0xb

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_1

    .line 434
    :cond_d
    const-class v3, Lcom/android/settings/Settings$GamesStorageActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 435
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 436
    iput v6, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_1

    .line 437
    :cond_e
    const-class v3, Lcom/android/settings/Settings$MoviesStorageActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 438
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 439
    iput v6, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_1

    .line 441
    :cond_f
    const-class v3, Lcom/android/settings/Settings$DisplaySizeAdaptionAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 442
    const/16 v3, 0xc

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 443
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_1

    .line 449
    :cond_10
    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_1

    .line 457
    :cond_11
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 849
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 851
    :cond_0
    return-void

    .line 853
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_2

    .line 854
    const v0, 0x7f0f0eaf

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 853
    invoke-static {v1, p1, v0, v2}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 855
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 856
    const v0, 0x7f140002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 857
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 858
    return-void

    .line 854
    :cond_2
    const v0, 0x7f0f0eae

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 470
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 472
    const v4, 0x7f0400b6

    invoke-virtual {p1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 473
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f0a01af

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 474
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f0a01ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 476
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 480
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->emptyView:Landroid/view/View;

    .line 482
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 483
    .local v2, "lv":Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->emptyView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->emptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 486
    :cond_0
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 487
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 488
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 489
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 490
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 493
    new-instance v0, Landroid/widget/TextView;

    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 494
    .local v0, "header":Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0153

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 496
    .local v1, "height":I
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 497
    .local v3, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0, v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 499
    new-instance v4, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v6, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-direct {v4, p0, v5, p0, v6}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications;I)V

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 500
    if-eqz p3, :cond_1

    .line 501
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 502
    const-string/jumbo v5, "hasEntries"

    invoke-virtual {p3, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 501
    invoke-static {v4, v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 503
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 504
    const-string/jumbo v5, "hasBridge"

    invoke-virtual {p3, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 503
    invoke-static {v4, v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 506
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 507
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 508
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 510
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v4, v5, v7}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 515
    .end local v0    # "header":Landroid/widget/TextView;
    .end local v1    # "height":I
    .end local v2    # "lv":Landroid/widget/ListView;
    .end local v3    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    instance-of v4, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v4, :cond_3

    .line 516
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v8, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 519
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->createHeader()V

    .line 521
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v4, p3}, Lcom/android/settings/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 523
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 745
    :cond_0
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onDestroy()V

    .line 746
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 868
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 751
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onDestroyView()V

    .line 753
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 756
    :cond_0
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 757
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 v2, p3, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 957
    .local v1, "reallPosition":I
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 958
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 959
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 960
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    .line 961
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 963
    .end local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 968
    if-nez p3, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->curPosition:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    if-eq v0, v3, :cond_0

    .line 969
    iput p3, p0, Lcom/android/settings/applications/ManageApplications;->curPosition:I

    .line 970
    return-void

    .line 972
    :cond_0
    iput p3, p0, Lcom/android/settings/applications/ManageApplications;->curPosition:I

    .line 973
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    .line 974
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setFilter(I)V

    .line 976
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 980
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->emptyView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 983
    :cond_2
    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_3
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 898
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    .line 899
    .local v10, "menuId":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 946
    return v1

    .line 902
    :sswitch_0
    iput v10, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 903
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 904
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 948
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 949
    return v11

    .line 910
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    .line 911
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0

    .line 914
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/ResetAppsHelper;->buildResetDialog()V

    .line 915
    return v11

    .line 917
    :sswitch_3
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v11, :cond_1

    .line 918
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 919
    const-class v1, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 920
    const v3, 0x7f0f04c6

    move-object v4, v2

    move-object v5, p0

    .line 918
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 926
    :goto_1
    return v11

    .line 922
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 923
    const-class v1, Lcom/android/settings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0f1043

    move-object v4, v2

    move-object v5, p0

    .line 922
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 929
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 930
    return v11

    .line 934
    :sswitch_5
    const/4 v8, 0x0

    .line 936
    .local v8, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.settings.action.BACKGROUND_OPTIMIZE_SWITCH"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    .local v9, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v0, "classname"

    .end local v8    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/Settings$BgOptimizeSwitchActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 942
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_2
    return v11

    .line 939
    .restart local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 940
    .end local v8    # "intent":Landroid/content/Intent;
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    :goto_3
    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No activity found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 939
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    move-object v8, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    goto :goto_3

    .line 899
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f0a0450 -> :sswitch_3
        0x7f0a0451 -> :sswitch_1
        0x7f0a0452 -> :sswitch_1
        0x7f0a0453 -> :sswitch_0
        0x7f0a0454 -> :sswitch_0
        0x7f0a0455 -> :sswitch_2
        0x7f0a0456 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 726
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 727
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 730
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 863
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 704
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 705
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateView()V

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 707
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 709
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-wrap2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    .line 711
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 715
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 716
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 717
    const-string/jumbo v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 718
    const-string/jumbo v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 719
    const-string/jumbo v0, "hasEntries"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get3(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    const-string/jumbo v0, "hasBridge"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 721
    const-string/jumbo v0, "filterMode"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 722
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 734
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStop()V

    .line 735
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/ResetAppsHelper;->stop()V

    .line 736
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 615
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 616
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0148

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 618
    .local v5, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    const/4 v4, -0x1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/ViewGroup;)V

    .line 620
    .end local v5    # "pinnedHeader":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 2
    .param p1, "hasDisabledApps"    # Z

    .prologue
    .line 999
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v0, :cond_0

    .line 1000
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 1003
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 1004
    return-void
.end method

.method updateOptionsMenu()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 871
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 872
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f0a0450

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 876
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 875
    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 878
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f0a0453

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v5, :cond_4

    .line 879
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v4, 0x7f0a0453

    if-eq v0, v4, :cond_3

    move v0, v1

    .line 878
    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 880
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f0a0454

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v5, :cond_6

    .line 881
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v4, 0x7f0a0454

    if-eq v0, v4, :cond_5

    move v0, v1

    .line 880
    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 883
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f0a0451

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-nez v0, :cond_8

    .line 884
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v0, v6, :cond_7

    move v0, v1

    .line 883
    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 885
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f0a0452

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v0, :cond_a

    .line 886
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v0, v6, :cond_9

    move v0, v1

    .line 885
    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 888
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f0a0456

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v3, v7, :cond_b

    :goto_5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 889
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v7, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a0451

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 891
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a0455

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 894
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 876
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 879
    goto :goto_1

    :cond_4
    move v0, v2

    .line 878
    goto :goto_1

    :cond_5
    move v0, v2

    .line 881
    goto :goto_2

    :cond_6
    move v0, v2

    .line 880
    goto :goto_2

    :cond_7
    move v0, v2

    .line 884
    goto :goto_3

    :cond_8
    move v0, v2

    .line 883
    goto :goto_3

    :cond_9
    move v0, v2

    .line 886
    goto :goto_4

    :cond_a
    move v0, v2

    .line 885
    goto :goto_4

    :cond_b
    move v1, v2

    .line 888
    goto :goto_5
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 992
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 993
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 996
    :cond_0
    return-void
.end method
