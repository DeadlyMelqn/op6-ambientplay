.class public Lcom/android/server/content/SyncJobService;
.super Landroid/app/job/JobService;
.source "SyncJobService.java"


# static fields
.field public static final EXTRA_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private jobParamsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    .line 37
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 29
    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 56
    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "Messenger not initialized."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 60
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SyncManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public callJobFinished(IZLjava/lang/String;)V
    .locals 6
    .param p1, "jobId"    # I
    .param p2, "needsReschedule"    # Z
    .param p3, "why"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v2, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    .line 122
    .local v0, "params":Landroid/app/job/JobParameters;
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "callJobFinished()"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 123
    const-string/jumbo v4, " needsReschedule="

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 124
    const-string/jumbo v4, " "

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v4, v0}, Lcom/android/server/content/SyncLogger;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 125
    const-string/jumbo v4, " why="

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const/4 v4, 0x6

    aput-object p3, v3, v4

    .line 122
    invoke-virtual {v1, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v0, p2}, Lcom/android/server/content/SyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 128
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 133
    return-void

    .line 130
    :cond_0
    :try_start_1
    const-string/jumbo v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Job params not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    .end local v0    # "params":Landroid/app/job/JobParameters;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 45
    const-string/jumbo v1, "messenger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    .line 46
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 47
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 48
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    .line 51
    const/4 v1, 0x2

    return v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 9
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    iget-object v3, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v3}, Lcom/android/server/content/SyncLogger;->purgeOldLogs()V

    .line 71
    const-string/jumbo v3, "SyncManager"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 72
    .local v0, "isLoggable":Z
    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-virtual {v3, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 75
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 76
    .local v1, "m":Landroid/os/Message;
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->what:I

    .line 77
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v2

    .line 79
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    iget-object v3, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "onStartJob() jobid="

    aput-object v5, v4, v6

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const-string/jumbo v5, " op="

    aput-object v5, v4, v8

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 81
    if-nez v2, :cond_0

    .line 82
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got invalid job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v6

    .line 72
    .end local v1    # "m":Landroid/os/Message;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 85
    .restart local v1    # "m":Landroid/os/Message;
    .restart local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    if-eqz v0, :cond_1

    .line 86
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got start job message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    .line 90
    return v7
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 7
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    const-string/jumbo v1, "SyncManager"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string/jumbo v1, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStopJob called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 97
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "onStopJob() "

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncLogger;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 100
    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 103
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 105
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 107
    return v3

    .line 100
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 111
    .restart local v0    # "m":Landroid/os/Message;
    :cond_1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 113
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 115
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    .line 116
    return v3

    :cond_2
    move v1, v3

    .line 111
    goto :goto_0

    :cond_3
    move v2, v3

    .line 113
    goto :goto_1
.end method
