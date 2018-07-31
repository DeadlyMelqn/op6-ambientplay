.class public Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageAdvanced.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;,
        Lcom/android/settings/fuelgauge/PowerUsageAdvanced$2;,
        Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    }
.end annotation


# static fields
.field private static final KEY_BATTERY_GRAPH:Ljava/lang/String; = "battery_graph"

.field private static final KEY_BATTERY_USAGE_LIST:Ljava/lang/String; = "battery_usage_list"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final STATUS_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AdvancedBatteryUsage"


# instance fields
.field private mBatteryDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field final mUsageTypes:[I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .prologue
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryDataMap:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 430
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$2;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$2;-><init>()V

    .line 429
    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 62
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageTypes:[I

    .line 81
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHandler:Landroid/os/Handler;

    .line 55
    return-void

    .line 62
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x0
        0x7
        0x8
    .end array-data
.end method


# virtual methods
.method calculateHiddenPower(Ljava/util/List;)D
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "batteryDataList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "usageData$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    .line 277
    .local v0, "usageData":Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    iget v2, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 278
    iget-wide v2, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    return-wide v2

    .line 282
    .end local v0    # "usageData":Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method extractUsageType(Lcom/android/internal/os/BatterySipper;)I
    .locals 3
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 197
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 198
    .local v0, "drainType":Lcom/android/internal/os/BatterySipper$DrainType;
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    .line 200
    .local v1, "uid":I
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_0

    .line 201
    const/4 v2, 0x1

    return v2

    .line 202
    :cond_0
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_1

    .line 203
    const/4 v2, 0x4

    return v2

    .line 204
    :cond_1
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_2

    .line 205
    const/4 v2, 0x6

    return v2

    .line 206
    :cond_2
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_3

    .line 207
    const/4 v2, 0x5

    return v2

    .line 208
    :cond_3
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_4

    .line 209
    const/4 v2, 0x2

    return v2

    .line 210
    :cond_4
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_5

    .line 211
    const/4 v2, 0x7

    return v2

    .line 212
    :cond_5
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_6

    .line 213
    const/16 v2, 0x8

    return v2

    .line 214
    :cond_6
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 215
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    move-result v2

    .line 214
    if-eqz v2, :cond_8

    .line 216
    :cond_7
    const/4 v2, 0x3

    return v2

    .line 218
    :cond_8
    const/4 v2, 0x0

    return v2
.end method

.method findBatterySipperWithMaxBatteryUsage(Ljava/util/List;)Lcom/android/internal/os/BatterySipper;
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Lcom/android/internal/os/BatterySipper;"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 317
    .local v2, "sipper":Lcom/android/internal/os/BatterySipper;
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 318
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    .line 319
    .local v0, "comparedSipper":Lcom/android/internal/os/BatterySipper;
    iget-wide v4, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 320
    move-object v2, v0

    .line 317
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "comparedSipper":Lcom/android/internal/os/BatterySipper;
    :cond_1
    return-object v2
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v1, 0x7f08007d

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->addPreferencesFromResource(I)V

    .line 115
    const-string/jumbo v1, "battery_graph"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    .line 116
    const-string/jumbo v1, "battery_usage_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 122
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUserManager:Landroid/os/UserManager;

    .line 123
    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 144
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPause()V

    .line 136
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onResume()V

    .line 129
    return-void
.end method

.method parsePowerUsageData(Lcom/android/internal/os/BatteryStatsHelper;)Ljava/util/List;
    .locals 20
    .param p1, "statusHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v12

    .line 237
    .local v12, "batterySippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v11, "batteryDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageTypes:[I

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget v18, v4, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 240
    .local v15, "type":Ljava/lang/Integer;
    new-instance v18, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;-><init>(I)V

    move-object/from16 v0, v18

    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v15    # "type":Ljava/lang/Integer;
    :cond_0
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "sipper$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatterySipper;

    .line 245
    .local v13, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v13}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 246
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->extractUsageType(Lcom/android/internal/os/BatterySipper;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    .line 247
    .local v16, "usageData":Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    iget-wide v0, v13, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v18, v0

    add-double v4, v4, v18

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    .line 248
    iget-object v3, v13, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_2

    iget-wide v4, v13, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    const-wide/16 v18, 0x0

    cmp-long v3, v4, v18

    if-eqz v3, :cond_2

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 250
    iget-object v4, v13, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v5, 0x0

    const/16 v18, 0x0

    .line 249
    move/from16 v0, v18

    invoke-virtual {v3, v5, v4, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v4

    iput-wide v4, v13, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 252
    :cond_2
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalUsageTimeMs:J

    iget-wide v0, v13, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalUsageTimeMs:J

    .line 253
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->shouldShowBatterySipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageList:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    .end local v13    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v16    # "usageData":Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    .local v2, "batteryDataList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v10

    .line 260
    .local v10, "dischargeAmount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v6

    .line 261
    .local v6, "totalPower":D
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->calculateHiddenPower(Ljava/util/List;)D

    move-result-wide v8

    .line 262
    .local v8, "hiddenPower":D
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "usageData$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    .line 263
    .restart local v16    # "usageData":Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->percentage:D

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6, v7, v10}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updateUsageDataSummary(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;DI)V

    goto :goto_2

    .line 268
    .end local v16    # "usageData":Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 270
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryDataMap:Ljava/util/Map;

    .line 271
    return-object v2
.end method

.method protected refreshStats()V
    .locals 8

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 169
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 170
    return-void

    .line 173
    :cond_0
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updatePreference(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    .line 175
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0, v6}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->parsePowerUsageData(Lcom/android/internal/os/BatteryStatsHelper;)Ljava/util/List;

    move-result-object v2

    .line 176
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;>;"
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 177
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 178
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    .line 179
    .local v0, "batteryData":Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->shouldHideCategory(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_1
    new-instance v4, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;)V

    .line 184
    .local v4, "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    iget v6, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 185
    iget v6, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->titleResId:I

    invoke-virtual {v4, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(I)V

    .line 186
    iget-object v6, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    iget-wide v6, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->percentage:D

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 188
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 191
    .end local v0    # "batteryData":Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    .end local v4    # "pref":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    :cond_2
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 192
    return-void
.end method

.method setBatteryUtils(Lcom/android/settings/fuelgauge/BatteryUtils;)V
    .locals 0
    .param p1, "batteryUtils"    # Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 343
    return-void
.end method

.method setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 330
    return-void
.end method

.method setPowerUsageFeatureProvider(Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 335
    return-void
.end method

.method setUserManager(Landroid/os/UserManager;)V
    .locals 0
    .param p1, "userManager"    # Landroid/os/UserManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUserManager:Landroid/os/UserManager;

    .line 339
    return-void
.end method

.method shouldHideCategory(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)Z
    .locals 4
    .param p1, "powerUsageData"    # Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 224
    iget v2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 225
    iget v2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    iget v2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserCount()I

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method shouldHideSummary(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)Z
    .locals 3
    .param p1, "powerUsageData"    # Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 307
    iget v0, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    .line 309
    .local v0, "usageType":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 310
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v1

    .line 311
    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method shouldShowBatterySipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2
    .param p1, "batterySipper"    # Lcom/android/internal/os/BatterySipper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateUsageDataSummary(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;DI)V
    .locals 10
    .param p1, "usageData"    # Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    .param p2, "totalPower"    # D
    .param p4, "dischargeAmount"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->shouldHideSummary(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    iget-object v5, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 292
    iget-wide v6, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalUsageTimeMs:J

    long-to-double v6, v6

    const/4 v8, 0x0

    .line 291
    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "timeSequence":Ljava/lang/CharSequence;
    iget v5, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .end local v4    # "timeSequence":Ljava/lang/CharSequence;
    :goto_0
    iput-object v4, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->summary:Ljava/lang/CharSequence;

    .line 303
    :goto_1
    return-void

    .line 294
    .restart local v4    # "timeSequence":Ljava/lang/CharSequence;
    :cond_1
    const v5, 0x7f0f124c

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 296
    .end local v4    # "timeSequence":Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findBatterySipperWithMaxBatteryUsage(Ljava/util/List;)Lcom/android/internal/os/BatterySipper;

    move-result-object v1

    .line 297
    .local v1, "sipper":Lcom/android/internal/os/BatterySipper;
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUserManager:Landroid/os/UserManager;

    invoke-direct {v0, v5, v6, v7, v1}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 299
    .local v0, "batteryEntry":Lcom/android/settings/fuelgauge/BatteryEntry;
    iget-wide v6, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    div-double/2addr v6, p2

    int-to-double v8, p4

    mul-double v2, v6, v8

    .line 300
    .local v2, "percentage":D
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 301
    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lcom/android/settings/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 300
    const v6, 0x7f0f124d

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->summary:Ljava/lang/CharSequence;

    goto :goto_1
.end method
