.class Lcom/android/server/am/OnePlusHighPowerDetector$3;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusHighPowerDetector;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 585
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStatus"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 588
    new-array v5, v8, [I

    const/16 v6, 0xe

    aput v6, v5, v7

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 589
    return-void

    .line 591
    :cond_0
    const-string/jumbo v5, "level"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 592
    .local v1, "level":I
    const-string/jumbo v5, "scale"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 593
    .local v4, "scale":I
    if-nez v4, :cond_1

    .line 594
    const-string/jumbo v5, "OHPD"

    const-string/jumbo v6, "[BgDetect] batt scale is 0"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void

    .line 597
    :cond_1
    mul-int/lit8 v5, v1, 0x64

    div-int v0, v5, v4

    .line 598
    .local v0, "batteryPct":I
    const/16 v5, 0x64

    if-gt v0, v5, :cond_2

    if-gez v0, :cond_3

    .line 599
    :cond_2
    return-void

    .line 601
    :cond_3
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    monitor-enter v6

    .line 603
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    sub-int/2addr v5, v0

    if-lt v5, v8, :cond_5

    .line 604
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 605
    .local v2, "now":J
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-wide v8, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-wide v8, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    sub-long v8, v2, v8

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-gtz v5, :cond_4

    .line 606
    const-string/jumbo v5, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] batt level ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") within "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-wide v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    sub-long v8, v2, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z

    .line 609
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget-boolean v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    if-nez v5, :cond_4

    .line 610
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    .line 611
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    .line 612
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsObserveAbn:Z

    .line 613
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 v7, 0x0

    iput v7, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    .line 614
    const-string/jumbo v5, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] Native monitoring start, reset the counter, level = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iget v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput-wide v2, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    .line 619
    .end local v2    # "now":J
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector$3;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    iput v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 621
    return-void

    .line 601
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
