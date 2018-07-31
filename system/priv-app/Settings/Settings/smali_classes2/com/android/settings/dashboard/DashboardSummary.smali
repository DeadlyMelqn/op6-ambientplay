.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/android/settings/InstrumentedFragment;
.source "DashboardSummary.java"

# interfaces
.implements Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;
.implements Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;
.implements Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$1;,
        Lcom/android/settings/dashboard/DashboardSummary$2;,
        Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;,
        Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;,
        Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;
    }
.end annotation


# static fields
.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_CATAGORY:Ljava/lang/String; = "com.android.settings.category.custom"

.field public static final DEBUG:Z = false

.field private static final DEBUG_TIMING:Z = true

.field private static final EXTRA_SCROLL_POSITION:Ljava/lang/String; = "scroll_position"

.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field public static final INITIAL_ITEMS:[Ljava/lang/String;

.field private static final SETTING_PKG:Ljava/lang/String; = "com.android.settings"

.field private static final SUGGESTIONS:Ljava/lang/String; = "suggestions"

.field private static final TAG:Ljava/lang/String; = "DashboardSummary"

.field private static final WIRELESS_CATAGORY:Ljava/lang/String; = "com.android.settings.category.wireless"

.field private static mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

.field private mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

.field private mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

.field private mCustomTileIconResources:[I

.field private mCustomTileIntentResources:[Ljava/lang/String;

.field private mCustomTileLabelResources:[I

.field private mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

.field private mSuggestionsChecks:Lcom/android/settings/dashboard/SuggestionsChecks;

.field private mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

.field private mWirelessTileIconResources:[I

.field private mWirelessTileIntentResources:[Ljava/lang/String;

.field private mWirelessTileLabelResources:[I


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/net/Uri;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settingslib/SuggestionParser;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/SuggestionsChecks;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/settings/dashboard/SuggestionsChecks;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/dashboard/DashboardSummary;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 86
    const-class v1, Lcom/android/settings/Settings$WifiSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 87
    const-class v1, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 90
    const-class v1, Lcom/android/settings/Settings$OPSimAndNetworkSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 92
    const-class v1, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 93
    const-class v1, Lcom/android/settings/Settings$ManageApplicationsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 94
    const-class v1, Lcom/android/settings/Settings$StorageSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 85
    sput-object v0, Lcom/android/settings/dashboard/DashboardSummary;->INITIAL_ITEMS:[Ljava/lang/String;

    .line 433
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$2;

    invoke-direct {v0}, Lcom/android/settings/dashboard/DashboardSummary$2;-><init>()V

    .line 432
    sput-object v0, Lcom/android/settings/dashboard/DashboardSummary;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 111
    const-string/jumbo v0, "content://com.oneplus.ap.upgrader.provider/all_download_files"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;

    .line 119
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 389
    const v0, 0x7f0f0812

    .line 390
    const v1, 0x7f0f07b2

    .line 391
    const v2, 0x7f0f02eb

    .line 392
    const v3, 0x7f0f0d99

    .line 393
    const v4, 0x7f0f06c9

    .line 388
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mWirelessTileLabelResources:[I

    .line 396
    const v0, 0x7f020257

    .line 397
    const v1, 0x7f020230

    .line 398
    const v2, 0x7f02030d

    .line 399
    const v3, 0x7f020238

    .line 400
    const v4, 0x7f020243

    .line 395
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mWirelessTileIconResources:[I

    .line 402
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 403
    const-string/jumbo v1, "com.android.settings.Settings$WifiSettingsActivity"

    aput-object v1, v0, v5

    .line 404
    const-string/jumbo v1, "com.android.settings.Settings$BluetoothSettingsActivity"

    aput-object v1, v0, v6

    .line 405
    const-string/jumbo v1, "com.android.settings.Settings$OPSimAndNetworkSettings"

    aput-object v1, v0, v7

    .line 406
    const-string/jumbo v1, "com.android.settings.Settings$OPDataUsageSummaryActivity"

    aput-object v1, v0, v8

    .line 407
    const-string/jumbo v1, "com.android.settings.Settings$WirelessSettingsActivity"

    aput-object v1, v0, v9

    .line 402
    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mWirelessTileIntentResources:[Ljava/lang/String;

    .line 411
    const v0, 0x7f0f02a7

    .line 412
    const v1, 0x7f0f0570

    .line 413
    const v2, 0x7f0f026d

    .line 414
    const v3, 0x7f0f02e1

    .line 410
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mCustomTileLabelResources:[I

    .line 417
    const v0, 0x7f0201de

    .line 418
    const v1, 0x7f020233

    .line 419
    const v2, 0x7f02023d

    .line 420
    const v3, 0x7f020313

    .line 416
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mCustomTileIconResources:[I

    .line 423
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 424
    const-string/jumbo v1, "com.android.settings.Settings$OPNotificationAndNotdisturbSettingsActivity"

    aput-object v1, v0, v5

    .line 425
    const-string/jumbo v1, "com.android.settings.Settings$OPButtonsSettingsActivity"

    aput-object v1, v0, v6

    .line 426
    const-string/jumbo v1, "com.android.settings.Settings$OPGestureSettingsActivity"

    aput-object v1, v0, v7

    .line 427
    const-string/jumbo v1, "com.android.settings.Settings$OPStatusBarCustomizeSettingsActivity"

    aput-object v1, v0, v8

    .line 428
    const-string/jumbo v1, "com.android.settings.Settings$OPFontStyleSettingsActivity"

    aput-object v1, v0, v9

    .line 429
    const-string/jumbo v1, "com.android.settings.Settings$OPDefaultHomeSettingsActivity"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 423
    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mCustomTileIntentResources:[Ljava/lang/String;

    .line 75
    return-void
.end method

.method private createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "categoryKey"    # Ljava/lang/String;

    .prologue
    .line 493
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    .line 494
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iput-object p2, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 495
    const-string/jumbo v1, "com.android.settings.category.wireless"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f05f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 498
    :cond_0
    const-string/jumbo v1, "com.android.settings.category.custom"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f037f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 503
    :cond_1
    return-object v0
.end method

.method private initDashboard()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 442
    .local v4, "startTime":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v8, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardSummary;->mCustomTileLabelResources:[I

    array-length v9, v9

    if-ge v3, v9, :cond_1

    .line 444
    new-instance v6, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {v6}, Lcom/android/settingslib/drawer/Tile;-><init>()V

    .line 445
    .local v6, "tile":Lcom/android/settingslib/drawer/Tile;
    const-string/jumbo v9, "com.android.settings.category.custom"

    iput-object v9, v6, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 446
    const-string/jumbo v9, "com.android.settings"

    iget-object v10, p0, Lcom/android/settings/dashboard/DashboardSummary;->mCustomTileIconResources:[I

    aget v10, v10, v3

    invoke-static {v9, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 448
    if-nez v3, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f04b4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 454
    :goto_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.android.settings"

    iget-object v11, p0, Lcom/android/settings/dashboard/DashboardSummary;->mCustomTileIntentResources:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 455
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/dashboard/DashboardSummary;->mCustomTileLabelResources:[I

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_1

    .line 458
    .end local v6    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardSummary;->mWirelessTileLabelResources:[I

    array-length v9, v9

    if-ge v3, v9, :cond_4

    .line 459
    new-instance v6, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {v6}, Lcom/android/settingslib/drawer/Tile;-><init>()V

    .line 460
    .restart local v6    # "tile":Lcom/android/settingslib/drawer/Tile;
    const-string/jumbo v9, "com.android.settings.category.wireless"

    iput-object v9, v6, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 461
    const-string/jumbo v9, "com.android.settings"

    iget-object v10, p0, Lcom/android/settings/dashboard/DashboardSummary;->mWirelessTileIconResources:[I

    aget v10, v10, v3

    invoke-static {v9, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/dashboard/DashboardSummary;->mWirelessTileLabelResources:[I

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 463
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.android.settings"

    iget-object v11, p0, Lcom/android/settings/dashboard/DashboardSummary;->mWirelessTileIntentResources:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, v6, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 464
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f02eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0d99

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 464
    if-eqz v9, :cond_3

    .line 458
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 469
    :cond_3
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 471
    .end local v6    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 472
    .local v2, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "tile$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/Tile;

    .line 473
    .restart local v6    # "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v9, v6, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 474
    .local v1, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    const-string/jumbo v9, "DashboardSummary"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oneplus-- initDashboard--title:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string/jumbo v9, "DashboardSummary"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oneplus-- initDashboard--category:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-nez v1, :cond_6

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, v6, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/settings/dashboard/DashboardSummary;->createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v1

    .line 478
    if-nez v1, :cond_5

    .line 479
    const-string/jumbo v9, "DashboardSummary"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Couldn\'t find category "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 482
    :cond_5
    iget-object v9, v1, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_6
    invoke-virtual {v1, v6}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_4

    .line 486
    .end local v1    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v6    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 487
    .local v0, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    const-string/jumbo v9, "DashboardSummary"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "oneplus-- initDashboard:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    .line 487
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 488
    const-string/jumbo v11, " ms"

    .line 487
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-object v0
.end method

.method private rebuildUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    const-string/jumbo v1, "DashboardSummary"

    const-string/jumbo v4, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    .line 355
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 358
    .local v2, "startTime":J
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getEarlyDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 359
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    if-nez v0, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->initDashboard()Ljava/util/List;

    move-result-object v0

    .line 376
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->setCategories(Ljava/util/List;)V

    .line 378
    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/DashboardSummary$SuggestionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 384
    return-void

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, v6}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 367
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 369
    :cond_2
    iput-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 370
    new-instance v1, Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/settings/dashboard/SummaryLoader;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 371
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setAdapter(Lcom/android/settings/dashboard/DashboardAdapter;)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 192
    const/16 v0, 0x23

    return v0
.end method

.method public onCategoriesChanged()V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 510
    return-void
.end method

.method public onConditionsChanged()V
    .locals 3

    .prologue
    .line 514
    const-string/jumbo v1, "DashboardSummary"

    const-string/jumbo v2, "onConditionsChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Looper;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardAdapter;->setConditions(Ljava/util/List;)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getView()Landroid/view/View;

    move-result-object v0

    .line 519
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 520
    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$3;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardSummary$3;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 198
    .local v2, "startTime":J
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v5}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 207
    new-instance v1, Lcom/android/settingslib/SuggestionParser;

    .line 208
    const-string/jumbo v4, "suggestions"

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const v5, 0x7f0800a8

    .line 207
    invoke-direct {v1, v0, v4, v5}, Lcom/android/settingslib/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    .line 209
    new-instance v1, Lcom/android/settings/dashboard/SuggestionsChecks;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/dashboard/SuggestionsChecks;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionsChecks:Lcom/android/settings/dashboard/SuggestionsChecks;

    .line 210
    const-string/jumbo v1, "DashboardSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 211
    const-string/jumbo v5, " ms"

    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mResolver:Landroid/content/ContentResolver;

    .line 214
    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    .line 215
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->startObserving()V

    .line 217
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    const v0, 0x7f040062

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SummaryLoader;->release()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSystemUpdateObserver:Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->stopObserving()V

    .line 229
    :cond_1
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onDestroy()V

    .line 230
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    const-string/jumbo v0, "scroll_position"

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    return-void
.end method

.method public onStart()V
    .locals 12

    .prologue
    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 243
    .local v4, "startTime":J
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStart()V

    .line 245
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardAdapter;->getLte4GEnabler()Lcom/android/settings/Lte4GEnabler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/Lte4GEnabler;->resume()V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v7, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 247
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v7, :cond_0

    .line 248
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 250
    :cond_0
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/Condition;

    .line 251
    .local v0, "c":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    goto :goto_0

    .line 255
    .end local v0    # "c":Lcom/android/settings/dashboard/conditional/Condition;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 256
    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "suggestion$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    .line 257
    .local v3, "suggestion":Lcom/android/settingslib/drawer/Tile;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v8

    .line 257
    const/16 v9, 0x180

    invoke-static {v7, v9, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 262
    .end local v3    # "suggestion":Lcom/android/settingslib/drawer/Tile;
    .end local v6    # "suggestion$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string/jumbo v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    const-string/jumbo v7, "DashboardSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStart took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 269
    const-string/jumbo v9, " ms"

    .line 268
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public onStop()V
    .locals 7

    .prologue
    .line 274
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStop()V

    .line 275
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/DashboardAdapter;->getLte4GEnabler()Lcom/android/settings/Lte4GEnabler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/Lte4GEnabler;->pause()V

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v4, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V

    .line 278
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/dashboard/SummaryLoader;->setListening(Z)V

    .line 281
    :cond_0
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/Condition;

    .line 282
    .local v0, "c":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    goto :goto_0

    .line 286
    .end local v0    # "c":Lcom/android/settings/dashboard/conditional/Condition;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    .line 287
    return-void

    .line 289
    :cond_3
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "suggestion$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 290
    .local v2, "suggestion":Lcom/android/settingslib/drawer/Tile;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/settings/dashboard/DashboardAdapter;->getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v5

    .line 290
    const/16 v6, 0x181

    invoke-static {v4, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 293
    .end local v2    # "suggestion":Lcom/android/settingslib/drawer/Tile;
    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 324
    .local v2, "startTime":J
    const v1, 0x7f0a012f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    .line 325
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 326
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 327
    if-eqz p2, :cond_0

    .line 328
    const-string/jumbo v1, "scroll_position"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, "scrollPosition":I
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 331
    .end local v0    # "scrollPosition":I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 332
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, v5}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setHasFixedSize(Z)V

    .line 333
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, p0}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setListener(Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;)V

    .line 335
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-virtual {v1, v6}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 337
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    new-instance v4, Lcom/android/settings/dashboard/DashboardDecorator;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/dashboard/DashboardDecorator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 338
    new-instance v1, Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardSummary;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    invoke-direct {v1, v4, v5}, Lcom/android/settings/dashboard/DashboardAdapter;-><init>(Landroid/content/Context;Lcom/android/settingslib/SuggestionParser;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    .line 339
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v4}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getConditions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->setConditions(Ljava/util/List;)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAdapter:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 341
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Lcom/android/settings/dashboard/conditional/FocusRecyclerView;

    invoke-static {v1}, Lcom/android/settings/dashboard/conditional/ConditionAdapterUtils;->addDismiss(Landroid/support/v7/widget/RecyclerView;)V

    .line 342
    const-string/jumbo v1, "DashboardSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onViewCreated took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 342
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 343
    const-string/jumbo v5, " ms"

    .line 342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI()V

    .line 346
    const-string/jumbo v1, "DashboardSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onViewCreated took--1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 346
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 347
    const-string/jumbo v5, " ms"

    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    .local v0, "startTime":J
    if-eqz p1, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    .line 300
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->refreshAll()V

    .line 304
    :goto_0
    const-string/jumbo v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 304
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    const-string/jumbo v4, " ms"

    .line 304
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mConditionManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->remListener(Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;)V

    goto :goto_0
.end method
