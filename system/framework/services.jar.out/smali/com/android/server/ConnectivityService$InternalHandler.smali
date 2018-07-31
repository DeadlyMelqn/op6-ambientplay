.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2845
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2846
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2847
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2851
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 2941
    :cond_0
    :goto_0
    return-void

    .line 2854
    :sswitch_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v6, v7}, Lcom/android/server/ConnectivityService;->-wrap20(Lcom/android/server/ConnectivityService;I)V

    goto :goto_0

    .line 2858
    :sswitch_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap9(Lcom/android/server/ConnectivityService;)V

    goto :goto_0

    .line 2862
    :sswitch_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/ProxyInfo;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap6(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto :goto_0

    .line 2866
    :sswitch_3
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto :goto_0

    .line 2870
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Messenger;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap25(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto :goto_0

    .line 2874
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_0

    .line 2879
    :sswitch_6
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap17(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_0

    .line 2884
    :sswitch_7
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, p1}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    .line 2888
    :sswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2889
    .local v3, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v3}, Lcom/android/server/ConnectivityService;->-wrap24(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_0

    .line 2893
    .end local v3    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :sswitch_9
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/PendingIntent;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v6, v8}, Lcom/android/server/ConnectivityService;->-wrap18(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 2897
    :sswitch_a
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkRequest;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v6, v8}, Lcom/android/server/ConnectivityService;->-wrap19(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto :goto_0

    .line 2901
    :sswitch_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Network;

    .line 2902
    .local v2, "network":Landroid/net/Network;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->-wrap2(I)Z

    move-result v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->-wrap2(I)Z

    move-result v8

    invoke-static {v6, v2, v7, v8}, Lcom/android/server/ConnectivityService;->-wrap22(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto :goto_0

    .line 2906
    .end local v2    # "network":Landroid/net/Network;
    :sswitch_c
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Network;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap23(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_0

    .line 2910
    :sswitch_d
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Network;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_0

    .line 2914
    :sswitch_e
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-wrap11(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 2919
    :sswitch_f
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2924
    :sswitch_10
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Network;

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->-wrap3(Lcom/android/server/ConnectivityService;Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2925
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2926
    .local v5, "slot":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 2927
    .local v4, "reason":I
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get2(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v6

    invoke-virtual {v6, v0, v5, v4}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto/16 :goto_0

    .line 2931
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v4    # "reason":I
    .end local v5    # "slot":I
    :sswitch_11
    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "nai$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2932
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_1

    .line 2937
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "nai$iterator":Ljava/util/Iterator;
    :sswitch_12
    iget-object v7, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Network;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->-wrap2(I)Z

    move-result v9

    invoke-static {v7, v6, v8, v9}, Lcom/android/server/ConnectivityService;->-wrap21(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V

    goto/16 :goto_0

    .line 2851
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_5
        0x13 -> :sswitch_6
        0x14 -> :sswitch_8
        0x15 -> :sswitch_6
        0x16 -> :sswitch_a
        0x17 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_11
        0x1a -> :sswitch_7
        0x1b -> :sswitch_9
        0x1c -> :sswitch_b
        0x1d -> :sswitch_d
        0x1e -> :sswitch_e
        0x1f -> :sswitch_7
        0x23 -> :sswitch_c
        0x24 -> :sswitch_12
        0x8100b -> :sswitch_f
        0x8100c -> :sswitch_10
    .end sparse-switch
.end method
