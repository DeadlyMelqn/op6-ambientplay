.class Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;
.super Landroid/os/Handler;
.source "CameraDeviceUserShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 295
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    .line 296
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 297
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    :try_start_0
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 343
    new-instance v14, Ljava/lang/IllegalArgumentException;

    .line 344
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unknown callback message "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 343
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v14, Ljava/lang/IllegalStateException;

    .line 348
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Received remote exception during camera callback "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 347
    invoke-direct {v14, v15, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 304
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 305
    .local v3, "errorCode":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 306
    .local v10, "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v14

    invoke-interface {v14, v3, v10}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 350
    .end local v3    # "errorCode":I
    .end local v10    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :goto_0
    return-void

    .line 310
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v14

    invoke-interface {v14}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onDeviceIdle()V

    goto :goto_0

    .line 313
    :pswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v12, v14, v16

    .line 314
    .local v12, "timestamp":J
    const/16 v14, 0x20

    shl-long v14, v12, v14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    or-long v12, v14, v16

    .line 315
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 316
    .restart local v10    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v14

    invoke-interface {v14, v10, v12, v13}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    goto :goto_0

    .line 320
    .end local v10    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local v12    # "timestamp":J
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    .line 321
    .local v9, "resultArray":[Ljava/lang/Object;
    const/4 v14, 0x0

    aget-object v8, v9, v14

    check-cast v8, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 322
    .local v8, "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    const/4 v14, 0x1

    aget-object v10, v9, v14

    check-cast v10, Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 323
    .restart local v10    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v14

    invoke-interface {v14, v8, v10}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    goto :goto_0

    .line 327
    .end local v8    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v9    # "resultArray":[Ljava/lang/Object;
    .end local v10    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :pswitch_4
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 328
    .local v11, "streamId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v14

    invoke-interface {v14, v11}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onPrepared(I)V

    goto :goto_0

    .line 332
    .end local v11    # "streamId":I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 333
    .local v6, "objArray":[Ljava/lang/Object;
    const/4 v14, 0x0

    aget-object v14, v6, v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 334
    .local v4, "lastFrameNumber":J
    const/4 v14, 0x1

    aget-object v14, v6, v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 335
    .local v7, "repeatingRequestId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v14

    invoke-interface {v14, v4, v5, v7}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onRepeatingRequestError(JI)V

    goto/16 :goto_0

    .line 339
    .end local v4    # "lastFrameNumber":J
    .end local v6    # "objArray":[Ljava/lang/Object;
    .end local v7    # "repeatingRequestId":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread$CallbackHandler;->this$1:Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;

    invoke-static {v14}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;->-get0(Landroid/hardware/camera2/legacy/CameraDeviceUserShim$CameraCallbackThread;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v14

    invoke-interface {v14}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onRequestQueueEmpty()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
