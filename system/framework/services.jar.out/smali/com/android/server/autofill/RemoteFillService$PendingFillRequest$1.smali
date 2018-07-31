.class Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

.field final synthetic val$request:Landroid/service/autofill/FillRequest;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    .line 539
    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 5
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;

    .prologue
    .line 542
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v3, v2, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v4, v2, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 545
    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v2, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->-set0(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;

    .line 546
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v2}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .local v0, "cancelled":Z
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 548
    if-eqz v0, :cond_0

    .line 550
    :try_start_3
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    monitor-exit v3

    .line 556
    return-void

    .line 544
    .end local v0    # "cancelled":Z
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 542
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 551
    .restart local v0    # "cancelled":Z
    :catch_0
    move-exception v1

    .line 552
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "RemoteFillService"

    const-string/jumbo v4, "Error requesting a cancellation"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 574
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_1

    .line 576
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 575
    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/RemoteFillService;->-wrap0(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    .line 578
    :cond_1
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 4
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .prologue
    .line 560
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 563
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_1

    .line 564
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$1:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .line 565
    invoke-static {}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    invoke-virtual {v3}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v3

    .line 564
    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/autofill/RemoteFillService;->-wrap1(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;IILandroid/service/autofill/FillResponse;)V

    .line 567
    :cond_1
    return-void
.end method
