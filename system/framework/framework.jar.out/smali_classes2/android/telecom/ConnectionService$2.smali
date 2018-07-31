.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    .line 606
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 609
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1039
    :goto_0
    :pswitch_0
    return-void

    .line 611
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 613
    .local v21, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 614
    .local v20, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 615
    const-string/jumbo v4, "H.CS.aCSA"

    .line 614
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-wrap16(Landroid/telecom/ConnectionService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 620
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto :goto_0

    .line 618
    .end local v20    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :catchall_0
    move-exception v3

    .line 619
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 620
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 618
    throw v3

    .line 625
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 627
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 628
    const-string/jumbo v4, "H.CS.rCSA"

    .line 627
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v4, v3}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 631
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 632
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto :goto_0

    .line 630
    :catchall_1
    move-exception v3

    .line 631
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 632
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 630
    throw v3

    .line 637
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 638
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.crCo"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 641
    :try_start_2
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    .line 642
    .local v7, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 643
    .local v8, "id":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/ConnectionRequest;

    .line 644
    .local v9, "request":Landroid/telecom/ConnectionRequest;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v10, 0x1

    .line 645
    .local v10, "isIncoming":Z
    :goto_1
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v11, 0x1

    .line 646
    .local v11, "isUnknown":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 647
    const-string/jumbo v3, "Enqueueing pre-init request %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v12

    .line 649
    new-instance v3, Landroid/telecom/ConnectionService$2$1;

    .line 650
    const-string/jumbo v5, "H.CS.crCo.pICR"

    .line 651
    const/4 v6, 0x0

    move-object/from16 v4, p0

    .line 649
    invoke-direct/range {v3 .. v11}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-virtual {v3}, Landroid/telecom/ConnectionService$2$1;->prepare()Ljava/lang/Runnable;

    move-result-object v3

    .line 648
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 671
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 672
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 644
    .end local v10    # "isIncoming":Z
    .end local v11    # "isUnknown":Z
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "isIncoming":Z
    goto :goto_1

    .line 645
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "isUnknown":Z
    goto :goto_2

    .line 663
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static/range {v6 .. v11}, Landroid/telecom/ConnectionService;->-wrap8(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 670
    .end local v7    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "request":Landroid/telecom/ConnectionRequest;
    .end local v10    # "isIncoming":Z
    .end local v11    # "isUnknown":Z
    :catchall_2
    move-exception v3

    .line 671
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 672
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 670
    throw v3

    .line 677
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 678
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 679
    const-string/jumbo v4, "H.CS.crCoC"

    .line 678
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 681
    :try_start_4
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 682
    .restart local v8    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 683
    const-string/jumbo v3, "Enqueueing pre-init request %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v3

    .line 685
    new-instance v4, Landroid/telecom/ConnectionService$2$2;

    .line 686
    const-string/jumbo v5, "H.CS.crCoC.pICR"

    .line 688
    const/4 v6, 0x0

    .line 685
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6, v8}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telecom/ConnectionService$2$2;->prepare()Ljava/lang/Runnable;

    move-result-object v4

    .line 684
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 698
    :goto_4
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 699
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 695
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v8}, Landroid/telecom/ConnectionService;->-wrap14(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    .line 697
    .end local v8    # "id":Ljava/lang/String;
    :catchall_3
    move-exception v3

    .line 698
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 699
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 697
    throw v3

    .line 704
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 705
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.crCoF"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 708
    :try_start_6
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 709
    .restart local v8    # "id":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/ConnectionRequest;

    .line 710
    .restart local v9    # "request":Landroid/telecom/ConnectionRequest;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v10, 0x1

    .line 712
    .restart local v10    # "isIncoming":Z
    :goto_5
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/telecom/PhoneAccountHandle;

    .line 713
    .local v16, "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 714
    const-string/jumbo v3, "Enqueueing pre-init request %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v3

    .line 716
    new-instance v12, Landroid/telecom/ConnectionService$2$3;

    .line 717
    const-string/jumbo v14, "H.CS.crCoF.pICR"

    .line 718
    const/4 v15, 0x0

    move-object/from16 v13, p0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    .line 716
    invoke-direct/range {v12 .. v19}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    invoke-virtual {v12}, Landroid/telecom/ConnectionService$2$3;->prepare()Ljava/lang/Runnable;

    move-result-object v4

    .line 715
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 731
    :goto_6
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 732
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 710
    .end local v10    # "isIncoming":Z
    .end local v16    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "isIncoming":Z
    goto :goto_5

    .line 726
    .restart local v16    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    :cond_5
    :try_start_7
    const-string/jumbo v3, "createConnectionFailed %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v16

    invoke-static {v3, v0, v8, v9, v10}, Landroid/telecom/ConnectionService;->-wrap7(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    .line 730
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "request":Landroid/telecom/ConnectionRequest;
    .end local v10    # "isIncoming":Z
    .end local v16    # "connectionMgrPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    :catchall_4
    move-exception v3

    .line 731
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 732
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 730
    throw v3

    .line 737
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 738
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.ab"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 740
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 742
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 743
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 741
    :catchall_5
    move-exception v3

    .line 742
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 743
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 741
    throw v3

    .line 748
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 749
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.an"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 751
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 753
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 754
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 752
    :catchall_6
    move-exception v3

    .line 753
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 754
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 752
    throw v3

    .line 759
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 760
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 761
    const-string/jumbo v4, "H.CS.anV"

    .line 760
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 763
    :try_start_a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 764
    .local v23, "callId":Ljava/lang/String;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v31, v0

    .line 765
    .local v31, "videoState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 767
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 768
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 766
    .end local v23    # "callId":Ljava/lang/String;
    .end local v31    # "videoState":I
    :catchall_7
    move-exception v3

    .line 767
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 768
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 766
    throw v3

    .line 773
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 774
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.r"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 776
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap21(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 778
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 779
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 777
    :catchall_8
    move-exception v3

    .line 778
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 779
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 777
    throw v3

    .line 784
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 785
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 786
    const-string/jumbo v4, "H.CS.rWM"

    .line 785
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 788
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v3, v4}, Landroid/telecom/ConnectionService;->-wrap22(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 790
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 791
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 789
    :catchall_9
    move-exception v3

    .line 790
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 791
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 789
    throw v3

    .line 796
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 797
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.d"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 799
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 801
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 802
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 800
    :catchall_a
    move-exception v3

    .line 801
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 802
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 800
    throw v3

    .line 807
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 808
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.s"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 810
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap25(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 812
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 813
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 811
    :catchall_b
    move-exception v3

    .line 812
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 813
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 811
    throw v3

    .line 818
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 819
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.r"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 821
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap12(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 823
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 824
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 822
    :catchall_c
    move-exception v3

    .line 823
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 824
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 822
    throw v3

    .line 829
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 830
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.u"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 832
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap31(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 834
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 835
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 833
    :catchall_d
    move-exception v3

    .line 834
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 835
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 833
    throw v3

    .line 840
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 841
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 842
    const-string/jumbo v4, "H.CS.cASC"

    .line 841
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 844
    :try_start_11
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 845
    .restart local v23    # "callId":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/telecom/CallAudioState;

    .line 846
    .local v22, "audioState":Landroid/telecom/CallAudioState;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v4, Landroid/telecom/CallAudioState;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    move-object/from16 v0, v23

    invoke-static {v3, v0, v4}, Landroid/telecom/ConnectionService;->-wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    .line 848
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 849
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 847
    .end local v22    # "audioState":Landroid/telecom/CallAudioState;
    .end local v23    # "callId":Ljava/lang/String;
    :catchall_e
    move-exception v3

    .line 848
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 849
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 847
    throw v3

    .line 854
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 856
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_12
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 857
    const-string/jumbo v4, "H.CS.pDT"

    .line 856
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v5, v3, v4}, Landroid/telecom/ConnectionService;->-wrap19(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    .line 860
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 861
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 859
    :catchall_f
    move-exception v3

    .line 860
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 861
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 859
    throw v3

    .line 866
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 868
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_13
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 869
    const-string/jumbo v4, "H.CS.sDT"

    .line 868
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap28(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_10

    .line 872
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 873
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 871
    :catchall_10
    move-exception v3

    .line 872
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 873
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 871
    throw v3

    .line 878
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 880
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_14
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 881
    .restart local v23    # "callId":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    .line 882
    .local v28, "participant":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    .line 884
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 883
    .end local v23    # "callId":Ljava/lang/String;
    .end local v28    # "participant":Ljava/lang/String;
    :catchall_11
    move-exception v3

    .line 884
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 883
    throw v3

    .line 889
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 891
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_15
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 892
    const-string/jumbo v4, "H.CS.c"

    .line 891
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 893
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 894
    .local v24, "callId1":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 895
    .local v25, "callId2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap6(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_12

    .line 897
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 898
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 896
    .end local v24    # "callId1":Ljava/lang/String;
    .end local v25    # "callId2":Ljava/lang/String;
    :catchall_12
    move-exception v3

    .line 897
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 898
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 896
    throw v3

    .line 903
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 905
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_16
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 906
    const-string/jumbo v4, "H.CS.sFC"

    .line 905
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap26(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_13

    .line 909
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 910
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 908
    :catchall_13
    move-exception v3

    .line 909
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 910
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 908
    throw v3

    .line 915
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 917
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_17
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 918
    const-string/jumbo v4, "H.CS.mC"

    .line 917
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    .line 921
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 922
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 920
    :catchall_14
    move-exception v3

    .line 921
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 922
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 920
    throw v3

    .line 927
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 929
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_18
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 930
    const-string/jumbo v4, "H.CS.sC"

    .line 929
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap30(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    .line 933
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 934
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 932
    :catchall_15
    move-exception v3

    .line 933
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 934
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 932
    throw v3

    .line 939
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 941
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_19
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 942
    const-string/jumbo v4, "H.CS.oPDC"

    .line 941
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 943
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 944
    .restart local v23    # "callId":Ljava/lang/String;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/16 v29, 0x1

    .line 945
    .local v29, "proceed":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    .line 947
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 948
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 944
    .end local v29    # "proceed":Z
    :cond_6
    const/16 v29, 0x0

    .restart local v29    # "proceed":Z
    goto :goto_7

    .line 946
    .end local v23    # "callId":Ljava/lang/String;
    .end local v29    # "proceed":Z
    :catchall_16
    move-exception v3

    .line 947
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 948
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 946
    throw v3

    .line 953
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 955
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1a
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 956
    const-string/jumbo v4, "H.CS.pEC"

    .line 955
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap20(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_17

    .line 959
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 960
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 958
    :catchall_17
    move-exception v3

    .line 959
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 960
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 958
    throw v3

    .line 965
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 967
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1b
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 968
    const-string/jumbo v4, "H.CS.sCE"

    .line 967
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 969
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 970
    .restart local v23    # "callId":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 971
    .local v26, "event":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 972
    .local v27, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v3, v0, v1, v2}, Landroid/telecom/ConnectionService;->-wrap24(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_18

    .line 974
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 975
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 973
    .end local v23    # "callId":Ljava/lang/String;
    .end local v26    # "event":Ljava/lang/String;
    .end local v27    # "extras":Landroid/os/Bundle;
    :catchall_18
    move-exception v3

    .line 974
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 975
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 973
    throw v3

    .line 980
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 982
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1c
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 983
    const-string/jumbo v4, "H.CS.oEC"

    .line 982
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 984
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 985
    .restart local v23    # "callId":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 986
    .restart local v27    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap10(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_19

    .line 988
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 989
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 987
    .end local v23    # "callId":Ljava/lang/String;
    .end local v27    # "extras":Landroid/os/Bundle;
    :catchall_19
    move-exception v3

    .line 988
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 989
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 987
    throw v3

    .line 994
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 996
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1d
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 997
    const-string/jumbo v4, "H.CS.+RTT"

    .line 996
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 1000
    .restart local v23    # "callId":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/telecom/Connection$RttTextStream;

    .line 1001
    .local v30, "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap27(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1a

    .line 1003
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1004
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 1002
    .end local v23    # "callId":Ljava/lang/String;
    .end local v30    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    :catchall_1a
    move-exception v3

    .line 1003
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1004
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1002
    throw v3

    .line 1009
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 1011
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1e
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 1012
    const-string/jumbo v4, "H.CS.-RTT"

    .line 1011
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1013
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 1014
    .restart local v23    # "callId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Landroid/telecom/ConnectionService;->-wrap29(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1b

    .line 1016
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1017
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 1015
    .end local v23    # "callId":Ljava/lang/String;
    :catchall_1b
    move-exception v3

    .line 1016
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1017
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1015
    throw v3

    .line 1022
    .end local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    .line 1024
    .restart local v21    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1f
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    .line 1025
    const-string/jumbo v4, "H.CS.rTRUR"

    .line 1024
    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    .line 1026
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 1028
    .restart local v23    # "callId":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/telecom/Connection$RttTextStream;

    .line 1029
    .restart local v30    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap11(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1c

    .line 1031
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1032
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_0

    .line 1030
    .end local v23    # "callId":Ljava/lang/String;
    .end local v30    # "rttTextStream":Landroid/telecom/Connection$RttTextStream;
    :catchall_1c
    move-exception v3

    .line 1031
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1032
    invoke-static {}, Landroid/telecom/Log;->endSession()V

    .line 1030
    throw v3

    .line 609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_17
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_15
        :pswitch_16
        :pswitch_a
        :pswitch_c
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_5
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method
