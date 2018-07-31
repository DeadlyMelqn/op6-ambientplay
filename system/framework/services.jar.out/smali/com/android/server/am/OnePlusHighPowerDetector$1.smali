.class Lcom/android/server/am/OnePlusHighPowerDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
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
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 473
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 476
    .local v9, "action":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 478
    :cond_0
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->-set3(Z)Z

    .line 481
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get3()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v2

    const v4, 0xd6e3

    const-wide/16 v6, 0x7530

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get2(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get0()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->-set4(Lcom/android/server/am/OnePlusHighPowerDetector;J)J

    .line 486
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get3()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v2

    const v4, 0xd6e7

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 488
    :cond_2
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->-set3(Z)Z

    .line 491
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get3()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v2

    const v4, 0xd6e3

    invoke-virtual {v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->-set1(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    .line 494
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get3()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v2

    const v4, 0xd6e7

    invoke-virtual {v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->-set0(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto :goto_0

    .line 496
    :cond_3
    const-string/jumbo v2, "ohpd.action.test"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 497
    const-string/jumbo v2, "code"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 498
    .local v10, "code":Ljava/lang/String;
    const-string/jumbo v2, "userid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 499
    .local v17, "userId":Ljava/lang/String;
    const-string/jumbo v2, "type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 500
    .local v15, "type":Ljava/lang/String;
    const-string/jumbo v2, "pid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 501
    .local v12, "pid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 503
    if-eqz v10, :cond_4

    if-eqz v17, :cond_4

    if-eqz v15, :cond_4

    if-eqz v12, :cond_4

    .line 504
    :try_start_0
    const-string/jumbo v2, "notify#"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 505
    const-string/jumbo v2, "notify#"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "pkg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " userid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "broadcast"

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->-wrap1(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;IILjava/lang/String;I)V

    .line 512
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "soff"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get2(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get3()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v2

    const v4, 0xd6e7

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 528
    :catch_0
    move-exception v11

    .line 529
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v4, "error occured while ACTION_TEST"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 515
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    const-string/jumbo v2, "1st"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get2(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get3()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v2

    const v4, 0xd6e2

    invoke-virtual {v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 518
    :cond_6
    const-string/jumbo v2, "enable"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 519
    const-string/jumbo v2, "enable fake test"

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->-set2(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto/16 :goto_0

    .line 521
    :cond_7
    const-string/jumbo v2, "disable"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 522
    const-string/jumbo v2, "disable fake test"

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->-set2(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto/16 :goto_0

    .line 524
    :cond_8
    const-string/jumbo v2, "native"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Try to kill native process pid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 526
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 532
    .end local v10    # "code":Ljava/lang/String;
    .end local v12    # "pid":Ljava/lang/String;
    .end local v15    # "type":Ljava/lang/String;
    .end local v17    # "userId":Ljava/lang/String;
    :cond_9
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->-wrap0(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    goto/16 :goto_0

    .line 534
    :cond_a
    const-string/jumbo v2, "com.oem.intent.action.force_stop_pkg"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 535
    const-string/jumbo v2, "pkg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 536
    .local v13, "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "userid"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 537
    .local v16, "userId":I
    const-string/jumbo v2, "type"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 538
    .local v14, "type":I
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 539
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    if-eq v14, v2, :cond_1

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    move/from16 v0, v16

    invoke-static {v2, v13, v0, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->-wrap3(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 542
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "type":I
    .end local v16    # "userId":I
    :cond_b
    const-string/jumbo v2, "com.oem.intent.action.force_stop_high_pkg"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 543
    const-string/jumbo v2, "pkg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 544
    .restart local v13    # "pkgName":Ljava/lang/String;
    const-string/jumbo v2, "userid"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 545
    .restart local v16    # "userId":I
    const-string/jumbo v2, "type"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 546
    .restart local v14    # "type":I
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 547
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    if-eq v14, v2, :cond_1

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    move/from16 v0, v16

    invoke-static {v2, v13, v0, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->-wrap3(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 551
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "type":I
    .end local v16    # "userId":I
    :cond_c
    const-string/jumbo v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 552
    const-string/jumbo v2, "LightIdle_Status"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 553
    .local v8, "LightIdle":Z
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_d

    .line 554
    const-string/jumbo v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[LightIdle] LightIdle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_d
    if-eqz v8, :cond_1

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get2(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 558
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->-get3()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v2

    const v4, 0xd6e2

    invoke-virtual {v2, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
