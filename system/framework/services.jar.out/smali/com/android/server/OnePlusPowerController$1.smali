.class Lcom/android/server/OnePlusPowerController$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1036
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1041
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v12, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1042
    const-string/jumbo v12, "OnePlusPowerController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get21(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1045
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "OnePlusPowerController"

    const-string/jumbo v13, "In light device idle mode"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get13(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManagerInternal;->disableExclusiveWakeLocks()V

    .line 1145
    :cond_1
    :goto_0
    return-void

    .line 1051
    :cond_2
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "OnePlusPowerController"

    const-string/jumbo v13, "Leave light device idle mode"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_3
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get21(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1055
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get13(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks()V

    goto :goto_0

    .line 1058
    :cond_4
    const-string/jumbo v12, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1059
    const-string/jumbo v12, "OnePlusPowerController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get21(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1062
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "OnePlusPowerController"

    const-string/jumbo v13, "Leave device idle mode"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_5
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get13(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks()V

    goto :goto_0

    .line 1069
    :cond_6
    const-string/jumbo v12, "android.intent.action.TIME_SET"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1070
    const-string/jumbo v12, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1069
    if-eqz v12, :cond_9

    .line 1071
    :cond_7
    const-string/jumbo v12, "OnePlusPowerController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get14(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1074
    :try_start_0
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/server/OnePlusPowerController;->getSleepState(Ljava/time/LocalDateTime;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-set12(I)I

    .line 1080
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v12}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_1
    monitor-exit v13

    goto/16 :goto_0

    .line 1073
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 1082
    :cond_9
    const-string/jumbo v12, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1083
    const-string/jumbo v12, "OnePlusPowerController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const-string/jumbo v12, "state"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1085
    .local v10, "state":I
    const-string/jumbo v12, "OnePlusPowerController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "state: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get14(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1089
    :try_start_1
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get26()I

    move-result v12

    const/16 v14, 0x15be

    if-ne v12, v14, :cond_b

    .line 1090
    const/16 v12, 0x1e6c

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-set12(I)I

    .line 1091
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get19(Lcom/android/server/OnePlusPowerController;)I

    move-result v12

    if-lez v12, :cond_a

    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get18(Lcom/android/server/OnePlusPowerController;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1092
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get9(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v12

    const/16 v14, 0x1e6c

    invoke-virtual {v12, v14}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 1101
    :cond_a
    :goto_2
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v12}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    .line 1087
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    .line 1094
    :cond_b
    :try_start_2
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get26()I

    move-result v12

    const/16 v14, 0x1e6c

    if-ne v12, v14, :cond_a

    .line 1095
    const/16 v12, 0x15be

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-set12(I)I

    .line 1096
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get19(Lcom/android/server/OnePlusPowerController;)I

    move-result v12

    if-lez v12, :cond_a

    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get5(Lcom/android/server/OnePlusPowerController;)I

    move-result v12

    const/4 v14, 0x5

    if-ne v12, v14, :cond_a

    .line 1097
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get9(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v12

    const/16 v14, 0x15be

    invoke-virtual {v12, v14}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 1103
    .end local v10    # "state":I
    :cond_c
    const-string/jumbo v12, "net.oneplus.powercontroller.intent.OPSM"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1104
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get14(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1105
    :try_start_3
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get19(Lcom/android/server/OnePlusPowerController;)I

    move-result v12

    if-lez v12, :cond_8

    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get5(Lcom/android/server/OnePlusPowerController;)I

    move-result v12

    const/4 v14, 0x5

    if-ne v12, v14, :cond_8

    .line 1106
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get9(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v12

    const/16 v14, 0x15be

    invoke-virtual {v12, v14}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_1

    .line 1104
    :catchall_2
    move-exception v12

    monitor-exit v13

    throw v12

    .line 1109
    :cond_d
    const-string/jumbo v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1110
    const-string/jumbo v12, "plugged"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1111
    .local v8, "plugged":I
    iget-object v13, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    and-int/lit8 v12, v8, 0x7

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    :goto_3
    invoke-static {v13, v12}, Lcom/android/server/OnePlusPowerController;->-set3(Lcom/android/server/OnePlusPowerController;Z)Z

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x0

    goto :goto_3

    .line 1112
    .end local v8    # "plugged":I
    :cond_f
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1113
    const-string/jumbo v12, "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1114
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get9(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 1117
    :cond_10
    const-string/jumbo v12, "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1118
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get9(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v12

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 1121
    :cond_11
    const-string/jumbo v12, "net.oneplus.powercontroller.action.PROCESS_KMEANS"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1122
    iget-object v12, p0, Lcom/android/server/OnePlusPowerController$1;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v12}, Lcom/android/server/OnePlusPowerController;->-get9(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 1125
    :cond_12
    const-string/jumbo v12, "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1126
    const-string/jumbo v12, "seed"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1127
    .local v9, "seed":I
    const-string/jumbo v12, "cluster"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1128
    .local v2, "cluster":I
    const-string/jumbo v12, "min_rec"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1129
    .local v7, "min_rec":I
    const-string/jumbo v12, "min_idle"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1130
    .local v5, "min_idle":I
    const-string/jumbo v12, "max_idle"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1131
    .local v3, "max_idle":I
    const-string/jumbo v12, "min_len"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1132
    .local v6, "min_len":I
    const-string/jumbo v12, "max_len"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1133
    .local v4, "max_len":I
    const-string/jumbo v12, "tolerance"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1135
    .local v11, "tolerance":I
    if-lez v9, :cond_13

    invoke-static {v9}, Lcom/android/server/OnePlusPowerController;->-set11(I)I

    .line 1136
    :cond_13
    if-lez v2, :cond_14

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-set9(I)I

    .line 1137
    :cond_14
    if-lez v7, :cond_15

    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->-set8(I)I

    .line 1138
    :cond_15
    if-lez v5, :cond_16

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->-set6(I)I

    .line 1139
    :cond_16
    if-lez v3, :cond_17

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->-set4(I)I

    .line 1140
    :cond_17
    if-lez v6, :cond_18

    invoke-static {v6}, Lcom/android/server/OnePlusPowerController;->-set7(I)I

    .line 1141
    :cond_18
    if-lez v4, :cond_19

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->-set5(I)I

    .line 1142
    :cond_19
    if-lez v11, :cond_1

    invoke-static {v11}, Lcom/android/server/OnePlusPowerController;->-set13(I)I

    goto/16 :goto_0
.end method
