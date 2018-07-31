.class Lcom/android/server/OnePlusPowerController$MyHandler;
.super Landroid/os/Handler;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1388
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1389
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1393
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1531
    :cond_1
    :goto_0
    return-void

    .line 1396
    :sswitch_0
    const-string/jumbo v15, "persist.sys.device_first_boot"

    .line 1397
    .local v15, "key":Ljava/lang/String;
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "persist.sys.device_first_boot"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1399
    .local v12, "isFirstBoot":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get4(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "doze_mode_policy"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-set0(Z)Z

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->-get4(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1401
    const-string/jumbo v4, "optimal_power_save_mode_enabled"

    const/4 v5, -0x2

    .line 1400
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/OnePlusPowerController;->-set10(Lcom/android/server/OnePlusPowerController;I)I

    .line 1402
    if-eqz v12, :cond_2

    .line 1403
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get22(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 1405
    const-string/jumbo v3, "doze_mode_policy"

    const/4 v4, 0x1

    .line 1404
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get4(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1407
    const-string/jumbo v3, "optimal_power_save_mode_enabled"

    const/4 v4, 0x2

    .line 1406
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1416
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "INITIALIZE_STATE: mAggressive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get3()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1417
    const-string/jumbo v4, ", mOPSMEnabled = "

    .line 1416
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->-get19(Lcom/android/server/OnePlusPowerController;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/OnePlusPowerController;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v4

    .line 1416
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1418
    const-string/jumbo v4, ", mUserSleep = "

    .line 1416
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->-get30(Lcom/android/server/OnePlusPowerController;)Z

    move-result v4

    .line 1416
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get27(Lcom/android/server/OnePlusPowerController;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v22

    .line 1421
    .local v22, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subInfoList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1399
    .end local v22    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1409
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get22(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 1410
    const-string/jumbo v3, "doze_mode_policy"

    const/4 v4, 0x0

    .line 1409
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get4(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1412
    const-string/jumbo v3, "optimal_power_save_mode_enabled"

    const/4 v4, -0x1

    .line 1411
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1425
    .end local v12    # "isFirstBoot":Z
    .end local v15    # "key":Ljava/lang/String;
    :sswitch_1
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isChinaRegionInternal() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController;->isChinaRegionInternal()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1426
    const-string/jumbo v4, ", isIndiaRegionInternal() = "

    .line 1425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController;->isIndiaRegionInternal()Z

    move-result v4

    .line 1425
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->isChinaRegionInternal()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->isIndiaRegionInternal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1429
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get22(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 1430
    const-string/jumbo v3, "doze_mode_policy"

    const/4 v4, 0x1

    .line 1429
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1431
    const-string/jumbo v2, "OnePlusPowerController"

    const-string/jumbo v3, "put 1 to Settings.System.DOZE_MODE_POLICY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get22(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 1433
    const-string/jumbo v3, "optimal_power_save_mode_enabled"

    const/4 v4, 0x2

    .line 1432
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1434
    const-string/jumbo v2, "OnePlusPowerController"

    const-string/jumbo v3, "put 2 to Settings.System.OPTIMAL_POWER_SAVE_MODE_ENABLED"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1440
    :sswitch_2
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lorg/json/JSONObject;

    .line 1441
    .local v14, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1442
    .local v17, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "tag"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1443
    .local v23, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get2()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1444
    const-string/jumbo v3, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MSG_ADD_EXCLUSIVE_WAKELOCK: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const-string/jumbo v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MSG_ADD_EXCLUSIVE_WAKELOCK: packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1446
    const-string/jumbo v4, ", tag = "

    .line 1445
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get13(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManagerInternal;->addExclusiveWakeLock(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1450
    .end local v14    # "json":Lorg/json/JSONObject;
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v23    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1451
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MSG_ADD_EXCLUSIVE_WAKELOCK error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1455
    .end local v10    # "e":Ljava/lang/Exception;
    :sswitch_3
    new-instance v8, Lcom/oneplus/config/ConfigGrabber;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get4(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "PowerControl"

    invoke-direct {v8, v2, v3}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1456
    .local v8, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v8}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OnePlusPowerController;->-wrap0(Lcom/android/server/OnePlusPowerController;Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 1459
    .end local v8    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get30(Lcom/android/server/OnePlusPowerController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v2

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get16()I

    move-result v3

    if-lt v2, v3, :cond_f

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDataSet()[[D

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v4

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get17()I

    move-result v6

    const/4 v5, 0x2

    const/16 v7, 0x64

    invoke-static/range {v2 .. v7}, Lcom/android/server/OnePlusPowerController$KMeans;->-wrap0(Lcom/android/server/OnePlusPowerController$KMeans;[[DIIII)V

    .line 1465
    const/16 v20, 0x0

    .line 1466
    .local v20, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get17()I

    move-result v2

    if-ge v11, v2, :cond_a

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v2

    move/from16 v0, v20

    if-le v2, v0, :cond_9

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v20

    .line 1466
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1474
    :cond_a
    const/16 v16, 0x0

    .line 1475
    .local v16, "label":I
    const-wide/16 v18, 0x0

    .line 1476
    .local v18, "length":J
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get17()I

    move-result v2

    if-ge v13, v2, :cond_c

    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v2

    move/from16 v0, v20

    if-ne v2, v0, :cond_b

    .line 1478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-lez v2, :cond_b

    .line 1479
    move/from16 v16, v13

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v18

    .line 1476
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1485
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterX(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v21

    .line 1487
    .local v21, "start":Ljava/time/LocalTime;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v9

    .line 1488
    .local v9, "duration":Ljava/time/Duration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepStart(Ljava/time/LocalTime;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/server/OnePlusPowerController$IdleStats;->setDeepSleepDuration(Ljava/time/Duration;)V

    .line 1492
    .end local v9    # "duration":Ljava/time/Duration;
    .end local v21    # "start":Ljava/time/LocalTime;
    :cond_d
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get1()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1493
    const/4 v11, 0x0

    :goto_5
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get17()I

    move-result v2

    if-ge v11, v2, :cond_e

    .line 1494
    const-string/jumbo v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Size of Cluster "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const-string/jumbo v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Center of Cluster "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterX(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1496
    const-string/jumbo v4, ", "

    .line 1495
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1496
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->-get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterCenterY(I)J

    move-result-wide v4

    .line 1495
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 1498
    :cond_e
    const-string/jumbo v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ">>> Choose Cluster "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    .end local v11    # "i":I
    .end local v13    # "j":I
    .end local v16    # "label":I
    .end local v18    # "length":J
    .end local v20    # "size":I
    :cond_f
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get30(Lcom/android/server/OnePlusPowerController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1504
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get23()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 1506
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleStats;->recordIdleItemLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    goto/16 :goto_0

    .line 1505
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1511
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get30(Lcom/android/server/OnePlusPowerController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1512
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get23()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 1514
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleStats;->restoreIdleItemsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-get14(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1517
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/OnePlusPowerController;->getSleepState(Ljava/time/LocalDateTime;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->-set12(I)I

    .line 1518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v3

    goto/16 :goto_0

    .line 1513
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1516
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1523
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController;->enterOPSMIfAppropriated(Z)V

    goto/16 :goto_0

    .line 1526
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusPowerController$MyHandler;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->leaveOPSM()V

    goto/16 :goto_0

    .line 1394
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_3
        0x15be -> :sswitch_7
        0x1e6c -> :sswitch_8
    .end sparse-switch
.end method
