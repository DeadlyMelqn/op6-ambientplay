.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 410
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 411
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 412
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 416
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 553
    :pswitch_0
    return-void

    .line 418
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 420
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/io/FileDescriptor;

    .line 421
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/io/PrintWriter;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 420
    invoke-virtual {v5, v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v3

    .line 426
    :try_start_1
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 428
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 429
    return-void

    .line 422
    :catch_0
    move-exception v10

    .line 423
    .local v10, "e":Ljava/lang/RuntimeException;
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 432
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/view/InputBindResult;

    .line 436
    .local v13, "res":Lcom/android/internal/view/InputBindResult;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 437
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v4, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v1, v4, :cond_2

    .line 438
    :cond_0
    const-string/jumbo v1, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring onBind: cur seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v5, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 439
    const-string/jumbo v5, ", given seq="

    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 439
    iget v5, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_1

    iget-object v1, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v1, v4, :cond_1

    .line 441
    iget-object v1, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v3

    .line 443
    return-void

    .line 446
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 447
    const/4 v4, 0x0

    .line 446
    invoke-static {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->-set1(Landroid/view/inputmethod/InputMethodManager;I)I

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v4, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v4, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v3

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x5

    .line 455
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 454
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 456
    return-void

    .line 436
    :catchall_1
    move-exception v1

    monitor-exit v3

    throw v1

    .line 459
    .end local v13    # "res":Lcom/android/internal/view/InputBindResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 461
    .local v14, "sequence":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    .line 467
    .local v2, "reason":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 468
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eq v1, v14, :cond_3

    monitor-exit v3

    .line 469
    return-void

    .line 471
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 477
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v15, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .local v15, "startInput":Z
    monitor-exit v3

    .line 479
    if-eqz v15, :cond_5

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 481
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 482
    const/4 v6, 0x0

    .line 480
    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 484
    .end local v2    # "reason":I
    :cond_5
    return-void

    .line 467
    .end local v15    # "startInput":Z
    .restart local v2    # "reason":I
    :catchall_2
    move-exception v1

    monitor-exit v3

    throw v1

    .line 487
    .end local v2    # "reason":I
    .end local v14    # "sequence":I
    :pswitch_4
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_8

    const/4 v7, 0x1

    .line 488
    .local v7, "active":Z
    :goto_1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_9

    const/4 v11, 0x1

    .line 492
    .local v11, "fullscreen":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 493
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v7, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 495
    if-nez v7, :cond_6

    .line 499
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 503
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 509
    :cond_6
    :goto_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 510
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v3, v3, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-static {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->-wrap0(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 511
    if-eqz v7, :cond_a

    .line 512
    const/4 v2, 0x7

    .line 514
    .restart local v2    # "reason":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .end local v2    # "reason":I
    :cond_7
    monitor-exit v16

    .line 518
    return-void

    .line 487
    .end local v7    # "active":Z
    .end local v11    # "fullscreen":Z
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "active":Z
    goto :goto_1

    .line 488
    :cond_9
    const/4 v11, 0x0

    .restart local v11    # "fullscreen":Z
    goto :goto_2

    .line 513
    :cond_a
    const/16 v2, 0x8

    .restart local v2    # "reason":I
    goto :goto_4

    .line 492
    .end local v2    # "reason":I
    :catchall_3
    move-exception v1

    monitor-exit v16

    throw v1

    .line 521
    .end local v7    # "active":Z
    .end local v11    # "fullscreen":Z
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    .line 522
    return-void

    .line 525
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 526
    return-void

    .line 529
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    .line 530
    return-void

    .line 533
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 534
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->-set0(Landroid/view/inputmethod/InputMethodManager;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    monitor-exit v3

    .line 536
    return-void

    .line 533
    :catchall_4
    move-exception v1

    monitor-exit v3

    throw v1

    .line 539
    :pswitch_9
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_d

    const/4 v11, 0x1

    .line 540
    .restart local v11    # "fullscreen":Z
    :goto_5
    const/4 v12, 0x0

    .line 541
    .local v12, "ic":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 542
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v1, :cond_b

    .line 544
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result-object v12

    .end local v12    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_b
    monitor-exit v3

    .line 547
    if-eqz v12, :cond_c

    .line 548
    invoke-interface {v12, v11}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 550
    :cond_c
    return-void

    .line 539
    .end local v11    # "fullscreen":Z
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "fullscreen":Z
    goto :goto_5

    .line 541
    .restart local v12    # "ic":Landroid/view/inputmethod/InputConnection;
    :catchall_5
    move-exception v1

    monitor-exit v3

    throw v1

    .line 504
    .end local v12    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v7    # "active":Z
    :catch_1
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
