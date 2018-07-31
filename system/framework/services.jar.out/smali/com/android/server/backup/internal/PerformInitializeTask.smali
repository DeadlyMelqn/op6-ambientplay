.class public Lcom/android/server/backup/internal/PerformInitializeTask;
.super Ljava/lang/Object;
.source "PerformInitializeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field mObserver:Landroid/app/backup/IBackupObserver;

.field mQueue:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 0
    .param p1, "backupManagerService"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p2, "transportNames"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 44
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 46
    return-void
.end method

.method private notifyFinished(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    const/4 v2, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ignored":Landroid/os/RemoteException;
    iput-object v2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    goto :goto_0
.end method

.method private notifyResult(Ljava/lang/String;I)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    const/4 v2, 0x0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ignored":Landroid/os/RemoteException;
    iput-object v2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 70
    const/4 v10, 0x0

    .line 72
    .local v10, "result":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v16, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v15, v17, v16

    .line 74
    .local v15, "transportName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v14

    .line 76
    .local v14, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v14, :cond_0

    .line 77
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Requested init for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " but not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Initializing (wiping) backup transport storage: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0xb05

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 84
    .local v12, "startRealtime":J
    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v11

    .line 86
    .local v11, "status":I
    if-nez v11, :cond_1

    .line 87
    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v11

    .line 91
    :cond_1
    if-nez v11, :cond_2

    .line 92
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Device init successful"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v20, v20, v12

    move-wide/from16 v0, v20

    long-to-int v9, v0

    .line 94
    .local v9, "millis":I
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0xb0b

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    .line 96
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v21

    .line 97
    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v22

    .line 96
    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/backup/RefactoredBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 98
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    const/16 v20, 0xb09

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v19

    .line 102
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 122
    .end local v9    # "millis":I
    .end local v11    # "status":I
    .end local v12    # "startRealtime":J
    .end local v14    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v15    # "transportName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 123
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v16, "BackupManagerService"

    const-string/jumbo v17, "Unexpected error performing init"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    const/16 v10, -0x3e8

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 130
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 99
    .restart local v9    # "millis":I
    .restart local v11    # "status":I
    .restart local v12    # "startRealtime":J
    .restart local v14    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v15    # "transportName":Ljava/lang/String;
    :catchall_0
    move-exception v16

    :try_start_4
    monitor-exit v19

    throw v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    .end local v9    # "millis":I
    .end local v11    # "status":I
    .end local v12    # "startRealtime":J
    .end local v14    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v15    # "transportName":Ljava/lang/String;
    :catchall_1
    move-exception v16

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 125
    throw v16

    .line 106
    .restart local v11    # "status":I
    .restart local v12    # "startRealtime":J
    .restart local v14    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v15    # "transportName":Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Transport error in initializeDevice()"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string/jumbo v19, "(initialize)"

    const/16 v20, 0xb06

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 109
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v19

    .line 111
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V

    .line 112
    move v10, v11

    .line 115
    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v6

    .line 116
    .local v6, "delay":J
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Init failed on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " resched in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v19

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    add-long v20, v20, v6

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/backup/RefactoredBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v22

    .line 117
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-wide/from16 v2, v20

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 108
    .end local v6    # "delay":J
    :catchall_2
    move-exception v16

    monitor-exit v19

    throw v16
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 127
    .end local v11    # "status":I
    .end local v12    # "startRealtime":J
    .end local v14    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v15    # "transportName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2
.end method
