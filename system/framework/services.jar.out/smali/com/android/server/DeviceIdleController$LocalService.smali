.class public Lcom/android/server/DeviceIdleController$LocalService;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "userId"    # I
    .param p6, "sync"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .prologue
    .line 1737
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1739
    return-void
.end method

.method public addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V
    .locals 8
    .param p1, "appId"    # I
    .param p2, "duration"    # J
    .param p4, "sync"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 1744
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v2, 0x0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V

    .line 1745
    return-void
.end method

.method public getDeepIdleState()I
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get32(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    return v0
.end method

.method public getIdleFactor()F
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    return v0
.end method

.method public getIdleTimeout()J
    .locals 2

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    return-wide v0
.end method

.method public getNextIdleDelay()J
    .locals 2

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get23(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextIdlePendingDelay()J
    .locals 2

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get24(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationWhitelistDuration()J
    .locals 2

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    return-wide v0
.end method

.method public getPendingTimeout()J
    .locals 2

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    return-wide v0
.end method

.method public getPowerSaveWhitelistApps()[I
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get29(Lcom/android/server/DeviceIdleController;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPowerSaveWhitelistAppsExceptIdle()[I
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get28(Lcom/android/server/DeviceIdleController;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPowerSaveWhitelistUserAppIds()[I
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    return-object v0
.end method

.method public isAppOnWhitelist(I)Z
    .locals 1
    .param p1, "appid"    # I

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isAppOnWhitelistInternal(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceDeepIdleMode()Z
    .locals 2

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get32(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleAlarm(JZ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "idleUntil"    # Z

    .prologue
    .line 1837
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 1838
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1840
    return-void

    .line 1837
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAlarmsActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setAlarmsActive(Z)V

    .line 1772
    return-void
.end method

.method public setIdleFactor(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iput p1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 1830
    return-void
.end method

.method public setIdleTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iput-wide p1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 1814
    return-void
.end method

.method public setInBatteryStatsServiceInstance(Lcom/android/server/am/BatteryStatsService;)V
    .locals 3
    .param p1, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    new-instance v1, Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {v1, p1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/DeviceIdleController;)V

    invoke-static {v0, v1}, Lcom/android/server/DeviceIdleController;->-set5(Lcom/android/server/DeviceIdleController;Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 1807
    return-void
.end method

.method public setJobsActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setJobsActive(Z)V

    .line 1767
    return-void
.end method

.method public setNetworkPolicyForceCloseSocketCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1759
    monitor-enter p0

    .line 1760
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    iput-object p1, v0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyForceCloseSocketCallback:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1762
    return-void

    .line 1759
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setNetworkPolicyTempWhitelistCallbackInternal(Ljava/lang/Runnable;)V

    .line 1754
    return-void
.end method

.method public setNextIdleDelay(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 1866
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 1867
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1, p2}, Lcom/android/server/DeviceIdleController;->-set3(Lcom/android/server/DeviceIdleController;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1869
    return-void

    .line 1866
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setNextIdlePendingDelay(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 1856
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 1857
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1, p2}, Lcom/android/server/DeviceIdleController;->-set4(Lcom/android/server/DeviceIdleController;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1859
    return-void

    .line 1856
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPendingTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iput-wide p1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 1822
    return-void
.end method
