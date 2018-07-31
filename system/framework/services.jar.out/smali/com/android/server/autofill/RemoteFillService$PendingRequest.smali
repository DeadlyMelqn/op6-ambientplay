.class abstract Lcom/android/server/autofill/RemoteFillService$PendingRequest;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PendingRequest"
.end annotation


# instance fields
.field private mCancelled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCompleted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field private final mServiceHandler:Landroid/os/Handler;

.field private final mTimeoutTrigger:Ljava/lang/Runnable;

.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/autofill/RemoteFillService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/autofill/RemoteFillService;

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    .line 451
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    .line 452
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->-get5(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    .line 453
    new-instance v0, Lcom/android/server/autofill/-$Lambda$tQjSpU6IVjrOfYzILn21rTYl4Vo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/autofill/-$Lambda$tQjSpU6IVjrOfYzILn21rTYl4Vo;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    .line 469
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 469
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 471
    return-void
.end method


# virtual methods
.method cancel()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 504
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 505
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 506
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 508
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 511
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    return v2

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final finish()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 484
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 486
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 488
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 490
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 491
    return v2

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getService()Lcom/android/server/autofill/RemoteFillService;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    return-object v0
.end method

.method protected isCancelledLocked()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    return v0
.end method

.method isFinal()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_server_autofill_RemoteFillService$PendingRequest_16095()V
    .locals 6

    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 455
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 456
    return-void

    .line 458
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 461
    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " timed out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 463
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_1

    .line 464
    const-string/jumbo v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " timed out after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    const-wide/16 v4, 0x1388

    .line 464
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    const-string/jumbo v3, " ms"

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->onTimeout(Lcom/android/server/autofill/RemoteFillService;)V

    :cond_1
    return-void

    .line 454
    .end local v0    # "remoteService":Lcom/android/server/autofill/RemoteFillService;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method abstract onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
.end method
