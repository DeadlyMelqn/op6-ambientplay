.class public Lcom/android/settings/fuelgauge/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryUtils$StatusType;
    }
.end annotation


# static fields
.field private static final MIN_POWER_THRESHOLD_MILLI_AMP:I = 0x5

.field private static final SECONDS_IN_HOUR:I = 0xe10

.field private static final TAG:Ljava/lang/String; = "BatteryUtils"

.field private static sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 74
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 76
    return-void
.end method

.method private convertMsToUs(J)J
    .locals 3
    .param p1, "timeMs"    # J

    .prologue
    .line 250
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method private convertUsToMs(J)J
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    .line 246
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isDataCorrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 68
    :cond_1
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-object v0
.end method

.method private getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 8
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "which"    # I

    .prologue
    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->convertMsToUs(J)J

    move-result-wide v0

    .line 99
    .local v0, "rawRealTimeUs":J
    const/4 v4, 0x4

    .line 98
    invoke-virtual {p1, v4, v0, v1, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v2

    .line 101
    .local v2, "timeUs":J
    const-string/jumbo v4, "BatteryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string/jumbo v4, "BatteryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "background time(us): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->convertUsToMs(J)J

    move-result-wide v4

    return-wide v4
.end method

.method private getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 13
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "which"    # I

    .prologue
    const/4 v8, 0x0

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/settings/fuelgauge/BatteryUtils;->convertMsToUs(J)J

    move-result-wide v4

    .line 108
    .local v4, "rawRealTimeUs":J
    const/4 v9, 0x1

    new-array v0, v9, [I

    aput v8, v0, v8

    .line 109
    .local v0, "foregroundTypes":[I
    const-string/jumbo v9, "BatteryUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-wide/16 v6, 0x0

    .line 112
    .local v6, "timeUs":J
    array-length v9, v0

    :goto_0
    if-ge v8, v9, :cond_0

    aget v1, v0, v8

    .line 113
    .local v1, "type":I
    invoke-virtual {p1, v1, v4, v5, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v2

    .line 114
    .local v2, "localTime":J
    const-string/jumbo v10, "BatteryUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " time(us): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    add-long/2addr v6, v2

    .line 112
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "type":I
    .end local v2    # "localTime":J
    :cond_0
    const-string/jumbo v8, "BatteryUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "foreground time(us): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, v6, v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->convertUsToMs(J)J

    move-result-wide v8

    return-wide v8
.end method

.method private isDataCorrupted()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public calculateBatteryPercent(DDDI)D
    .locals 5
    .param p1, "powerUsageMah"    # D
    .param p3, "totalPowerMah"    # D
    .param p5, "hiddenPowerMah"    # D
    .param p7, "dischargeAmount"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 212
    cmpl-double v0, p3, v2

    if-nez v0, :cond_0

    .line 213
    return-wide v2

    .line 216
    :cond_0
    sub-double v0, p3, p5

    div-double v0, p1, v0

    int-to-double v2, p7

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J
    .locals 2
    .param p1, "batteryStatsHelper"    # Lcom/android/internal/os/BatteryStatsHelper;
    .param p2, "currentTimeMs"    # J

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    return-wide v0
.end method

.method getForegroundActivityTotalTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 4
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealtimeMs"    # J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 260
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v0, :cond_0

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    return-wide v2

    .line 264
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J
    .locals 4
    .param p1, "type"    # I
    .param p2, "uid"    # Landroid/os/BatteryStats$Uid;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "which"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 80
    if-nez p2, :cond_0

    .line 81
    return-wide v0

    .line 84
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 93
    return-wide v0

    .line 86
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    return-wide v0

    .line 88
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    return-wide v0

    .line 90
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    .line 91
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v2

    .line 90
    add-long/2addr v0, v2

    return-wide v0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeHiddenBatterySippers(Ljava/util/List;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const-wide/16 v2, 0x0

    .line 132
    .local v2, "proportionalSmearPowerMah":D
    const/4 v1, 0x0

    .line 133
    .local v1, "screenSipper":Lcom/android/internal/os/BatterySipper;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .end local v1    # "screenSipper":Lcom/android/internal/os/BatterySipper;
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 135
    .local v4, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    .line 138
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    .line 139
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    .line 141
    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v2, v6

    .line 145
    :cond_0
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_1

    .line 146
    move-object v1, v4

    .line 133
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 150
    .end local v4    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V

    .line 152
    return-wide v2
.end method

.method public shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 6
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 187
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 189
    .local v0, "drainType":Lcom/android/internal/os/BatterySipper$DrainType;
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_0

    .line 190
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_1

    .line 189
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 191
    :cond_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_0

    .line 192
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_0

    .line 193
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_0

    .line 194
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide v4, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v1, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    move-result v1

    .line 189
    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v1, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    move-result v1

    goto :goto_0
.end method

.method smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V
    .locals 22
    .param p2, "screenSipper"    # Lcom/android/internal/os/BatterySipper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 162
    .local v4, "rawRealtimeMs":J
    const-wide/16 v12, 0x0

    .line 163
    .local v12, "totalActivityTimeMs":J
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    .line 164
    .local v2, "activityTimeArray":Landroid/util/SparseLongArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "size":I
    :goto_0
    if-ge v3, v9, :cond_1

    .line 165
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    iget-object v14, v15, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 166
    .local v14, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v14, :cond_0

    .line 167
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->getForegroundActivityTotalTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v10

    .line 168
    .local v10, "timeMs":J
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v15

    invoke-virtual {v2, v15, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 169
    add-long/2addr v12, v10

    .line 164
    .end local v10    # "timeMs":J
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v14    # "uid":Landroid/os/BatteryStats$Uid;
    :cond_1
    const-wide/32 v16, 0x927c0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_2

    .line 174
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 175
    .local v6, "screenPowerMah":D
    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    :goto_1
    if-ge v3, v9, :cond_2

    .line 176
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 177
    .local v8, "sipper":Lcom/android/internal/os/BatterySipper;
    iget-wide v0, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v16, v0

    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v15

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v15, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    .line 178
    long-to-double v0, v12

    move-wide/from16 v20, v0

    .line 177
    div-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    .end local v6    # "screenPowerMah":D
    .end local v8    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    return-void
.end method

.method public sortUsageList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils$1;-><init>(Lcom/android/settings/fuelgauge/BatteryUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 230
    return-void
.end method
