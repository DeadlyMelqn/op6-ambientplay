.class Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "oneplusProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 1235
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1236
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1239
    sget-boolean v15, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v15, :cond_0

    .line 1240
    const-string/jumbo v15, "OnePlusProcessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[FO]handleMessage(): msg="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_0
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 1353
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1244
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    new-instance v16, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v17, v0

    const-string/jumbo v18, "/data/data_bpm/"

    invoke-direct/range {v16 .. v18}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Lcom/android/server/am/OnePlusProcessManager;->-set3(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .line 1245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v15}, Lcom/android/server/am/OnePlusProcessManager;->-get15(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->startWatching()V

    goto :goto_0

    .line 1249
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v15}, Lcom/android/server/am/OnePlusProcessManager;->loadNPMConfigFiles()V

    .line 1251
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v15, v15, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/OnePlusProcessManager;->-get11(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Landroid/app/IAlarmManager;->setBlackAlarm(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1257
    .end local v6    # "e":Landroid/os/RemoteException;
    :pswitch_3
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get9()Z

    move-result v8

    .line 1259
    .local v8, "oldStatus":Z
    const-string/jumbo v15, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v15}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1260
    .local v10, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 1261
    sget-boolean v15, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v15, :cond_2

    .line 1262
    const-string/jumbo v15, "OnePlusProcessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get9()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_2
    const/4 v15, 0x0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string/jumbo v16, "true"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v11, 0x1

    .line 1265
    .local v11, "temp":Z
    :goto_1
    if-eq v8, v11, :cond_3

    .line 1266
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1267
    .local v5, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v16, "BPMStatus"

    if-eqz v11, :cond_6

    const-string/jumbo v15, "true"

    :goto_2
    move-object/from16 v0, v16

    invoke-interface {v5, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v15, v15, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    if-eqz v15, :cond_3

    .line 1269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v15, v15, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    const-string/jumbo v16, "OnePlusProcessManager"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1273
    .end local v5    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get16()I

    move-result v15

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_4

    .line 1274
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v15, v11}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 1278
    .end local v11    # "temp":Z
    :cond_4
    const-string/jumbo v15, "OnePlusProcessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[FO]UPDATE_STS: after: mBPMStatus="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get9()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v15}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    goto/16 :goto_0

    .line 1264
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "temp":Z
    goto :goto_1

    .line 1267
    .restart local v5    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v15, "false"

    goto :goto_2

    .line 1284
    .end local v5    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "oldStatus":Z
    .end local v10    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "temp":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string/jumbo v16, "/data/data_bpm/brd.xml"

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/am/OnePlusProcessManager;->-set0(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 1285
    const-string/jumbo v15, "OnePlusProcessManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[FO]UPDATE_STS: after: mBrdList="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/OnePlusProcessManager;->-get12(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1296
    :pswitch_5
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 1297
    .local v14, "uidDelay":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 1300
    .local v9, "pidDelay":I
    const/4 v15, 0x0

    invoke-static {v14, v9, v15}, Lcom/android/server/am/OnePlusProcessManager;->-wrap23(IIZ)V

    goto/16 :goto_0

    .line 1303
    .end local v9    # "pidDelay":I
    .end local v14    # "uidDelay":I
    :pswitch_6
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1304
    .local v4, "childpid":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    .line 1306
    .local v2, "addUid":I
    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusProcessManager;->-wrap24(II)V

    .line 1307
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get9()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1308
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get17()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v15

    sget-wide v16, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    const-wide/16 v18, 0x2

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v15, v2, v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->-wrap18(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    goto/16 :goto_0

    .line 1312
    .end local v2    # "addUid":I
    .end local v4    # "childpid":I
    :pswitch_7
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1313
    .local v12, "uid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v15, v15, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1316
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v15, v12}, Lcom/android/server/am/OnePlusProcessManager;->-wrap5(Lcom/android/server/am/OnePlusProcessManager;I)I

    move-result v3

    .line 1317
    .local v3, "again":I
    const/4 v15, 0x1

    if-lt v3, v15, :cond_1

    .line 1318
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 1319
    .local v7, "msg2":Landroid/os/Message;
    const/16 v15, 0x74

    iput v15, v7, Landroid/os/Message;->what:I

    .line 1320
    iput v12, v7, Landroid/os/Message;->arg1:I

    .line 1321
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v15}, Lcom/android/server/am/OnePlusProcessManager;->-get18(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v15

    sget-wide v16, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    int-to-long v0, v3

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v15, v7, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1341
    .end local v3    # "again":I
    .end local v7    # "msg2":Landroid/os/Message;
    .end local v12    # "uid":I
    :pswitch_8
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get17()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 1342
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->-get17()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v15

    const-string/jumbo v16, "updateScreenState"

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcessLock(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1346
    :pswitch_9
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1347
    .local v13, "uid2":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v15, v13}, Lcom/android/server/am/OnePlusProcessManager;->-wrap22(Lcom/android/server/am/OnePlusProcessManager;I)V

    goto/16 :goto_0

    .line 1242
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
