.class public Lcom/android/settings/fuelgauge/FakeUid;
.super Landroid/os/BatteryStats$Uid;
.source "FakeUid.java"


# instance fields
.field private final mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/settings/fuelgauge/FakeUid;->mUid:I

    .line 36
    return-void
.end method


# virtual methods
.method public getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuFreqTimes(I)[J
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getJobCompletionStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 262
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 337
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 257
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 2
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 218
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOffCpuFreqTimes(I)[J
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    .prologue
    .line 282
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings/fuelgauge/FakeUid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 272
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 1
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 2
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    .line 173
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 183
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 332
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanActualTime(J)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J

    .prologue
    .line 163
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanBackgroundCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanBackgroundTime(J)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiScanCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiScanTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserActivity()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 134
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 130
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 98
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 102
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 233
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 0
    .param p1, "csph"    # I
    .param p2, "elapsedRealtime"    # J

    .prologue
    .line 114
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 118
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 126
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 122
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 90
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 106
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 110
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 0
    .param p1, "elapsedRealtime"    # J

    .prologue
    .line 94
    return-void
.end method
