.class final Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
.super Lcom/android/server/autofill/RemoteFillService$PendingRequest;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingFillRequest"
.end annotation


# instance fields
.field private final mCallback:Landroid/service/autofill/IFillCallback;

.field private mCancellation:Landroid/os/ICancellationSignal;

.field private final mRequest:Landroid/service/autofill/FillRequest;


# direct methods
.method static synthetic -get0(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    .prologue
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
    .param p1, "-value"    # Landroid/os/ICancellationSignal;

    .prologue
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    return-object p1
.end method

.method public constructor <init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
    .locals 1
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "service"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    .line 536
    invoke-direct {p0, p2}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    .line 537
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    .line 539
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;-><init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCallback:Landroid/service/autofill/IFillCallback;

    .line 580
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    .prologue
    .line 620
    invoke-super {p0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    monitor-exit v2

    .line 626
    if-eqz v0, :cond_1

    .line 628
    :try_start_1
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 633
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 623
    .end local v0    # "cancellation":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 629
    .restart local v0    # "cancellation":Landroid/os/ICancellationSignal;
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "RemoteFillService"

    const-string/jumbo v3, "Error cancelling a fill request"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 3
    .param p1, "remoteService"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    const/4 v2, 0x0

    .line 587
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    monitor-exit v1

    .line 590
    if-eqz v0, :cond_0

    .line 591
    invoke-static {p1, v0}, Lcom/android/server/autofill/RemoteFillService;->-wrap2(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V

    .line 593
    :cond_0
    invoke-static {p1, p0, v2}, Lcom/android/server/autofill/RemoteFillService;->-wrap0(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    .line 594
    return-void

    .line 587
    .end local v0    # "cancellation":Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 598
    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 599
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RemoteFillService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "run() called after canceled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 601
    return-void

    :cond_1
    monitor-exit v4

    .line 604
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v2

    .line 605
    .local v2, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v2, :cond_2

    .line 607
    :try_start_1
    invoke-static {v2}, Lcom/android/server/autofill/RemoteFillService;->-get0(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    iget-object v5, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v3, v4, v5}, Landroid/service/autofill/IAutoFillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 616
    :cond_2
    :goto_0
    return-void

    .line 598
    .end local v2    # "remoteService":Lcom/android/server/autofill/RemoteFillService;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 612
    .restart local v2    # "remoteService":Lcom/android/server/autofill/RemoteFillService;
    :catch_0
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "RemoteFillService"

    const-string/jumbo v4, "Error calling on fill request"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 608
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 609
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "RemoteFillService"

    const-string/jumbo v4, "Error calling on fill request"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    invoke-static {v2, p0, v6}, Lcom/android/server/autofill/RemoteFillService;->-wrap0(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
