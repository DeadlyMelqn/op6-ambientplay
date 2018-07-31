.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method constructor <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/nsd/NsdManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 342
    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 343
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 348
    iget v4, p1, Landroid/os/Message;->what:I

    .line 349
    .local v4, "what":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 350
    .local v0, "key":I
    packed-switch v4, :pswitch_data_0

    .line 365
    :pswitch_0
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-get4(Landroid/net/nsd/NsdManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 366
    :try_start_0
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-get3(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 367
    .local v1, "listener":Ljava/lang/Object;
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-get5(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "ns":Landroid/net/nsd/NsdServiceInfo;
    monitor-exit v6

    .line 369
    if-nez v1, :cond_0

    .line 370
    invoke-static {}, Landroid/net/nsd/NsdManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Stale key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 352
    .end local v1    # "listener":Ljava/lang/Object;
    .end local v2    # "ns":Landroid/net/nsd/NsdServiceInfo;
    :pswitch_1
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-get1(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v6, 0x11001

    invoke-virtual {v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 353
    return-void

    .line 355
    :pswitch_2
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-get2(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 356
    return-void

    .line 358
    :pswitch_3
    invoke-static {}, Landroid/net/nsd/NsdManager;->-get0()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Channel lost"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 365
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 376
    .restart local v1    # "listener":Ljava/lang/Object;
    .restart local v2    # "ns":Landroid/net/nsd/NsdServiceInfo;
    :cond_0
    packed-switch v4, :pswitch_data_1

    .line 430
    :pswitch_4
    invoke-static {}, Landroid/net/nsd/NsdManager;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignored "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v1    # "listener":Ljava/lang/Object;
    :goto_0
    return-void

    .line 378
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v5}, Landroid/net/nsd/NsdManager;->-wrap0(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "s":Ljava/lang/String;
    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    .end local v3    # "s":Ljava/lang/String;
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_6
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    .line 383
    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/nsd/NsdManager;->-wrap0(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    .line 384
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 383
    invoke-interface {v1, v5, v6}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 387
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_7
    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v1, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    .line 390
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_8
    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v1, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    .line 395
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_9
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    .line 396
    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/nsd/NsdManager;->-wrap0(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    .line 397
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 396
    invoke-interface {v1, v5, v6}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 400
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_a
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    .line 401
    check-cast v1, Landroid/net/nsd/NsdManager$DiscoveryListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-static {v2}, Landroid/net/nsd/NsdManager;->-wrap0(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_b
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    .line 405
    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_0

    .line 408
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_c
    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 409
    .end local v1    # "listener":Ljava/lang/Object;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    .line 408
    invoke-interface {v1, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    .line 412
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_d
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    .line 413
    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_0

    .line 418
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_e
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5, v6}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    .line 419
    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    .end local v1    # "listener":Ljava/lang/Object;
    invoke-interface {v1, v2}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_0

    .line 422
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_f
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    .line 423
    check-cast v1, Landroid/net/nsd/NsdManager$ResolveListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v5}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto/16 :goto_0

    .line 426
    .restart local v1    # "listener":Ljava/lang/Object;
    :pswitch_10
    iget-object v5, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v5, v0}, Landroid/net/nsd/NsdManager;->-wrap1(Landroid/net/nsd/NsdManager;I)V

    .line 427
    check-cast v1, Landroid/net/nsd/NsdManager$ResolveListener;

    .end local v1    # "listener":Ljava/lang/Object;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v1, v5}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 376
    :pswitch_data_1
    .packed-switch 0x60002
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
