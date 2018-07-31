.class public Lcom/android/internal/os/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatterySipper$DrainType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field public bluetoothPowerMah:D

.field public bluetoothRunningTimeMs:J

.field public btRxBytes:J

.field public btTxBytes:J

.field public cameraPowerMah:D

.field public cameraTimeMs:J

.field public cpuFgTimeMs:J

.field public cpuPowerMah:D

.field public cpuTimeMs:J

.field public drainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field public flashlightPowerMah:D

.field public flashlightTimeMs:J

.field public gpsPowerMah:D

.field public gpsTimeMs:J

.field public mPackages:[Ljava/lang/String;

.field public mobileActive:J

.field public mobileActiveCount:I

.field public mobileRadioPowerMah:D

.field public mobileRxBytes:J

.field public mobileRxPackets:J

.field public mobileTxBytes:J

.field public mobileTxPackets:J

.field public mobilemspp:D

.field public noCoveragePercent:D

.field public packageWithHighestDrain:Ljava/lang/String;

.field public percent:D

.field public proportionalSmearMah:D

.field public screenPowerMah:D

.field public sensorPowerMah:D

.field public shouldHide:Z

.field public totalPowerMah:D

.field public totalSmearedPowerMah:D

.field public uidObj:Landroid/os/BatteryStats$Uid;

.field public usagePowerMah:D

.field public usageTimeMs:J

.field public userId:I

.field public wakeLockPowerMah:D

.field public wakeLockTimeMs:J

.field public wifiPowerMah:D

.field public wifiRunningTimeMs:J

.field public wifiRxBytes:J

.field public wifiRxPackets:J

.field public wifiTxBytes:J

.field public wifiTxPackets:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V
    .locals 1
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "value"    # D

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-wide p3, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 133
    iput-object p1, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 134
    iput-object p2, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 135
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatterySipper;)V
    .locals 4
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 177
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 178
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 179
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 180
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    .line 181
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 182
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 183
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 184
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    .line 185
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    .line 186
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 187
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 188
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 189
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 190
    iget v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iget v1, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 191
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 192
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 193
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 194
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 195
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 196
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 197
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    .line 198
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    .line 199
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 200
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 201
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 202
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 203
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 204
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 205
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 206
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 207
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 208
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    .line 209
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    .line 210
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    .line 211
    return-void
.end method

.method public compareTo(Lcom/android/internal/os/BatterySipper;)I
    .locals 4
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_0

    .line 148
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_1

    .line 150
    const/4 v0, -0x1

    return v0

    .line 154
    :cond_1
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 142
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatterySipper;->compareTo(Lcom/android/internal/os/BatterySipper;)I

    move-result v0

    return v0
.end method

.method public computeMobilemspp()V
    .locals 6

    .prologue
    .line 138
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long v0, v2, v4

    .line 139
    .local v0, "packets":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    .line 140
    return-void

    .line 139
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    return v0
.end method

.method public sumPower()D
    .locals 4

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    add-double/2addr v0, v2

    .line 221
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 220
    add-double/2addr v0, v2

    .line 221
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 220
    add-double/2addr v0, v2

    .line 221
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 220
    add-double/2addr v0, v2

    .line 221
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 220
    add-double/2addr v0, v2

    .line 222
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 220
    add-double/2addr v0, v2

    .line 222
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 220
    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 223
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    .line 225
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    return-wide v0
.end method
