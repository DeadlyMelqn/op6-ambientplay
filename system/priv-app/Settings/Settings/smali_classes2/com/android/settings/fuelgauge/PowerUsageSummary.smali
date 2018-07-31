.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageSummary$1;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$2;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$3;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_BATTERY_HEADER:Ljava/lang/String; = "battery_header"

.field private static final KEY_BATTERY_HISTORY:Ljava/lang/String; = "battery_history"

.field private static final KEY_SCREEN_USAGE:Ljava/lang/String; = "screen_usage"

.field private static final KEY_TIME_SINCE_LAST_FULL_CHARGE:Ljava/lang/String; = "last_full_charge"

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_HELP:I = 0x6

.field private static final MENU_HIGH_POWER_APPS:I = 0x4

.field private static final MENU_HIGH_POWER_APPS_MANAGER:I = 0x5

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_AVERAGE_POWER_THRESHOLD_MILLI_AMP:I = 0xa

.field private static final MIN_POWER_THRESHOLD_MILLI_AMP:I = 0x5

.field private static final MSG_INTERVAL:I = 0x2710

.field private static final MSG_UPDATE:I = 0x3e8

.field private static final OP_BACKGROYUND_OPTIMIZE:Ljava/lang/String; = "op_backgroyund_optimize"

.field private static final SECONDS_IN_HOUR:I = 0xe10

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field static final TAG:Ljava/lang/String; = "PowerUsageSummary"

.field private static final USE_FAKE_DATA:Z


# instance fields
.field private mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

.field private mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

.field private mForceCloseListener:Landroid/view/View$OnClickListener;

.field mHandler:Landroid/os/Handler;

.field private mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

.field private mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

.field mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPauseUpdate:Z

.field mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mStatsType:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPauseUpdate:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->nextUpdate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/BatteryStats;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/fuelgauge/PowerUsageSummary;
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->rebind(Landroid/os/BatteryStats;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 917
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>()V

    .line 916
    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 84
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 461
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mForceCloseListener:Landroid/view/View$OnClickListener;

    .line 831
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 3

    .prologue
    .line 345
    const-string/jumbo v0, "not_available"

    .line 346
    .local v0, "NOT_AVAILABLE":Ljava/lang/String;
    const-string/jumbo v2, "not_available"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 347
    .local v1, "notAvailable":Landroid/support/v7/preference/Preference;
    if-nez v1, :cond_0

    .line 348
    new-instance v1, Landroid/support/v7/preference/Preference;

    .end local v1    # "notAvailable":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 349
    .restart local v1    # "notAvailable":Landroid/support/v7/preference/Preference;
    const-string/jumbo v2, "not_available"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 350
    const v2, 0x7f0f0c55

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 351
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 353
    :cond_0
    return-void
.end method

.method private concatHighPowerApp(Ljava/util/List;Landroid/os/BatteryStats;)Ljava/util/List;
    .locals 18
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Landroid/os/BatteryStats;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez p1, :cond_0

    .line 485
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .restart local p1    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 489
    .local v12, "uids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "sipper$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 490
    .local v6, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 492
    .end local v6    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v13, :cond_7

    .line 493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v13}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v5

    .line 494
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 496
    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v4

    .line 497
    .local v4, "dischargeAmount":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v8

    .line 498
    .local v8, "totalPower":D
    if-eqz v4, :cond_2

    const-wide/16 v14, 0x0

    cmpl-double v13, v14, v8

    if-nez v13, :cond_5

    :cond_2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 500
    .local v10, "totalPowerMah":D
    :goto_2
    const-string/jumbo v13, "PowerUsageSummary"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "concatHighPowerApp list.size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "app$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 502
    .local v2, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget v13, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 503
    const-string/jumbo v13, "PowerUsageSummary"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "concatHighPowerApp add pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v6, Lcom/android/internal/os/BatterySipper;

    sget-object v13, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v14, Lcom/android/settings/fuelgauge/FakeUid;

    iget v15, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-direct {v14, v15}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-direct {v6, v13, v14, v0, v1}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 505
    .restart local v6    # "sipper":Lcom/android/internal/os/BatterySipper;
    iput-wide v10, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 506
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 496
    .end local v2    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .end local v3    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "dischargeAmount":I
    .end local v6    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v8    # "totalPower":D
    .end local v10    # "totalPowerMah":D
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "dischargeAmount":I
    goto/16 :goto_1

    .line 498
    .restart local v8    # "totalPower":D
    :cond_5
    int-to-double v14, v4

    const-wide v16, 0x3fe3333333333333L    # 0.6

    div-double v14, v16, v14

    mul-double v10, v14, v8

    .restart local v10    # "totalPowerMah":D
    goto/16 :goto_2

    .line 508
    .restart local v2    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .restart local v3    # "app$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v13, "PowerUsageSummary"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "concatHighPowerApp exist pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget v13, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 510
    .restart local v6    # "sipper":Lcom/android/internal/os/BatterySipper;
    iget-wide v14, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v13, v14, v10

    if-gez v13, :cond_3

    .line 511
    iput-wide v10, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    goto/16 :goto_3

    .line 518
    .end local v2    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .end local v3    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "dischargeAmount":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v6    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v8    # "totalPower":D
    .end local v10    # "totalPowerMah":D
    :cond_7
    return-object p1
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 372
    .local v16, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v14, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    .line 374
    .local v11, "numSippers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_a

    .line 375
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    .line 377
    .local v15, "sipper":Lcom/android/internal/os/BatterySipper;
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_9

    .line 379
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    .line 383
    .local v13, "realUid":I
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 385
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v17

    .line 384
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 389
    :cond_0
    invoke-static {v13}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isSystemUid(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 390
    const-string/jumbo v17, "mediaserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    .line 389
    if-eqz v17, :cond_1

    .line 394
    const/16 v13, 0x3e8

    .line 397
    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 399
    new-instance v10, Lcom/android/internal/os/BatterySipper;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v17, v0

    .line 400
    new-instance v18, Lcom/android/settings/fuelgauge/FakeUid;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v20, 0x0

    .line 399
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 401
    .local v10, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 402
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 403
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 404
    move-object v15, v10

    .line 407
    .end local v10    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 408
    .local v7, "index":I
    if-gez v7, :cond_4

    .line 410
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 413
    .restart local v7    # "index":I
    .restart local v13    # "realUid":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 414
    .local v5, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 415
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 416
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 417
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 420
    :cond_5
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 421
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 422
    .local v4, "existingPackageLen":I
    :goto_2
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 423
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .line 424
    .local v8, "newPackageLen":I
    :goto_3
    if-lez v8, :cond_3

    .line 425
    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 426
    .local v9, "newPackages":[Ljava/lang/String;
    if-lez v4, :cond_6

    .line 427
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    :cond_6
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_1

    .line 421
    .end local v4    # "existingPackageLen":I
    .end local v8    # "newPackageLen":I
    .end local v9    # "newPackages":[Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "existingPackageLen":I
    goto :goto_2

    .line 423
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "newPackageLen":I
    goto :goto_3

    .line 436
    .end local v4    # "existingPackageLen":I
    .end local v5    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "index":I
    .end local v8    # "newPackageLen":I
    .end local v13    # "realUid":I
    :cond_9
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 440
    .end local v15    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 441
    .local v12, "numUidSippers":I
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_b

    .line 442
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 446
    :cond_b
    new-instance v17, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 452
    return-object v14
.end method

.method private static getFakeStats()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x2710

    const/4 v6, 0x0

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    .line 797
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v2, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    const/high16 v4, 0x40a00000    # 5.0f

    .line 799
    .local v4, "use":F
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v3, v7, v5

    .line 800
    .local v3, "type":Lcom/android/internal/os/BatterySipper$DrainType;
    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v9, :cond_0

    .line 799
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 803
    :cond_0
    new-instance v9, Lcom/android/internal/os/BatterySipper;

    float-to-double v10, v4

    const/4 v12, 0x0

    invoke-direct {v9, v3, v12, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    const/high16 v9, 0x40a00000    # 5.0f

    add-float/2addr v4, v9

    goto :goto_1

    .line 806
    .end local v3    # "type":Lcom/android/internal/os/BatterySipper$DrainType;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v5, 0x64

    if-ge v0, v5, :cond_2

    .line 807
    new-instance v5, Lcom/android/internal/os/BatterySipper;

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 808
    new-instance v8, Lcom/android/settings/fuelgauge/FakeUid;

    add-int/lit16 v9, v0, 0x2710

    invoke-direct {v8, v9}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v10, v4

    .line 807
    invoke-direct {v5, v7, v8, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 810
    :cond_2
    new-instance v5, Lcom/android/internal/os/BatterySipper;

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 811
    new-instance v8, Lcom/android/settings/fuelgauge/FakeUid;

    invoke-direct {v8, v6}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v10, v4

    .line 810
    invoke-direct {v5, v7, v8, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 815
    new-instance v6, Lcom/android/settings/fuelgauge/FakeUid;

    invoke-static {v13}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    .line 814
    invoke-direct {v1, v5, v6, v14, v15}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 816
    .local v1, "sipper":Lcom/android/internal/os/BatterySipper;
    const-string/jumbo v5, "dex2oat"

    iput-object v5, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 817
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    new-instance v1, Lcom/android/internal/os/BatterySipper;

    .end local v1    # "sipper":Lcom/android/internal/os/BatterySipper;
    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 820
    new-instance v6, Lcom/android/settings/fuelgauge/FakeUid;

    const/16 v7, 0x2711

    invoke-static {v7}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    .line 819
    invoke-direct {v1, v5, v6, v14, v15}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 821
    .restart local v1    # "sipper":Lcom/android/internal/os/BatterySipper;
    const-string/jumbo v5, "dex2oat"

    iput-object v5, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 822
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    new-instance v1, Lcom/android/internal/os/BatterySipper;

    .end local v1    # "sipper":Lcom/android/internal/os/BatterySipper;
    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 825
    new-instance v6, Lcom/android/settings/fuelgauge/FakeUid;

    const/16 v7, 0x3ef

    invoke-static {v7}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    .line 824
    invoke-direct {v1, v5, v6, v8, v9}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 826
    .restart local v1    # "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    return-object v2
.end method

.method private getHighPowerAppsTitle()I
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isSupportBackgroundManagerment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const v0, 0x7f0f026c

    .line 266
    .local v0, "highPowerAppsTitle":I
    :goto_0
    return v0

    .line 264
    .end local v0    # "highPowerAppsTitle":I
    :cond_0
    const v0, 0x7f0f1073

    .restart local v0    # "highPowerAppsTitle":I
    goto :goto_0
.end method

.method private static isSharedGid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 356
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSupportBackgroundManagerment()Z
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.background.control"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 360
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private nextUpdate()V
    .locals 4

    .prologue
    .line 477
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 479
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 481
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private performBatteryHeaderClick()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 241
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v8

    .line 248
    .local v8, "featureProvider":Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string/jumbo v1, "tmp_bat_history.bin"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 249
    new-instance v2, Landroid/os/Bundle;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 250
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "stats"

    .line 251
    const-string/jumbo v1, "tmp_bat_history.bin"

    .line 250
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string/jumbo v0, "broadcast"

    .line 253
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v1

    .line 252
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 255
    const/4 v4, 0x0

    const v5, 0x7f0f0c6a

    move-object v6, v3

    .line 254
    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method private rebind(Landroid/os/BatteryStats;)V
    .locals 36
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateLastFullChargeTime(Landroid/content/Context;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 580
    const/4 v6, 0x0

    .line 581
    .local v6, "addedSome":Z
    if-eqz p1, :cond_f

    .line 584
    sget-object v30, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v31, 0x7f0c0399

    invoke-virtual/range {v30 .. v31}, Landroid/app/Application;->getColor(I)I

    move-result v10

    .line 589
    .local v10, "colorControl":I
    new-instance v30, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 588
    invoke-static/range {v30 .. v30}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v28

    .line 590
    .local v28, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCachedCount()I

    move-result v31

    sub-int v30, v30, v31

    .line 591
    const/16 v31, 0xb

    .line 590
    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCachedCount()I

    move-result v30

    rsub-int/lit8 v30, v30, 0xb

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v28

    .line 594
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v30

    if-nez v30, :cond_1

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->concatHighPowerApp(Ljava/util/List;Landroid/os/BatteryStats;)Ljava/util/List;

    move-result-object v28

    .line 597
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 598
    .local v8, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/settings/fuelgauge/PowerGaugePreference;>;"
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 599
    .local v26, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v30

    if-nez v30, :cond_3

    .line 600
    :cond_2
    return-void

    .line 599
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->isFinishing()Z

    move-result v30

    if-nez v30, :cond_2

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v16

    .line 603
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v14, v0, :cond_4

    .line 604
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 605
    .local v7, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget v0, v7, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 603
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 607
    .end local v7    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0f0386

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 611
    .local v27, "uninstalled":Ljava/lang/String;
    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v12

    .line 612
    .local v12, "dischargeAmount":I
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v17

    .line 613
    .local v17, "numSippers":I
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_e

    .line 614
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatterySipper;

    .line 616
    .local v23, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    const-wide v32, 0x40ac200000000000L    # 3600.0

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4014000000000000L    # 5.0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_7

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v30

    xor-int/lit8 v30, v30, 0x1

    if-eqz v30, :cond_7

    .line 613
    :cond_5
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 611
    .end local v12    # "dischargeAmount":I
    .end local v17    # "numSippers":I
    .end local v23    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "dischargeAmount":I
    goto :goto_1

    .line 620
    .restart local v17    # "numSippers":I
    .restart local v23    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v24

    .line 622
    .local v24, "totalPower":D
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    div-double v30, v30, v24

    int-to-double v0, v12

    move-wide/from16 v32, v0

    mul-double v20, v30, v32

    .line 624
    .local v20, "percentOfTotal":D
    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v20

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 625
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    .line 628
    :cond_8
    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v20

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_5

    .line 631
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 634
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    div-double v32, v32, v34

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_5

    .line 637
    const-wide/high16 v30, 0x4024000000000000L    # 10.0

    cmpg-double v30, v20, v30

    if-ltz v30, :cond_5

    .line 640
    const-string/jumbo v30, "user"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 644
    :cond_9
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 647
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_5

    .line 650
    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    cmpg-double v30, v20, v30

    if-ltz v30, :cond_5

    .line 653
    const-string/jumbo v30, "user"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_5

    .line 657
    :cond_a
    new-instance v29, Landroid/os/UserHandle;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v30

    invoke-direct/range {v29 .. v30}, Landroid/os/UserHandle;-><init>(I)V

    .line 659
    .local v29, "userHandle":Landroid/os/UserHandle;
    new-instance v13, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 660
    .local v13, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 662
    .local v9, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 669
    .local v11, "contentDescription":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v15

    .line 671
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 672
    .local v22, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    if-nez v22, :cond_b

    .line 673
    new-instance v22, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .end local v22    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v9, v11, v13}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 675
    .restart local v22    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 678
    :cond_b
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    mul-double v30, v30, v32

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v32

    .line 678
    div-double v18, v30, v32

    .line 680
    .local v18, "percentOfMax":D
    move-wide/from16 v0, v20

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 681
    invoke-virtual {v13}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 682
    add-int/lit8 v30, v14, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 683
    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mForceCloseListener:Landroid/view/View$OnClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v30

    if-nez v30, :cond_d

    .line 695
    :cond_c
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_d

    .line 696
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTint(I)V

    .line 698
    :cond_d
    const/4 v6, 0x1

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 700
    const-string/jumbo v30, "PowerUsageSummary"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "rebind addPreference i= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", name="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", totalPowerMah="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getCachedCount()I

    move-result v31

    sub-int v30, v30, v31

    .line 702
    const/16 v31, 0xb

    .line 701
    goto/16 :goto_3

    .line 709
    .end local v9    # "badgedIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "contentDescription":Ljava/lang/CharSequence;
    .end local v13    # "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "percentOfMax":D
    .end local v20    # "percentOfTotal":D
    .end local v22    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v23    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v24    # "totalPower":D
    .end local v29    # "userHandle":Landroid/os/UserHandle;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setPowerState(Ljava/util/Map;)V

    .line 713
    .end local v8    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/settings/fuelgauge/PowerGaugePreference;>;"
    .end local v10    # "colorControl":I
    .end local v12    # "dischargeAmount":I
    .end local v14    # "i":I
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v17    # "numSippers":I
    .end local v26    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v27    # "uninstalled":Ljava/lang/String;
    .end local v28    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_f
    if-nez v6, :cond_10

    .line 714
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 716
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 717
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 718
    return-void
.end method

.method private setPowerState(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/PowerGaugePreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/settings/fuelgauge/PowerGaugePreference;>;"
    if-nez p1, :cond_0

    .line 523
    return-void

    .line 526
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 527
    .local v3, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setState(I)V

    goto :goto_0

    .line 529
    .end local v3    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v5, :cond_3

    .line 530
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v5}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v2

    .line 531
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 532
    const-string/jumbo v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPowerState list.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 534
    .local v0, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget v5, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 535
    const-string/jumbo v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPowerState pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget v5, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 537
    .restart local v3    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->getState()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setState(I)V

    goto :goto_1

    .line 542
    .end local v0    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v3    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    :cond_3
    return-void
.end method


# virtual methods
.method public OnDataChanged()V
    .locals 0

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 459
    return-void
.end method

.method public calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J
    .locals 2
    .param p1, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "currentTimeMs"    # J

    .prologue
    .line 791
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    return-wide v0
.end method

.method extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 3
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 722
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 724
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    .line 725
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 726
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 729
    :cond_2
    const-string/jumbo v0, "PowerUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inappropriate BatterySipper without uid and package names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string/jumbo v0, "-1"

    return-object v0
.end method

.method findBatterySipperByType(Ljava/util/List;Lcom/android/internal/os/BatterySipper$DrainType;)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .param p2, "type"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper$DrainType;",
            ")",
            "Lcom/android/internal/os/BatterySipper;"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 774
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 775
    .local v1, "sipper":Lcom/android/internal/os/BatterySipper;
    iget-object v3, v1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, p2, :cond_0

    .line 776
    return-object v1

    .line 773
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    .end local v1    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 293
    const v0, 0x7f0f0ebc

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x36

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setAnimationAllowed(Z)V

    .line 135
    const v2, 0x7f080080

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 137
    const-string/jumbo v2, "battery_header"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/LayoutPreference;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 138
    new-instance v2, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    .line 139
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 140
    const-string/jumbo v2, "screen_usage"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 142
    const-string/jumbo v2, "last_full_charge"

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateLastFullChargeTime(Landroid/content/Context;)V

    .line 146
    const-string/jumbo v2, "app_list"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 149
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string/jumbo v2, "op_backgroyund_optimize"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)V

    .line 152
    :cond_0
    new-instance v2, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;-><init>(Landroid/content/Context;Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "tracker_event"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, "trackerEvent":I
    if-ne v1, v5, :cond_1

    .line 159
    const-string/jumbo v2, "widget_power"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "trackerEvent":I
    :cond_1
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getHighPowerAppsTitle()I

    move-result v0

    .line 283
    .local v0, "highPowerAppsTitle":I
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    .line 288
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 289
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 201
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->releaseResource()V

    .line 205
    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    .line 207
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 300
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const/4 v8, 0x0

    .line 302
    .local v8, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 340
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 304
    :pswitch_1
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    .line 305
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 310
    return v10

    .line 307
    :cond_0
    iput v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_0

    .line 313
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isSupportBackgroundManagerment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.security.action.cleanbackground"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v8    # "intent":Landroid/content/Intent;
    .local v9, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v9

    .line 328
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_1
    return v10

    .line 317
    .restart local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 318
    .end local v8    # "intent":Landroid/content/Intent;
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    const-string/jumbo v1, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 321
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "classname"

    .line 323
    const-class v3, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 325
    const v3, 0x7f0f1073

    move-object v5, v4

    .line 324
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 332
    .end local v2    # "args":Landroid/os/Bundle;
    :pswitch_3
    :try_start_2
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.security.action.HIGH_POWER_APP"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 333
    .restart local v9    # "intent":Landroid/content/Intent;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    .end local v8    # "intent":Landroid/content/Intent;
    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v8, v9

    .line 337
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_3
    return v10

    .line 334
    .restart local v8    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    .line 335
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    :goto_4
    const-string/jumbo v1, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 334
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v7

    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    move-object v8, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    goto :goto_4

    .line 317
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v7

    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    move-object v8, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPause()V

    .line 190
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPauseUpdate:Z

    .line 191
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->unregisterObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 212
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v0, "op_backgroyund_optimize"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v7, 0x0

    .line 216
    .local v7, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.settings.action.BACKGROUND_OPTIMIZE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .local v8, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v0, "classname"

    .end local v7    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/Settings$BgOptimizeAppListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 222
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 219
    .restart local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 220
    .end local v7    # "intent":Landroid/content/Intent;
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v0, "PowerUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No activity found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string/jumbo v0, "battery_header"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->performBatteryHeaderClick()V

    .line 225
    return v3

    .line 229
    :cond_1
    instance-of v0, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_2

    .line 230
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_2
    move-object v10, p1

    .line 232
    check-cast v10, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 233
    .local v10, "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v4

    .line 234
    .local v4, "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 235
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getPercent()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 234
    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V

    .line 236
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 219
    .end local v4    # "entry":Lcom/android/settings/fuelgauge/BatteryEntry;
    .end local v10    # "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .restart local v8    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Landroid/content/ActivityNotFoundException;
    move-object v7, v8

    .end local v8    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onResume()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPauseUpdate:Z

    .line 178
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->registerObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->nextUpdate()V

    .line 182
    return-void
.end method

.method protected refreshStats()V
    .locals 3

    .prologue
    .line 736
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 737
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Lcom/android/internal/os/BatteryStatsHelper;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary$GetDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 738
    return-void
.end method

.method updateLastFullChargePreference(J)V
    .locals 7
    .param p1, "timeMs"    # J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const v6, 0x7f0f124b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 755
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double v2, p1

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "timeSequence":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 757
    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 758
    aput-object v0, v3, v4

    .line 757
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 756
    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 760
    aput-object v0, v3, v4

    .line 759
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 761
    return-void
.end method

.method public updateLastFullChargeTime(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 741
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    mul-long v4, v6, v10

    .line 743
    .local v4, "elapsedRealtimeUs":J
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 742
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 744
    .local v2, "batteryBroadcast":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 745
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    const/4 v6, 0x0

    .line 744
    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settingslib/BatteryInfo;

    move-result-object v0

    .line 746
    .local v0, "batteryInfo":Lcom/android/settingslib/BatteryInfo;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->updateHeaderPreference(Lcom/android/settingslib/BatteryInfo;)V

    .line 747
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 747
    invoke-virtual {p0, v1, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J

    move-result-wide v8

    .line 749
    .local v8, "lastFullChargeTime":J
    invoke-virtual {p0, v8, v9}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateLastFullChargePreference(J)V

    .line 750
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateScreenPreference()V

    .line 751
    return-void
.end method

.method updateScreenPreference()V
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 766
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 765
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findBatterySipperByType(Ljava/util/List;Lcom/android/internal/os/BatterySipper$DrainType;)Lcom/android/internal/os/BatterySipper;

    move-result-object v0

    .line 767
    .local v0, "sipper":Lcom/android/internal/os/BatterySipper;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 769
    .local v2, "usageTimeMs":J
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    long-to-double v6, v2

    const/4 v5, 0x0

    invoke-static {v4, v6, v7, v5}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 770
    return-void

    .line 767
    .end local v2    # "usageTimeMs":J
    :cond_0
    const-wide/16 v2, 0x0

    .restart local v2    # "usageTimeMs":J
    goto :goto_0
.end method
