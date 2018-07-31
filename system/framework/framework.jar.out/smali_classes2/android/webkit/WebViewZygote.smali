.class public Landroid/webkit/WebViewZygote;
.super Ljava/lang/Object;
.source "WebViewZygote.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebViewZygote"

.field private static final WEBVIEW_ZYGOTE_SERVICE_32:Ljava/lang/String; = "webview_zygote32"

.field private static final WEBVIEW_ZYGOTE_SERVICE_64:Ljava/lang/String; = "webview_zygote64"

.field private static final WEBVIEW_ZYGOTE_SOCKET:Ljava/lang/String; = "webview_zygote"

.field private static final sLock:Ljava/lang/Object;

.field private static sMultiprocessEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sPackage:Landroid/content/pm/PackageInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sPackageCacheKey:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sStartedService:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sZygote:Landroid/os/ZygoteProcess;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    .line 62
    sput-boolean v1, Landroid/webkit/WebViewZygote;->sStartedService:Z

    .line 82
    sput-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static connectToZygoteIfNeededLocked()V
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 190
    sget-object v6, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    if-eqz v6, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    sget-object v6, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    if-nez v6, :cond_1

    .line 195
    const-string/jumbo v6, "WebViewZygote"

    const-string/jumbo v7, "Cannot connect to zygote, no package specified"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 199
    :cond_1
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "serviceName":Ljava/lang/String;
    invoke-static {v3}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 201
    const-string/jumbo v6, "WebViewZygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not running"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 206
    :cond_2
    :try_start_0
    new-instance v6, Landroid/os/ZygoteProcess;

    const-string/jumbo v7, "webview_zygote"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/os/ZygoteProcess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    .line 214
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v5, "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .local v1, "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v8, v6, v5, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 217
    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "librarySearchPath":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 221
    .local v4, "zip":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "webview_zygote"

    invoke-static {v6}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v6, "WebViewZygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Preloading package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v6, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    sget-object v7, Landroid/webkit/WebViewZygote;->sPackageCacheKey:Ljava/lang/String;

    .line 225
    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    .line 224
    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/os/ZygoteProcess;->preloadPackageForAbi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    .end local v1    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "librarySearchPath":Ljava/lang/String;
    .end local v4    # "zip":Ljava/lang/String;
    .end local v5    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 219
    .restart local v1    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "librarySearchPath":Ljava/lang/String;
    .restart local v5    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .restart local v4    # "zip":Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v1    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "librarySearchPath":Ljava/lang/String;
    .end local v4    # "zip":Ljava/lang/String;
    .end local v5    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "WebViewZygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error connecting to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    sput-object v10, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    goto :goto_1
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    sget-object v1, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getProcess()Landroid/os/ZygoteProcess;
    .locals 2

    .prologue
    .line 85
    sget-object v1, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 88
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewZygote;->waitForServiceStartAndConnect()V

    .line 89
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getServiceNameLocked()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 177
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 178
    return-object v1

    .line 180
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 181
    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const-string/jumbo v0, "webview_zygote64"

    return-object v0

    .line 185
    :cond_1
    const-string/jumbo v0, "webview_zygote32"

    return-object v0
.end method

.method public static isMultiprocessEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    sget-object v1, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    sget-boolean v2, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onWebViewProviderChanged(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v2, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_0
    sput-object p0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    .line 132
    sput-object p1, Landroid/webkit/WebViewZygote;->sPackageCacheKey:Ljava/lang/String;

    .line 135
    sget-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    .line 136
    return-void

    .line 139
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "serviceName":Ljava/lang/String;
    const/4 v1, 0x0

    sput-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    .line 144
    invoke-static {v0}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 149
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewZygote;->sStartedService:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 151
    return-void

    .line 147
    :cond_1
    :try_start_2
    invoke-static {v0}, Landroid/os/SystemService;->restart(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "serviceName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setMultiprocessEnabled(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .prologue
    .line 106
    sget-object v2, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    sput-boolean p0, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    .line 113
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 114
    .local v0, "serviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    .line 116
    :cond_0
    if-eqz p0, :cond_2

    .line 117
    :try_start_1
    sget-boolean v1, Landroid/webkit/WebViewZygote;->sStartedService:Z

    if-nez v1, :cond_1

    .line 118
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewZygote;->sStartedService:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    .line 127
    return-void

    .line 122
    :cond_2
    :try_start_2
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x0

    sput-boolean v1, Landroid/webkit/WebViewZygote;->sStartedService:Z

    .line 124
    const/4 v1, 0x0

    sput-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 106
    .end local v0    # "serviceName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static waitForServiceStartAndConnect()V
    .locals 6

    .prologue
    .line 154
    sget-boolean v2, Landroid/webkit/WebViewZygote;->sStartedService:Z

    if-nez v2, :cond_0

    .line 155
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "Tried waiting for the WebView Zygote Service to start running without first starting the service."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    sget-object v2, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 161
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "serviceName":Ljava/lang/String;
    monitor-exit v2

    .line 164
    :try_start_1
    sget-object v2, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    const-wide/16 v4, 0x1388

    invoke-static {v1, v2, v4, v5}, Landroid/os/SystemService;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    sget-object v2, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_2
    invoke-static {}, Landroid/webkit/WebViewZygote;->connectToZygoteIfNeededLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 173
    return-void

    .line 160
    .end local v1    # "serviceName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 165
    .restart local v1    # "serviceName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string/jumbo v2, "WebViewZygote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Timed out waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 170
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_1
    move-exception v3

    monitor-exit v2

    throw v3
.end method
