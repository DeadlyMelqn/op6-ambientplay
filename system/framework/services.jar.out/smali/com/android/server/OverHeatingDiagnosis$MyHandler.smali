.class Lcom/android/server/OverHeatingDiagnosis$MyHandler;
.super Landroid/os/Handler;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_BATTERY_CHANGED:I = 0x1

.field public static final MSG_INIT:I = 0x0

.field public static final MSG_MONITOR_END:I = 0x4

.field public static final MSG_MONITOR_START:I = 0x2

.field public static final MSG_MONITOR_UPDATE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    .line 841
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 842
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 846
    const-string/jumbo v4, "OverHeatingDiagnosis"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMessage("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 849
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->-get4(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->-get1(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v6}, Lcom/android/server/OverHeatingDiagnosis;->-get0(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/IntentFilter;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 850
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis;->registerOnlineConfig()V

    .line 851
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis;->grabOnlineConfig()V

    goto :goto_0

    .line 854
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 855
    .local v2, "level":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 856
    .local v0, "chargePlug":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 858
    .local v1, "charging":Z
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis;->getDeviceTemp()I

    move-result v3

    .line 859
    .local v3, "temp":I
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4, v2}, Lcom/android/server/OverHeatingDiagnosis;->-set6(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 860
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4, v0}, Lcom/android/server/OverHeatingDiagnosis;->-set7(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 861
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4, v3}, Lcom/android/server/OverHeatingDiagnosis;->-set8(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 865
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->-get12(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v4

    if-nez v4, :cond_0

    .line 868
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/android/server/OverHeatingDiagnosis;->addRecord(IIIZ)V

    .line 871
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->-wrap0(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 872
    const-string/jumbo v4, "OverHeatingDiagnosis"

    const-string/jumbo v5, "Temperature is up! Start monitoring"

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->-get15(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 877
    .end local v0    # "chargePlug":I
    .end local v1    # "charging":Z
    .end local v2    # "level":I
    .end local v3    # "temp":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->-get17(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 878
    :try_start_0
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis;->monitorStartLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v5

    goto :goto_0

    .line 877
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 882
    :pswitch_3
    const-string/jumbo v4, "OverHeatingDiagnosis"

    const-string/jumbo v5, "enter MSG_MONITOR_UPDATE"

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->-get17(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 884
    :try_start_1
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis;->monitorUpdateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 886
    const-string/jumbo v4, "OverHeatingDiagnosis"

    const-string/jumbo v5, "leave MSG_MONITOR_UPDATE"

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 883
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 889
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->-get17(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 890
    :try_start_2
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis;->monitorEndLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 889
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
