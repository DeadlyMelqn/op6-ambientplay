.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 499
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    .local p1, "this$0":Lcom/android/systemui/qs/tileimpl/QSTileImpl;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 501
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 502
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;, "Lcom/android/systemui/qs/tileimpl/QSTileImpl<TTState;>.H;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 506
    const/4 v4, 0x0

    .line 508
    .local v4, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 512
    .local v6, "start":J
    :try_start_0
    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v10, v8, :cond_2

    .line 513
    const-string/jumbo v4, "handleAddCallback"

    .line 514
    .local v4, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v9, v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v4    # "name":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 591
    .local v0, "end":J
    sget-boolean v8, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v8, :cond_0

    sub-long v8, v0, v6

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    .line 592
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Time cost in handleMessage: name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v0, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    return-void

    .line 515
    .end local v0    # "end":J
    .local v4, "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0xc

    if-ne v10, v11, :cond_3

    .line 516
    const-string/jumbo v4, "handleRemoveCallbacks"

    .line 517
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap2(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 582
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 583
    .local v5, "t":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "error":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v8, v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v8, v2, v5}, Lcom/android/systemui/qs/QSHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 518
    .end local v2    # "error":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Throwable;
    .local v4, "name":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_4

    .line 519
    const-string/jumbo v4, "handleRemoveCallback"

    .line 520
    .local v4, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v9, v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap1(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_0

    .line 521
    .local v4, "name":Ljava/lang/String;
    :cond_4
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 522
    const-string/jumbo v4, "handleClick"

    .line 524
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "full"

    const-string/jumbo v10, "1"

    invoke-static {v8, v9, v10}, Lcom/android/systemui/util/MdmLogger;->logQsTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean v8, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v8, :cond_5

    .line 528
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-get0(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v9

    .line 527
    invoke-static {v8, v9}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v3

    .line 529
    .local v3, "intent":Landroid/content/Intent;
    const-class v8, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/plugins/ActivityStarter;

    .line 530
    const/4 v9, 0x0

    .line 529
    invoke-interface {v8, v3, v9}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 532
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    goto/16 :goto_0

    .line 534
    .local v4, "name":Ljava/lang/String;
    :cond_6
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 535
    const-string/jumbo v4, "handleSecondaryClick"

    .line 537
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "half"

    const-string/jumbo v10, "1"

    invoke-static {v8, v9, v10}, Lcom/android/systemui/util/MdmLogger;->logQsTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick()V

    goto/16 :goto_0

    .line 540
    .local v4, "name":Ljava/lang/String;
    :cond_7
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_8

    .line 541
    const-string/jumbo v4, "handleLongClick"

    .line 543
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v8, v8, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "long"

    const-string/jumbo v10, "1"

    invoke-static {v8, v9, v10}, Lcom/android/systemui/util/MdmLogger;->logQsTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    goto/16 :goto_0

    .line 546
    .local v4, "name":Ljava/lang/String;
    :cond_8
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_9

    .line 547
    const-string/jumbo v4, "handleRefreshState"

    .line 548
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 549
    .local v4, "name":Ljava/lang/String;
    :cond_9
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_b

    .line 550
    const-string/jumbo v4, "handleShowDetail"

    .line 551
    .local v4, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_a

    :goto_1
    invoke-static {v10, v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap5(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_a
    move v8, v9

    goto :goto_1

    .line 552
    .local v4, "name":Ljava/lang/String;
    :cond_b
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_c

    .line 553
    const-string/jumbo v4, "handleUserSwitch"

    .line 554
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    goto/16 :goto_0

    .line 555
    .local v4, "name":Ljava/lang/String;
    :cond_c
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_e

    .line 556
    const-string/jumbo v4, "handleToggleStateChanged"

    .line 557
    .local v4, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_d

    :goto_2
    invoke-static {v10, v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap6(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_d
    move v8, v9

    goto :goto_2

    .line 558
    .local v4, "name":Ljava/lang/String;
    :cond_e
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x9

    if-ne v10, v11, :cond_10

    .line 559
    const-string/jumbo v4, "handleScanStateChanged"

    .line 560
    .local v4, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_f

    :goto_3
    invoke-static {v10, v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap3(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_0

    :cond_f
    move v8, v9

    goto :goto_3

    .line 561
    .local v4, "name":Ljava/lang/String;
    :cond_10
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0xa

    if-ne v10, v11, :cond_11

    .line 562
    const-string/jumbo v4, "handleDestroy"

    .line 563
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    goto/16 :goto_0

    .line 564
    .local v4, "name":Ljava/lang/String;
    :cond_11
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0xb

    if-ne v10, v11, :cond_12

    .line 565
    const-string/jumbo v4, "handleClearState"

    .line 566
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClearState()V

    goto/16 :goto_0

    .line 567
    .local v4, "name":Ljava/lang/String;
    :cond_12
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0xe

    if-ne v10, v11, :cond_14

    .line 573
    const-string/jumbo v4, "handleSetListeningInternal"

    .line 574
    .local v4, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v12, p1, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_13

    :goto_4
    invoke-static {v10, v11, v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->-wrap4(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :cond_13
    move v8, v9

    goto :goto_4

    .line 576
    .local v4, "name":Ljava/lang/String;
    :cond_14
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0xf

    if-ne v8, v9, :cond_15

    .line 577
    const-string/jumbo v4, "handleStale"

    .line 578
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v8}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    goto/16 :goto_0

    .line 580
    .local v4, "name":Ljava/lang/String;
    :cond_15
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown msg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
.end method
