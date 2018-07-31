.class Lcom/android/server/storage/CacheQuotaStrategy$1$1;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/CacheQuotaStrategy$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/storage/CacheQuotaStrategy$1;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/storage/CacheQuotaStrategy$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iput-object p2, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->val$service:Landroid/os/IBinder;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 135
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v3, v3, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-static {v3}, Lcom/android/server/storage/CacheQuotaStrategy;->-get0(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v3, v3, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    iget-object v5, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->val$service:Landroid/os/IBinder;

    invoke-static {v5}, Landroid/app/usage/ICacheQuotaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/ICacheQuotaService;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/storage/CacheQuotaStrategy;->-set0(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)Landroid/app/usage/ICacheQuotaService;

    .line 137
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v3, v3, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-static {v3}, Lcom/android/server/storage/CacheQuotaStrategy;->-wrap0(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    new-instance v1, Landroid/os/RemoteCallback;

    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v3, v3, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-direct {v1, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .local v1, "remoteCallback":Landroid/os/RemoteCallback;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v3, v3, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-static {v3}, Lcom/android/server/storage/CacheQuotaStrategy;->-get1(Lcom/android/server/storage/CacheQuotaStrategy;)Landroid/app/usage/ICacheQuotaService;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/app/usage/ICacheQuotaService;->computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 148
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "CacheQuotaStrategy"

    .line 144
    const-string/jumbo v5, "Remote exception occurred while trying to get cache quota"

    .line 143
    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 135
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "remoteCallback":Landroid/os/RemoteCallback;
    .end local v2    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
