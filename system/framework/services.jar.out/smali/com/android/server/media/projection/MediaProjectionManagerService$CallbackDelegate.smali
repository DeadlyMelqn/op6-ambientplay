.class Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackDelegate"
.end annotation


# instance fields
.field private mClientCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/projection/IMediaProjectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mWatcherCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/projection/IMediaProjectionWatcherCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    .line 494
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    .line 495
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    .line 496
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    .line 497
    return-void
.end method


# virtual methods
.method public add(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 503
    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public add(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 509
    return-void

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 6
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .prologue
    .line 524
    if-nez p1, :cond_0

    .line 525
    const-string/jumbo v3, "MediaProjectionManagerService"

    const-string/jumbo v4, "Tried to dispatch start notification for a null media projection. Ignoring!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void

    .line 529
    :cond_0
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 530
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 531
    .local v0, "callback":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2

    .line 532
    .local v2, "info":Landroid/media/projection/MediaProjectionInfo;
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;

    invoke-direct {v5, v2, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;-><init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 529
    .end local v0    # "callback":Landroid/media/projection/IMediaProjectionWatcherCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/media/projection/MediaProjectionInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 535
    return-void
.end method

.method public dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .locals 7
    .param p1, "projection"    # Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .prologue
    .line 538
    if-nez p1, :cond_0

    .line 539
    const-string/jumbo v4, "MediaProjectionManagerService"

    const-string/jumbo v5, "Tried to dispatch stop notification for a null media projection. Ignoring!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void

    .line 543
    :cond_0
    iget-object v5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 544
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/IMediaProjectionCallback;

    .line 545
    .local v0, "callback":Landroid/media/projection/IMediaProjectionCallback;
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;

    invoke-direct {v6, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;-><init>(Landroid/media/projection/IMediaProjectionCallback;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 543
    .end local v0    # "callback":Landroid/media/projection/IMediaProjectionCallback;
    .end local v2    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 548
    .restart local v2    # "callback$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 549
    .local v1, "callback":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v3

    .line 550
    .local v3, "info":Landroid/media/projection/MediaProjectionInfo;
    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;

    invoke-direct {v6, v3, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;-><init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1    # "callback":Landroid/media/projection/IMediaProjectionWatcherCallback;
    .end local v3    # "info":Landroid/media/projection/MediaProjectionInfo;
    :cond_2
    monitor-exit v5

    .line 553
    return-void
.end method

.method public remove(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .prologue
    .line 512
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mClientCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 515
    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .prologue
    .line 518
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->mWatcherCallbacks:Ljava/util/Map;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 521
    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
