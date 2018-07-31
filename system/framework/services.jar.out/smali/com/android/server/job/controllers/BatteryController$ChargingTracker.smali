.class public final Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChargingTracker"
.end annotation


# instance fields
.field private mBatteryHealthy:Z

.field private mCharging:Z

.field private mLastBatterySeq:I

.field private mMonitor:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/job/controllers/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BatteryController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/job/controllers/BatteryController;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    .line 138
    return-void
.end method


# virtual methods
.method public getSeq()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    return v0
.end method

.method public isBatteryNotLow()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    return v0
.end method

.method public isMonitoring()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnStablePower()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v2, v1, Lcom/android/server/job/controllers/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 202
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    sget-boolean v1, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 205
    const-string/jumbo v1, "JobScheduler.Batt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Battery life too low to do work. @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 205
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 212
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->-wrap0(Lcom/android/server/job/controllers/BatteryController;)V

    .line 234
    :cond_1
    :goto_0
    const-string/jumbo v1, "seq"

    .line 235
    iget v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    .line 234
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 237
    return-void

    .line 213
    :cond_2
    :try_start_1
    const-string/jumbo v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 214
    sget-boolean v1, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 215
    const-string/jumbo v1, "JobScheduler.Batt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Battery life healthy enough to do work. @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 215
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 219
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->-wrap0(Lcom/android/server/job/controllers/BatteryController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 220
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string/jumbo v1, "android.os.action.CHARGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 221
    sget-boolean v1, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 222
    const-string/jumbo v1, "JobScheduler.Batt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received charging intent, fired @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 222
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 226
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->-wrap0(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_0

    .line 227
    :cond_6
    const-string/jumbo v1, "android.os.action.DISCHARGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    sget-boolean v1, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 229
    const-string/jumbo v1, "JobScheduler.Batt"

    const-string/jumbo v3, "Disconnected from power."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 232
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->-wrap0(Lcom/android/server/job/controllers/BatteryController;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public setMonitorBatteryLocked(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 159
    if-eqz p1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;-><init>(Lcom/android/server/job/controllers/BatteryController$ChargingTracker;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v1, v1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v1, v1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    iput-object v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method public startTracking()V
    .locals 3

    .prologue
    .line 141
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v2, "android.os.action.CHARGING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v2, "android.os.action.DISCHARGING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v2, v2, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    const-class v2, Landroid/os/BatteryManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 154
    .local v0, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 155
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 156
    return-void
.end method
