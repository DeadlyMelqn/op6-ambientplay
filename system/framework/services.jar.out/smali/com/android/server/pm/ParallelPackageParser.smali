.class Lcom/android/server/pm/ParallelPackageParser;
.super Ljava/lang/Object;
.source "ParallelPackageParser.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    }
.end annotation


# static fields
.field private static final MAX_THREADS:I = 0x4

.field private static final QUEUE_CAPACITY:I = 0xa


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private volatile mInterruptedInThread:Ljava/lang/String;

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mOnlyCore:Z

.field private final mPackageParserCallback:Landroid/content/pm/PackageParser$Callback;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/server/pm/ParallelPackageParser$ParseResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeparateProcesses:[Ljava/lang/String;

.field private final mService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Landroid/content/pm/PackageParser$Callback;)V
    .locals 3
    .param p1, "separateProcesses"    # [Ljava/lang/String;
    .param p2, "onlyCoreApps"    # Z
    .param p3, "metrics"    # Landroid/util/DisplayMetrics;
    .param p4, "cacheDir"    # Ljava/io/File;
    .param p5, "callback"    # Landroid/content/pm/PackageParser$Callback;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 55
    const-string/jumbo v0, "package-parsing-thread"

    .line 54
    const/4 v1, 0x4

    .line 55
    const/4 v2, -0x2

    .line 54
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mService:Ljava/util/concurrent/ExecutorService;

    .line 59
    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 60
    iput-boolean p2, p0, Lcom/android/server/pm/ParallelPackageParser;->mOnlyCore:Z

    .line 61
    iput-object p3, p0, Lcom/android/server/pm/ParallelPackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 62
    iput-object p4, p0, Lcom/android/server/pm/ParallelPackageParser;->mCacheDir:Ljava/io/File;

    .line 63
    iput-object p5, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParserCallback:Landroid/content/pm/PackageParser$Callback;

    .line 64
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "unfinishedTasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not all tasks finished before calling close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_pm_ParallelPackageParser_3701(Ljava/io/File;I)V
    .locals 8
    .param p1, "scanFile"    # Ljava/io/File;
    .param p2, "parseFlags"    # I

    .prologue
    const-wide/32 v6, 0x40000

    .line 107
    new-instance v3, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    invoke-direct {v3}, Lcom/android/server/pm/ParallelPackageParser$ParseResult;-><init>()V

    .line 108
    .local v3, "pr":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parallel parsePackage ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 110
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2}, Landroid/content/pm/PackageParser;-><init>()V

    .line 111
    .local v2, "pp":Landroid/content/pm/PackageParser;
    iget-object v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 112
    iget-boolean v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mOnlyCore:Z

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageParser;->setOnlyCoreApps(Z)V

    .line 113
    iget-object v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageParser;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget-object v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mCacheDir:Ljava/io/File;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageParser;->setCacheDir(Ljava/io/File;)V

    .line 115
    iget-object v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParserCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageParser;->setCallback(Landroid/content/pm/PackageParser$Callback;)V

    .line 116
    iput-object p1, v3, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 117
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->pkg:Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 124
    .end local v2    # "pp":Landroid/content/pm/PackageParser;
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    iput-object v1, v3, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 120
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 121
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 120
    throw v4

    .line 125
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    goto :goto_1
.end method

.method protected parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageParser"    # Landroid/content/pm/PackageParser;
    .param p2, "scanFile"    # Ljava/io/File;
    .param p3, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/io/File;I)V
    .locals 3
    .param p1, "scanFile"    # Ljava/io/File;
    .param p2, "parseFlags"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2, p0, p1}, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;-><init>(BILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 133
    return-void
.end method

.method public take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .locals 4

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/InterruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Interrupted in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 92
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method
