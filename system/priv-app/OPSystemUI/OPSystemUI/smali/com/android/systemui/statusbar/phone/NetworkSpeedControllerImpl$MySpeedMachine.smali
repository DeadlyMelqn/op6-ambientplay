.class Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;
.super Ljava/lang/Object;
.source "NetworkSpeedControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySpeedMachine"
.end annotation


# instance fields
.field incrementRxBytes:J

.field incrementTxBytes:J

.field isTurnOn:Z

.field mIsFirstLoadTether:Z

.field oldRxBytes:J

.field oldTetherRxBytes:J

.field oldTetherTxBytes:J

.field oldTxBytes:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->updateSpeedonBG()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .prologue
    const-wide/16 v2, 0x0

    .line 380
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    .line 372
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 373
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    .line 374
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    .line 377
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    .line 378
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    .line 385
    return-void
.end method

.method private updateSpeedonBG()V
    .locals 30

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 389
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v22

    .line 390
    .local v22, "totalTxBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v20

    .line 391
    .local v20, "totalRxBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v22, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 392
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    move-wide/from16 v24, v0

    sub-long v24, v20, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 393
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    .line 394
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    .line 395
    const-wide/16 v12, 0x0

    .line 396
    .local v12, "incrementTetherTxBytes":J
    const-wide/16 v10, 0x0

    .line 398
    .local v10, "incrementTetherRxBytes":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get9(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 399
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    .line 400
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    .line 401
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    .line 426
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get10(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 427
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get0()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get5()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v24, "NetWorkSpeed is first load."

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 429
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 430
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v15, v0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-set0(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Z)Z

    .line 432
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v15, v24, v26

    if-gez v15, :cond_2

    .line 433
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 435
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v15, v24, v26

    if-gez v15, :cond_3

    .line 436
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 438
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    move-wide/from16 v26, v0

    cmp-long v15, v24, v26

    if-lez v15, :cond_9

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 439
    .local v6, "incrementBytes":J
    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get6()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v24, v0

    div-long v8, v6, v24

    .line 440
    .local v8, "incrementPs":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15, v8, v9}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v14

    .line 441
    .local v14, "speedstr":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get0()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 442
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get5()Ljava/lang/String;

    move-result-object v15

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "NetWorkSpeed refresh totalTxBytes="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", totalRxBytes="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 443
    const-string/jumbo v25, ", incrementPs="

    .line 442
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 443
    const-string/jumbo v25, ", mSpeed="

    .line 442
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 443
    const-string/jumbo v25, " ,incrementBytes:"

    .line 442
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get8(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 445
    .local v5, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get2(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v15

    iput v15, v5, Landroid/os/Message;->what:I

    .line 446
    iput-object v14, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get8(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    .end local v6    # "incrementBytes":J
    .end local v8    # "incrementPs":J
    .end local v10    # "incrementTetherRxBytes":J
    .end local v12    # "incrementTetherTxBytes":J
    .end local v14    # "speedstr":Ljava/lang/String;
    .end local v20    # "totalRxBytes":J
    .end local v22    # "totalTxBytes":J
    :goto_2
    return-void

    .line 403
    .end local v5    # "message":Landroid/os/Message;
    .restart local v10    # "incrementTetherRxBytes":J
    .restart local v12    # "incrementTetherTxBytes":J
    .restart local v20    # "totalRxBytes":J
    .restart local v22    # "totalTxBytes":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-wrap2(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)[J

    move-result-object v4

    .line 404
    .local v4, "bytes":[J
    if-eqz v4, :cond_6

    array-length v15, v4

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v15, v0, :cond_6

    .line 405
    const/4 v15, 0x0

    aget-wide v16, v4, v15

    .line 406
    .local v16, "tetherRxBytes":J
    const/4 v15, 0x1

    aget-wide v18, v4, v15

    .line 407
    .local v18, "tetherTxBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    move-wide/from16 v24, v0

    sub-long v12, v18, v24

    .line 408
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    move-wide/from16 v24, v0

    sub-long v10, v16, v24

    .line 409
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    .line 410
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    .line 412
    .end local v16    # "tetherRxBytes":J
    .end local v18    # "tetherTxBytes":J
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get0()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get5()Ljava/lang/String;

    move-result-object v15

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "NetWorkSpeed TetherTx:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    move-object/from16 v25, v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get6()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    div-long v26, v12, v26

    invoke-static/range {v25 .. v27}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " tTetherRx:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    move-object/from16 v25, v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get6()I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    div-long v26, v10, v26

    invoke-static/range {v25 .. v27}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 413
    const-string/jumbo v25, " systemTx:"

    .line 412
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    move-wide/from16 v26, v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get6()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    div-long v26, v26, v28

    invoke-static/range {v25 .. v27}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v25

    .line 412
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 413
    const-string/jumbo v25, " systemRx:"

    .line 412
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    move-wide/from16 v26, v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get6()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    div-long v26, v26, v28

    invoke-static/range {v25 .. v27}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v25

    .line 412
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    if-eqz v15, :cond_8

    .line 416
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    goto/16 :goto_0

    .line 419
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    move-wide/from16 v24, v0

    add-long v24, v24, v12

    add-long v24, v24, v10

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    goto/16 :goto_0

    .line 438
    .end local v4    # "bytes":[J
    :cond_9
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .restart local v6    # "incrementBytes":J
    goto/16 :goto_1

    .line 449
    .end local v6    # "incrementBytes":J
    .end local v10    # "incrementTetherRxBytes":J
    .end local v12    # "incrementTetherTxBytes":J
    .end local v20    # "totalRxBytes":J
    .end local v22    # "totalTxBytes":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get8(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 450
    .restart local v5    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get1(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v15

    iput v15, v5, Landroid/os/Message;->what:I

    .line 451
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v15}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get8(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->-get5()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v24, "send MSG_CLOSE_NETWORTSPEED"

    move-object/from16 v0, v24

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method public isTurnOn()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 457
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    .line 458
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    .line 459
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    .line 460
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    .line 461
    return-void
.end method

.method public setTurnOff()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    .line 469
    return-void
.end method

.method public setTurnOn()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    .line 465
    return-void
.end method
