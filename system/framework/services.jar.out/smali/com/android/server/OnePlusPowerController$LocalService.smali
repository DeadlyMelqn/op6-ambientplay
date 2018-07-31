.class public Lcom/android/server/OnePlusPowerController$LocalService;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAggressive()Z
    .locals 1

    .prologue
    .line 748
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get3()Z

    move-result v0

    return v0
.end method

.method public isChinaRegion()Z
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isChinaRegionInternal()Z

    move-result v0

    return v0
.end method

.method public isInDeepSleep()Z
    .locals 1

    .prologue
    .line 769
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get11()Z

    move-result v0

    return v0
.end method

.method public isInSleep()Z
    .locals 2

    .prologue
    .line 752
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get26()I

    move-result v0

    const/16 v1, 0x15be

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndiaRegion()Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isIndiaRegionInternal()Z

    move-result v0

    return v0
.end method

.method public notifyScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->-get30(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, p1}, Lcom/android/server/OnePlusPowerController;->notifyScreenStateInternal(I)V

    .line 765
    :cond_0
    return-void
.end method

.method public setDozeState(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/16 v8, 0x15be

    .line 773
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 774
    const-string/jumbo v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDozeState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3, p1}, Lcom/android/server/OnePlusPowerController;->-set1(Lcom/android/server/OnePlusPowerController;I)I

    .line 778
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->-get19(Lcom/android/server/OnePlusPowerController;)I

    move-result v3

    if-lez v3, :cond_1

    .line 779
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->-get5(Lcom/android/server/OnePlusPowerController;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 780
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 781
    .local v0, "awake":Ljava/time/LocalDateTime;
    if-eqz v0, :cond_1

    .line 782
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get26()I

    move-result v3

    if-ne v3, v8, :cond_1

    .line 783
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 784
    .local v2, "now":Ljava/time/LocalDateTime;
    invoke-static {v2, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    .line 785
    .local v1, "duration":Ljava/time/Duration;
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get28()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 787
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->-get9(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 797
    .end local v0    # "awake":Ljava/time/LocalDateTime;
    .end local v1    # "duration":Ljava/time/Duration;
    .end local v2    # "now":Ljava/time/LocalDateTime;
    :cond_1
    :goto_0
    return-void

    .line 791
    :cond_2
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->-get5(Lcom/android/server/OnePlusPowerController;)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 794
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->-get9(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v3

    const/16 v4, 0x1e6c

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v1

    monitor-enter v1

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->shutdownLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 759
    return-void

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
