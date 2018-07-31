.class public Lcom/android/server/NetworkScoreService;
.super Landroid/net/INetworkScoreService$Stub;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScoreService$1;,
        Lcom/android/server/NetworkScoreService$2;,
        Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;,
        Lcom/android/server/NetworkScoreService$DispatchingContentObserver;,
        Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;,
        Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;,
        Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;,
        Lcom/android/server/NetworkScoreService$ScanResultsSupplier;,
        Lcom/android/server/NetworkScoreService$ScoringServiceConnection;,
        Lcom/android/server/NetworkScoreService$ServiceHandler;,
        Lcom/android/server/NetworkScoreService$WifiInfoSupplier;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkScoreService"

.field private static final VERBOSE:Z


# instance fields
.field private final mContentObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLocationModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

.field private mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackageMonitorLock"
    .end annotation
.end field

.field private final mPackageMonitorLock:Ljava/lang/Object;

.field private final mScoreCaches:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mScoreCaches"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mServiceConnProducer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<",
            "Landroid/net/NetworkScorerAppData;",
            "Lcom/android/server/NetworkScoreService$ScoringServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServiceConnectionLock"
    .end annotation
.end field

.field private final mServiceConnectionLock:Ljava/lang/Object;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -com_android_server_NetworkScoreService-mthref-0(Landroid/net/NetworkScorerAppData;)Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;-><init>(Landroid/net/NetworkScorerAppData;)V

    return-object v0
.end method

.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/NetworkScoreService;)Lcom/android/server/NetworkScorerAppManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NetworkScoreService;

    .prologue
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppData;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/NetworkScoreService;
    .param p1, "appData"    # Landroid/net/NetworkScorerAppData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/NetworkScoreService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/NetworkScoreService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/NetworkScoreService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/NetworkScoreService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 84
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetworkScoreService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 85
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkScoreService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    :cond_0
    sput-boolean v1, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    .line 82
    return-void

    :cond_1
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    new-instance v0, Lcom/android/server/NetworkScorerAppManager;

    invoke-direct {v0, p1}, Lcom/android/server/NetworkScorerAppManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;->$INST$0:Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;

    .line 239
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 238
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V

    .line 240
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkScoreAppManager"    # Lcom/android/server/NetworkScorerAppManager;
    .param p4, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/NetworkScorerAppManager;",
            "Ljava/util/function/Function",
            "<",
            "Landroid/net/NetworkScorerAppData;",
            "Lcom/android/server/NetworkScoreService$ScoringServiceConnection;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "serviceConnProducer":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/net/NetworkScorerAppData;Lcom/android/server/NetworkScoreService$ScoringServiceConnection;>;"
    const/4 v4, 0x0

    .line 243
    invoke-direct {p0}, Landroid/net/INetworkScoreService$Stub;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/android/server/NetworkScoreService$1;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$1;-><init>(Lcom/android/server/NetworkScoreService;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Lcom/android/server/NetworkScoreService$2;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$2;-><init>(Lcom/android/server/NetworkScoreService;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 247
    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 248
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 249
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 251
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 252
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v5, v4

    .line 251
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 254
    new-instance v0, Lcom/android/server/NetworkScoreService$ServiceHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/server/NetworkScoreService$ServiceHandler;-><init>(Lcom/android/server/NetworkScoreService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    .line 255
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.location.MODE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    .local v8, "locationModeFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 257
    iget-object v6, p0, Lcom/android/server/NetworkScoreService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 258
    iget-object v10, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    move-object v9, v4

    .line 256
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 259
    new-instance v0, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mContentObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 260
    iput-object p3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    .line 261
    return-void
.end method

.method private bindToScoringServiceIfNeeded()V
    .locals 3

    .prologue
    .line 338
    sget-boolean v1, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetworkScoreService"

    const-string/jumbo v2, "bindToScoringServiceIfNeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v1}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 340
    .local v0, "scorerData":Landroid/net/NetworkScorerAppData;
    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    .line 341
    return-void
.end method

.method private bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V
    .locals 3
    .param p1, "appData"    # Landroid/net/NetworkScorerAppData;

    .prologue
    .line 351
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindToScoringServiceIfNeeded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    if-eqz p1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/NetworkScorerAppData;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 355
    if-eqz v0, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-nez v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->bind(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 371
    :goto_0
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 369
    :cond_3
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    goto :goto_0
.end method

.method private canCallerRequestScores()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 645
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.REQUEST_NETWORK_SCORES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private canCallerScoreNetworks()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 650
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.SCORE_NETWORKS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private clearInternal()V
    .locals 2

    .prologue
    .line 770
    new-instance v0, Lcom/android/server/NetworkScoreService$3;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$3;-><init>(Lcom/android/server/NetworkScoreService;)V

    .line 781
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCacheLists()Ljava/util/Collection;

    move-result-object v1

    .line 770
    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V

    .line 782
    return-void
.end method

.method private getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 922
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 923
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 927
    return-object v2

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScoreCacheLists()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 898
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v1

    .line 899
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 898
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCallerSystemProcess(I)Z
    .locals 1
    .param p1, "callingUid"    # I

    .prologue
    .line 697
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshBinding()V
    .locals 2

    .prologue
    .line 281
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "refreshBinding()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->updateState()V

    .line 284
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->migrateNetworkScorerAppSettingIfNeeded()V

    .line 285
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageMonitorIfNeeded()V

    .line 286
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded()V

    .line 287
    return-void
.end method

.method private registerPackageMonitorIfNeeded()V
    .locals 7

    .prologue
    .line 307
    sget-boolean v1, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetworkScoreService"

    const-string/jumbo v2, "registerPackageMonitorIfNeeded()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v1}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 309
    .local v0, "appData":Landroid/net/NetworkScorerAppData;
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v1

    .line 313
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v3, v3, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 312
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 311
    if-eqz v1, :cond_3

    .line 314
    :cond_1
    sget-boolean v1, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v1, :cond_2

    .line 315
    const-string/jumbo v1, "NetworkScoreService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unregistering package monitor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v4, v4, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->unregister()V

    .line 319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 323
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    if-nez v1, :cond_4

    .line 324
    new-instance v1, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 325
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v3

    .line 324
    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;)V

    iput-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 327
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x0

    .line 328
    const/4 v6, 0x0

    .line 327
    invoke-virtual {v1, v3, v5, v4, v6}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 329
    sget-boolean v1, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v1, :cond_4

    .line 330
    const-string/jumbo v1, "NetworkScoreService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Registered package monitor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 331
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v4, v4, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    .line 330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v2

    .line 335
    return-void

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private registerRecommendationSettingsObserver()V
    .locals 4

    .prologue
    .line 290
    const-string/jumbo v2, "network_recommendations_package"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 291
    .local v0, "packageNameUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContentObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 292
    const/4 v3, 0x1

    .line 291
    invoke-virtual {v2, v0, v3}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->observe(Landroid/net/Uri;I)V

    .line 294
    const-string/jumbo v2, "network_recommendations_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 295
    .local v1, "settingUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContentObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 296
    const/4 v3, 0x2

    .line 295
    invoke-virtual {v2, v1, v3}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->observe(Landroid/net/Uri;I)V

    .line 297
    return-void
.end method

.method private sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<",
            "Landroid/net/INetworkScoreCache;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/net/INetworkScoreCache;Ljava/lang/Object;>;"
    .local p2, "remoteCallbackLists":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callbackList$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 906
    .local v0, "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    monitor-enter v0

    .line 907
    :try_start_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    .line 909
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 910
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkScoreCache;

    .line 911
    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    .line 910
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 914
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    goto :goto_0

    .line 913
    :catchall_0
    move-exception v4

    .line 914
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 913
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 906
    .end local v2    # "count":I
    .end local v3    # "i":I
    :catchall_1
    move-exception v4

    monitor-exit v0

    throw v4

    .line 918
    .end local v0    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    :cond_1
    return-void
.end method

.method private unbindFromScoringServiceIfNeeded()V
    .locals 4

    .prologue
    .line 374
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "unbindFromScoringServiceIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->unbind(Landroid/content/Context;)V

    .line 378
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnected from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 379
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 383
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    .line 384
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearScores()Z
    .locals 4

    .prologue
    .line 657
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerRequestScores()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 660
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    const/4 v2, 0x1

    .line 663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    return v2

    .line 662
    :catchall_0
    move-exception v2

    .line 663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 662
    throw v2

    .line 666
    .end local v0    # "token":J
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    .line 667
    const-string/jumbo v3, "Caller is neither the active scorer nor the scorer manager."

    .line 666
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public disableScoring()V
    .locals 2

    .prologue
    .line 760
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerRequestScores()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/SecurityException;

    .line 762
    const-string/jumbo v1, "Caller is neither the active scorer nor the scorer manager."

    .line 761
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 857
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "NetworkScoreService"

    invoke-static {v1, v4, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 858
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 860
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v1}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 861
    .local v0, "currentScorer":Landroid/net/NetworkScorerAppData;
    if-nez v0, :cond_1

    .line 862
    const-string/jumbo v1, "Scoring is disabled."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 887
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    return-void

    .line 865
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current scorer: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    new-instance v1, Lcom/android/server/NetworkScoreService$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/NetworkScoreService$4;-><init>(Lcom/android/server/NetworkScoreService;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 876
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCacheLists()Ljava/util/Collection;

    move-result-object v4

    .line 867
    invoke-direct {p0, v1, v4}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V

    .line 878
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 879
    :try_start_2
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_2

    .line 880
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    monitor-exit v4

    .line 885
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 887
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    return-void

    .line 882
    :cond_2
    :try_start_4
    const-string/jumbo v1, "ScoringServiceConnection: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v4

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 886
    .end local v0    # "currentScorer":Landroid/net/NetworkScorerAppData;
    :catchall_1
    move-exception v1

    .line 887
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    throw v1
.end method

.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 728
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerSystemProcess(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerRequestScores()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    .line 739
    return-object v2

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 735
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 736
    const-string/jumbo v1, "Caller is neither the system process nor a score requester."

    .line 735
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 708
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerRequestScores()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerScoreNetworks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    .line 719
    return-object v2

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 715
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 716
    const-string/jumbo v1, "Caller is not a network scorer/requester."

    .line 715
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllValidScorers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerSystemProcess(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerRequestScores()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Ljava/lang/SecurityException;

    .line 751
    const-string/jumbo v1, "Caller is neither the system process nor a score requester."

    .line 750
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCallerActiveScorer(I)Z
    .locals 3
    .param p1, "callingUid"    # I

    .prologue
    const/4 v0, 0x0

    .line 690
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v2

    iget v2, v2, Landroid/net/NetworkScorerAppData;->packageUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    .line 691
    return v0

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onUserUnlocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 276
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    .line 278
    return-void
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;
    .param p3, "filterType"    # I

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.REQUEST_NETWORK_SCORES"

    const-string/jumbo v5, "NetworkScoreService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 791
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 792
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 793
    .local v0, "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    if-nez v0, :cond_0

    .line 794
    new-instance v0, Landroid/os/RemoteCallbackList;

    .end local v0    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 795
    .restart local v0    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 798
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    :cond_1
    const-string/jumbo v1, "NetworkScoreService"

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    const-string/jumbo v1, "NetworkScoreService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to register NetworkScoreCache for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 807
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 809
    return-void

    .line 791
    .end local v0    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 806
    :catchall_1
    move-exception v1

    .line 807
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 806
    throw v1
.end method

.method public requestScores([Landroid/net/NetworkKey;)Z
    .locals 7
    .param p1, "networks"    # [Landroid/net/NetworkKey;

    .prologue
    .line 834
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.REQUEST_NETWORK_SCORES"

    const-string/jumbo v6, "NetworkScoreService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 837
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 838
    .local v1, "provider":Landroid/net/INetworkRecommendationProvider;
    if-eqz v1, :cond_0

    .line 840
    :try_start_1
    invoke-interface {v1, p1}, Landroid/net/INetworkRecommendationProvider;->requestScores([Landroid/net/NetworkKey;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    const/4 v4, 0x1

    .line 851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 843
    return v4

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "NetworkScoreService"

    const-string/jumbo v5, "Failed to request scores."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 849
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    .line 851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    return v4

    .line 850
    .end local v1    # "provider":Landroid/net/INetworkRecommendationProvider;
    :catchall_0
    move-exception v4

    .line 851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 850
    throw v4
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 674
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerSystemProcess(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->canCallerScoreNetworks()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 675
    new-instance v0, Ljava/lang/SecurityException;

    .line 676
    const-string/jumbo v1, "Caller is neither the system process or a network scorer."

    .line 675
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0, p1}, Lcom/android/server/NetworkScorerAppManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method systemReady()V
    .locals 2

    .prologue
    .line 265
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerRecommendationSettingsObserver()V

    .line 267
    return-void
.end method

.method systemRunning()V
    .locals 2

    .prologue
    .line 271
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkScoreService"

    const-string/jumbo v1, "systemRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    return-void
.end method

.method public unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    .prologue
    .line 813
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.REQUEST_NETWORK_SCORES"

    const-string/jumbo v5, "NetworkScoreService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 816
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 817
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 818
    .local v0, "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 819
    :cond_0
    const-string/jumbo v1, "NetworkScoreService"

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    const-string/jumbo v1, "NetworkScoreService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to unregister NetworkScoreCache for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 828
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    return-void

    .line 823
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 824
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 816
    .end local v0    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v4

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 827
    :catchall_1
    move-exception v1

    .line 828
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 827
    throw v1
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 13
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;

    .prologue
    const/4 v10, 0x0

    .line 388
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 389
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Caller with UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 390
    const-string/jumbo v12, " is not the active scorer."

    .line 389
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 393
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 396
    .local v8, "token":J
    :try_start_0
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 397
    .local v7, "networksByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    array-length v11, p1

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v5, p1, v10

    .line 398
    .local v5, "network":Landroid/net/ScoredNetwork;
    iget-object v12, v5, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v12, v12, Landroid/net/NetworkKey;->type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 399
    .local v6, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-nez v6, :cond_1

    .line 400
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .restart local v6    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    iget-object v12, v5, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v12, v12, Landroid/net/NetworkKey;->type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_1
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 407
    .end local v5    # "network":Landroid/net/ScoredNetwork;
    .end local v6    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 410
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    iget-object v11, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :try_start_1
    iget-object v10, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 412
    .local v0, "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    if-eqz v0, :cond_4

    .line 413
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v10

    if-nez v10, :cond_5

    const/4 v4, 0x1

    .local v4, "isEmpty":Z
    :goto_2
    :try_start_2
    monitor-exit v11

    .line 416
    if-eqz v4, :cond_6

    .line 417
    const-string/jumbo v10, "NetworkScoreService"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 418
    const-string/jumbo v10, "NetworkScoreService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No scorer registered for type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 419
    const-string/jumbo v12, ", discarding"

    .line 418
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 431
    .end local v0    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "isEmpty":Z
    .end local v7    # "networksByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    :catchall_0
    move-exception v10

    .line 432
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    throw v10

    .line 412
    .restart local v0    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v7    # "networksByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    :cond_4
    const/4 v4, 0x1

    .restart local v4    # "isEmpty":Z
    goto :goto_2

    .line 413
    .end local v4    # "isEmpty":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "isEmpty":Z
    goto :goto_2

    .line 410
    .end local v0    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    .end local v4    # "isEmpty":Z
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11

    throw v10

    .line 425
    .restart local v0    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    .restart local v4    # "isEmpty":Z
    :cond_6
    iget-object v12, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 426
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 425
    invoke-static {v12, v10, v11}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->create(Landroid/content/Context;Ljava/util/List;I)Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;

    move-result-object v1

    .line 427
    .local v1, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/net/INetworkScoreCache;Ljava/lang/Object;>;"
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 430
    .end local v0    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    .end local v1    # "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/net/INetworkScoreCache;Ljava/lang/Object;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    .end local v4    # "isEmpty":Z
    :cond_7
    const/4 v10, 0x1

    .line 432
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 430
    return v10
.end method
