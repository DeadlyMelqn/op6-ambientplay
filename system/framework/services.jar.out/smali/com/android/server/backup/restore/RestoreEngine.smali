.class public abstract Lcom/android/server/backup/restore/RestoreEngine;
.super Ljava/lang/Object;
.source "RestoreEngine.java"


# static fields
.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RestoreEngine"

.field public static final TARGET_FAILURE:I = -0x2

.field public static final TRANSPORT_FAILURE:I = -0x3


# instance fields
.field private mResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    return-void
.end method


# virtual methods
.method public getResult()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 65
    return-void
.end method

.method public setRunning(Z)V
    .locals 2
    .param p1, "stillRunning"    # Z

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 45
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public waitForResult()I
    .locals 3

    .prologue
    .line 48
    iget-object v2, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 49
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/restore/RestoreEngine;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/backup/restore/RestoreEngine;->getResult()I

    move-result v1

    return v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
