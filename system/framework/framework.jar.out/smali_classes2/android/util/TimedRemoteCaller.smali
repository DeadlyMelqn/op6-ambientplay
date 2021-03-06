.class public abstract Landroid/util/TimedRemoteCaller;
.super Ljava/lang/Object;
.source "TimedRemoteCaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CALL_TIMEOUT_MILLIS:J = 0x1388L


# instance fields
.field private final mAwaitedCalls:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCallTimeoutMillis:J

.field private final mLock:Ljava/lang/Object;

.field private final mReceivedCalls:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSequenceCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "callTimeoutMillis"    # J

    .prologue
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    .line 91
    iput-wide p1, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    .line 92
    return-void
.end method


# virtual methods
.method protected final getResultTimed(I)Ljava/lang/Object;
    .locals 12
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 141
    .local v4, "startMillis":J
    :goto_0
    :try_start_0
    iget-object v8, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 143
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    .line 145
    :cond_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v4

    .line 146
    .local v0, "elapsedMillis":J
    iget-wide v10, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    sub-long v6, v10, v0

    .line 147
    .local v6, "waitMillis":J
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-gtz v3, :cond_1

    .line 148
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 149
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No response for sequence: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .end local v0    # "elapsedMillis":J
    .end local v6    # "waitMillis":J
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v8

    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 153
    :catch_0
    move-exception v2

    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 151
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .restart local v0    # "elapsedMillis":J
    .restart local v6    # "waitMillis":J
    :cond_1
    :try_start_5
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0
.end method

.method protected final onBeforeRemoteCall()I
    .locals 4

    .prologue
    .line 100
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :cond_0
    :try_start_0
    iget v0, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    .line 104
    .local v0, "sequenceId":I
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 108
    return v0

    .line 100
    .end local v0    # "sequenceId":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected final onRemoteMethodResult(Ljava/lang/Object;I)V
    .locals 3
    .param p2, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Landroid/util/TimedRemoteCaller;, "Landroid/util/TimedRemoteCaller<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 121
    :try_start_0
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 122
    .local v0, "containedSequenceId":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 124
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 128
    return-void

    .line 121
    .end local v0    # "containedSequenceId":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "containedSequenceId":Z
    goto :goto_0

    .line 119
    .end local v0    # "containedSequenceId":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
