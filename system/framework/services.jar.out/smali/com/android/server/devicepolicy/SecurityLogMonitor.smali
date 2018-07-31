.class Lcom/android/server/devicepolicy/SecurityLogMonitor;
.super Ljava/lang/Object;
.source "SecurityLogMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BROADCAST_RETRY_INTERVAL_MILLISECONDS:J

.field private static final BUFFER_ENTRIES_MAXIMUM_LEVEL:I = 0x2800

.field private static final BUFFER_ENTRIES_NOTIFICATION_LEVEL:I = 0x400

.field private static final DEBUG:Z = false

.field private static final OVERLAP_NANOS:J

.field private static final POLLING_INTERVAL_MILLISECONDS:J

.field private static final RATE_LIMIT_INTERVAL_MILLISECONDS:J

.field private static final TAG:Ljava/lang/String; = "SecurityLogMonitor"


# instance fields
.field private mAllowedToRetrieve:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastEventNanos:J

.field private final mLastEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private mMonitorThread:Ljava/lang/Thread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNextAllowedRetrievalTimeMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPendingLogs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MILLISECONDS:J

    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->BROADCAST_RETRY_INTERVAL_MILLISECONDS:J

    .line 78
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MILLISECONDS:J

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NANOS:J

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 90
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    .line 98
    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 105
    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 107
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 51
    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 52
    return-void
.end method

.method private getNextBatch(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    const-wide/16 v8, 0x0

    .line 229
    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_1

    .line 232
    invoke-static {p1}, Landroid/app/admin/SecurityLog;->readEvents(Ljava/util/Collection;)V

    .line 245
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 246
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    sget-object v1, Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;->$INST$0:Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;

    .line 249
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 255
    :cond_0
    return-void

    .line 236
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    iget-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 240
    .local v2, "startNanos":J
    :goto_2
    invoke-static {v2, v3, p1}, Landroid/app/admin/SecurityLog;->readEventsSince(JLjava/util/Collection;)V

    goto :goto_0

    .line 237
    .end local v2    # "startNanos":J
    :cond_2
    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    sget-wide v6, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NANOS:J

    sub-long/2addr v4, v6

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .restart local v2    # "startNanos":J
    goto :goto_2

    .line 245
    .end local v2    # "startNanos":J
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic lambda$-com_android_server_devicepolicy_SecurityLogMonitor_9444(Landroid/app/admin/SecurityLog$SecurityEvent;Landroid/app/admin/SecurityLog$SecurityEvent;)I
    .locals 4
    .param p0, "e1"    # Landroid/app/admin/SecurityLog$SecurityEvent;
    .param p1, "e2"    # Landroid/app/admin/SecurityLog$SecurityEvent;

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method private mergeBatchLocked(Ljava/util/ArrayList;)V
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "curPos":I
    const/4 v5, 0x0

    .line 296
    .local v5, "lastPos":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 297
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 298
    .local v0, "curEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    invoke-virtual {v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v2

    .line 299
    .local v2, "currentNanos":J
    iget-wide v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 328
    .end local v0    # "curEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    .end local v2    # "currentNanos":J
    :cond_0
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {p1, v1, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x2800

    if-le v8, v9, :cond_1

    .line 332
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 333
    iget-object v10, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit16 v10, v10, -0x1400

    .line 334
    iget-object v11, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 332
    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 335
    const-string/jumbo v8, "SecurityLogMonitor"

    const-string/jumbo v9, "Pending logs buffer full. Discarding old logs."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    return-void

    .line 303
    .restart local v0    # "curEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    .restart local v2    # "currentNanos":J
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 304
    .local v4, "lastEvent":Landroid/app/admin/SecurityLog$SecurityEvent;
    invoke-virtual {v4}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v6

    .line 305
    .local v6, "lastNanos":J
    cmp-long v8, v6, v2

    if-lez v8, :cond_3

    .line 308
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_3
    cmp-long v8, v6, v2

    if-gez v8, :cond_4

    .line 312
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 315
    :cond_4
    invoke-virtual {v4, v0}, Landroid/app/admin/SecurityLog$SecurityEvent;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 323
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 320
    :cond_5
    iget-object v8, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private notifyDeviceOwnerIfNeeded()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "allowRetrievalAndNotifyDO":Z
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V

    .line 384
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 385
    return-void

    .line 387
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 388
    .local v1, "logSize":I
    const/16 v2, 0x400

    if-lt v1, v2, :cond_1

    .line 390
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    if-nez v2, :cond_1

    .line 391
    const/4 v0, 0x1

    .line 395
    :cond_1
    if-lez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 397
    const/4 v0, 0x1

    .line 400
    :cond_2
    if-eqz v0, :cond_3

    .line 401
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 404
    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->BROADCAST_RETRY_INTERVAL_MILLISECONDS:J

    .line 403
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    :cond_3
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 409
    if-eqz v0, :cond_4

    .line 410
    const-string/jumbo v2, "SecurityLogMonitor"

    const-string/jumbo v3, "notify DO"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string/jumbo v3, "android.app.action.SECURITY_LOGS_AVAILABLE"

    .line 412
    const/4 v4, 0x0

    .line 411
    invoke-virtual {v2, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 414
    :cond_4
    return-void

    .line 406
    .end local v1    # "logSize":I
    :catchall_0
    move-exception v2

    .line 407
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 406
    throw v2
.end method

.method private saveLastEvents(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 262
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    return-void

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 272
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 273
    .local v0, "pos":I
    :goto_0
    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {v1}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->OVERLAP_NANOS:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 274
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 278
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 280
    return-void
.end method


# virtual methods
.method discardLogs()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 198
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 199
    const-string/jumbo v0, "SecurityLogMonitor"

    const-string/jumbo v1, "Discarded all logs."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method pause()V
    .locals 2

    .prologue
    .line 155
    const-string/jumbo v0, "SecurityLogMonitor"

    const-string/jumbo v1, "Paused."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 160
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 161
    return-void
.end method

.method resume()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 173
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    if-nez v1, :cond_0

    .line 174
    const-string/jumbo v1, "SecurityLogMonitor"

    const-string/jumbo v2, "Attempted to resume, but logging is not paused."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 175
    return-void

    .line 177
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 183
    const-string/jumbo v1, "SecurityLogMonitor"

    const-string/jumbo v2, "Resumed."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerIfNeeded()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    :goto_0
    return-void

    .line 179
    :catchall_0
    move-exception v1

    .line 180
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 179
    throw v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "SecurityLogMonitor"

    const-string/jumbo v2, "Thread interrupted."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method retrieveLogs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 209
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    if-eqz v1, :cond_0

    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 212
    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->RATE_LIMIT_INTERVAL_MILLISECONDS:J

    .line 211
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 213
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 214
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 215
    return-object v0

    .line 217
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :cond_0
    const/4 v1, 0x0

    .line 220
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 217
    return-object v1

    .line 219
    :catchall_0
    move-exception v1

    .line 220
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 219
    throw v1
.end method

.method public run()V
    .locals 8

    .prologue
    .line 342
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v2, "newLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 347
    :try_start_0
    sget-wide v4, Lcom/android/server/devicepolicy/SecurityLogMonitor;->POLLING_INTERVAL_MILLISECONDS:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 348
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->getNextBatch(Ljava/util/ArrayList;)V

    .line 350
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mergeBatchLocked(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :try_start_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 357
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->saveLastEvents(Ljava/util/ArrayList;)V

    .line 358
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 359
    invoke-direct {p0}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerIfNeeded()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "SecurityLogMonitor"

    const-string/jumbo v4, "Failed to read security log"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 353
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 354
    :try_start_3
    iget-object v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 353
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 362
    :catch_1
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "SecurityLogMonitor"

    const-string/jumbo v4, "Thread interrupted, exiting."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 371
    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 374
    iget-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLastEventNanos:J

    .line 377
    :cond_1
    const-string/jumbo v3, "SecurityLogMonitor"

    const-string/jumbo v4, "MonitorThread exit."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method

.method start()V
    .locals 2

    .prologue
    .line 110
    const-string/jumbo v0, "SecurityLogMonitor"

    const-string/jumbo v1, "Starting security logging."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 119
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    .line 120
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 125
    return-void

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    throw v0
.end method

.method stop()V
    .locals 6

    .prologue
    .line 128
    const-string/jumbo v1, "SecurityLogMonitor"

    const-string/jumbo v2, "Stopping security logging."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :goto_0
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPendingLogs:Ljava/util/ArrayList;

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z

    .line 141
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mNextAllowedRetrievalTimeMillis:J

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mMonitorThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 148
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v1, "SecurityLogMonitor"

    const-string/jumbo v2, "Interrupted while waiting for thread to stop"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 146
    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 145
    throw v1
.end method
