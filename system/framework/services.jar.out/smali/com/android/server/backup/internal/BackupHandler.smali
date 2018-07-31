.class public Lcom/android/server/backup/internal/BackupHandler;
.super Landroid/os/Handler;
.source "BackupHandler.java"


# static fields
.field public static final MSG_BACKUP_OPERATION_TIMEOUT:I = 0x11

.field public static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field public static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field public static final MSG_OP_COMPLETE:I = 0x15

.field public static final MSG_REQUEST_BACKUP:I = 0xf

.field public static final MSG_RESTORE_OPERATION_TIMEOUT:I = 0x12

.field public static final MSG_RESTORE_SESSION_TIMEOUT:I = 0x8

.field public static final MSG_RETRY_CLEAR:I = 0xc

.field public static final MSG_RETRY_INIT:I = 0xb

.field public static final MSG_RUN_ADB_BACKUP:I = 0x2

.field public static final MSG_RUN_ADB_RESTORE:I = 0xa

.field public static final MSG_RUN_BACKUP:I = 0x1

.field public static final MSG_RUN_CLEAR:I = 0x4

.field public static final MSG_RUN_FULL_TRANSPORT_BACKUP:I = 0xe

.field public static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field public static final MSG_RUN_RESTORE:I = 0x3

.field public static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field public static final MSG_WIDGET_BROADCAST:I = 0xd


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "backupManagerService"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 88
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 90
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 49
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 402
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 96
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lcom/android/server/backup/RefactoredBackupManagerService;->setLastBackupPass(J)V

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 100
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v4, :cond_1

    .line 101
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v11, "Backup requested but no transport available"

    invoke-static {v3, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->setBackupRunning(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v3

    monitor-exit v11

    throw v3

    .line 110
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v6, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getJournal()Lcom/android/server/backup/DataChangedJournal;

    move-result-object v7

    .line 112
    .local v7, "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 116
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "b$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/backup/internal/BackupRequest;

    .line 118
    .local v24, "b":Lcom/android/server/backup/internal/BackupRequest;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 112
    .end local v24    # "b":Lcom/android/server/backup/internal/BackupRequest;
    .end local v25    # "b$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v11

    throw v3

    .line 121
    .restart local v25    # "b$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "clearing pending backups"

    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v25    # "b$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v11

    .line 136
    const/16 v45, 0x1

    .line 137
    .local v45, "staged":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 140
    :try_start_3
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "dirName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/internal/PerformBackupTask;

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 143
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 144
    const/4 v12, 0x0

    .line 141
    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/internal/PerformBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Ljava/util/List;ZZ)V

    .line 145
    .local v2, "pbt":Lcom/android/server/backup/internal/PerformBackupTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v40

    .line 146
    .local v40, "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 159
    .end local v2    # "pbt":Lcom/android/server/backup/internal/PerformBackupTask;
    .end local v5    # "dirName":Ljava/lang/String;
    .end local v40    # "pbtMessage":Landroid/os/Message;
    :goto_2
    if-nez v45, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 162
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->setBackupRunning(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v11

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v28

    .line 150
    .local v28, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v11, "Transport became unavailable attempting backup or error initializing backup task"

    move-object/from16 v0, v28

    invoke-static {v3, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    const/16 v45, 0x0

    goto :goto_2

    .line 155
    .end local v28    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v11, "Backup requested but nothing pending"

    invoke-static {v3, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/16 v45, 0x0

    goto :goto_2

    .line 161
    :catchall_2
    move-exception v3

    monitor-exit v11

    throw v3

    .line 171
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v6    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .end local v7    # "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    .end local v45    # "staged":Z
    :pswitch_2
    :try_start_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/backup/BackupRestoreTask;

    .line 175
    .local v46, "task":Lcom/android/server/backup/BackupRestoreTask;
    invoke-interface/range {v46 .. v46}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 176
    .end local v46    # "task":Lcom/android/server/backup/BackupRestoreTask;
    :catch_1
    move-exception v27

    .line 177
    .local v27, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid backup task in flight, obj="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    .end local v27    # "e":Ljava/lang/ClassCastException;
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/util/Pair;

    .line 186
    .local v48, "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    move-object/from16 v0, v48

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/backup/BackupRestoreTask;

    move-object/from16 v0, v48

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v3, v12, v13}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 187
    .end local v48    # "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    :catch_2
    move-exception v27

    .line 188
    .restart local v27    # "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid completion in flight, obj="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    .end local v27    # "e":Ljava/lang/ClassCastException;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/server/backup/params/AdbBackupParams;

    .line 197
    .local v32, "params":Lcom/android/server/backup/params/AdbBackupParams;
    new-instance v8, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 198
    move-object/from16 v0, v32

    iget-object v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 199
    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/android/server/backup/params/AdbBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v32

    iget-boolean v12, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    move-object/from16 v0, v32

    iget-boolean v13, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    .line 200
    move-object/from16 v0, v32

    iget-boolean v14, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    move-object/from16 v0, v32

    iget-boolean v15, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->curPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 201
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    move/from16 v18, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    move/from16 v19, v0

    .line 202
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    move/from16 v20, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    move/from16 v21, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    .line 197
    invoke-direct/range {v8 .. v23}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 203
    .local v8, "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v11, "adb-backup"

    invoke-direct {v3, v8, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 208
    .end local v8    # "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    .end local v32    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 209
    .local v47, "task":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v11, "transport-backup"

    move-object/from16 v0, v47

    invoke-direct {v3, v0, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 214
    .end local v47    # "task":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/server/backup/params/RestoreParams;

    .line 215
    .local v39, "params":Lcom/android/server/backup/params/RestoreParams;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MSG_RUN_RESTORE observer="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v39

    iget-object v12, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v9, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 218
    move-object/from16 v0, v39

    iget-object v11, v0, Lcom/android/server/backup/params/RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 219
    move-object/from16 v0, v39

    iget-object v12, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v39

    iget-object v13, v0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v0, v39

    iget-wide v14, v0, Lcom/android/server/backup/params/RestoreParams;->token:J

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/backup/params/RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    .line 220
    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    move/from16 v17, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    move/from16 v18, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 217
    invoke-direct/range {v9 .. v19}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    .line 222
    .local v9, "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v11

    monitor-enter v11

    .line 223
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->isRestoreInProgress()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 225
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "Restore in progress, queueing."

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_3
    monitor-exit v11

    goto/16 :goto_0

    .line 232
    :cond_5
    :try_start_8
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "Starting restore."

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->setRestoreInProgress(Z)V

    .line 235
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v43

    .line 236
    .local v43, "restoreMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    .line 222
    .end local v43    # "restoreMsg":Landroid/os/Message;
    :catchall_3
    move-exception v3

    monitor-exit v11

    throw v3

    .line 245
    .end local v9    # "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .end local v39    # "params":Lcom/android/server/backup/params/RestoreParams;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/server/backup/params/AdbRestoreParams;

    .line 246
    .local v34, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    new-instance v10, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 247
    move-object/from16 v0, v34

    iget-object v12, v0, Lcom/android/server/backup/params/AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 248
    move-object/from16 v0, v34

    iget-object v13, v0, Lcom/android/server/backup/params/AdbRestoreParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v14, v0, Lcom/android/server/backup/params/AdbRestoreParams;->encryptPassword:Ljava/lang/String;

    .line 249
    move-object/from16 v0, v34

    iget-object v15, v0, Lcom/android/server/backup/params/AdbRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/backup/params/AdbRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    .line 246
    invoke-direct/range {v10 .. v16}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 250
    .local v10, "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v11, "adb-restore"

    invoke-direct {v3, v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 255
    .end local v10    # "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    .end local v34    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/backup/params/ClearParams;

    .line 256
    .local v36, "params":Lcom/android/server/backup/params/ClearParams;
    new-instance v3, Lcom/android/server/backup/internal/PerformClearTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v36

    iget-object v12, v0, Lcom/android/server/backup/params/ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    .line 257
    move-object/from16 v0, v36

    iget-object v13, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 256
    invoke-direct {v3, v11, v12, v13}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v3}, Lcom/android/server/backup/internal/PerformClearTask;->run()V

    goto/16 :goto_0

    .line 263
    .end local v36    # "params":Lcom/android/server/backup/params/ClearParams;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/backup/params/ClearRetryParams;

    .line 264
    .local v37, "params":Lcom/android/server/backup/params/ClearRetryParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v37

    iget-object v11, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v12, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    .end local v37    # "params":Lcom/android/server/backup/params/ClearRetryParams;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 270
    :try_start_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move v11, v3

    :goto_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v11, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v3

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 273
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/backup/RefactoredBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v11

    .line 271
    const/4 v13, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v3, v13, v0, v1, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    monitor-exit v12

    goto/16 :goto_0

    .line 270
    :cond_6
    const/4 v3, 0x0

    move v11, v3

    goto :goto_4

    .line 269
    :catchall_4
    move-exception v3

    monitor-exit v12

    throw v3

    .line 280
    :pswitch_b
    const/16 v44, 0x0

    .line 281
    .local v44, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/server/backup/params/RestoreGetSetsParams;

    .line 283
    .local v38, "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    :try_start_a
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v44

    .line 285
    .local v44, "sets":[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, v38

    iget-object v11, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 286
    :try_start_b
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-object/from16 v0, v44

    iput-object v0, v3, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    monitor-exit v11

    .line 288
    if-nez v44, :cond_7

    .line 289
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v11, 0xb0f

    invoke-static {v11, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 294
    :cond_7
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_8

    .line 296
    :try_start_d
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 305
    :cond_8
    :goto_5
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 306
    const/16 v3, 0x8

    const-wide/32 v12, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 285
    :catchall_5
    move-exception v3

    :try_start_e
    monitor-exit v11

    throw v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 291
    .end local v44    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_3
    move-exception v28

    .line 292
    .restart local v28    # "e":Ljava/lang/Exception;
    :try_start_f
    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error from transport getting set list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 294
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_9

    .line 296
    :try_start_10
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 305
    :cond_9
    :goto_6
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 306
    const/16 v3, 0x8

    const-wide/32 v12, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 299
    .end local v28    # "e":Ljava/lang/Exception;
    .restart local v44    # "sets":[Landroid/app/backup/RestoreSet;
    :catch_4
    move-exception v28

    .line 300
    .restart local v28    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Restore observer threw: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 297
    .end local v28    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v42

    .line 298
    .local v42, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v11, "Unable to report listing to observer"

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 299
    .end local v42    # "re":Landroid/os/RemoteException;
    .end local v44    # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v28    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v28

    .line 300
    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Restore observer threw: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 297
    :catch_7
    move-exception v42

    .line 298
    .restart local v42    # "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v11, "Unable to report listing to observer"

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 293
    .end local v28    # "e":Ljava/lang/Exception;
    .end local v42    # "re":Landroid/os/RemoteException;
    :catchall_6
    move-exception v3

    .line 294
    move-object/from16 v0, v38

    iget-object v11, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v11, :cond_a

    .line 296
    :try_start_11
    move-object/from16 v0, v38

    iget-object v11, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v11, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 305
    :cond_a
    :goto_7
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 306
    const/16 v11, 0x8

    const-wide/32 v12, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 308
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    throw v3

    .line 299
    :catch_8
    move-exception v28

    .line 300
    .restart local v28    # "e":Ljava/lang/Exception;
    const-string/jumbo v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Restore observer threw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 297
    .end local v28    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v42

    .line 298
    .restart local v42    # "re":Landroid/os/RemoteException;
    const-string/jumbo v11, "BackupManagerService"

    const-string/jumbo v12, "Unable to report listing to observer"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 315
    .end local v38    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .end local v42    # "re":Landroid/os/RemoteException;
    :pswitch_c
    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Timeout message received for token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->handleCancel(IZ)V

    goto/16 :goto_0

    .line 321
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    monitor-enter v11

    .line 322
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 327
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "Restore session timed out; aborting"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/restore/ActiveRestoreSession;->markTimedOut()V

    .line 329
    new-instance v3, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v14}, Lcom/android/server/backup/RefactoredBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v14

    .line 329
    invoke-direct {v3, v12, v13, v14}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :cond_b
    monitor-exit v11

    goto/16 :goto_0

    .line 321
    :catchall_7
    move-exception v3

    monitor-exit v11

    throw v3

    .line 338
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v11

    monitor-enter v11

    .line 339
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v3

    .line 340
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 339
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/backup/params/AdbParams;

    .line 341
    .local v33, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v33, :cond_d

    .line 342
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v3

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->delete(I)V

    .line 351
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    if-eqz v3, :cond_c

    .line 353
    :try_start_14
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :cond_c
    :goto_8
    monitor-exit v11

    goto/16 :goto_0

    .line 359
    :cond_d
    :try_start_15
    const-string/jumbo v3, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "couldn\'t find params for token "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    goto :goto_8

    .line 338
    .end local v33    # "params":Lcom/android/server/backup/params/AdbParams;
    :catchall_8
    move-exception v3

    monitor-exit v11

    throw v3

    .line 366
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/content/Intent;

    .line 367
    .local v29, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v11, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 372
    .end local v29    # "intent":Landroid/content/Intent;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/server/backup/params/BackupParams;

    .line 376
    .local v35, "params":Lcom/android/server/backup/params/BackupParams;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v15, "kvQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "packageName$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 378
    .local v30, "packageName":Ljava/lang/String;
    new-instance v3, Lcom/android/server/backup/internal/BackupRequest;

    move-object/from16 v0, v30

    invoke-direct {v3, v0}, Lcom/android/server/backup/internal/BackupRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 380
    .end local v30    # "packageName":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/android/server/backup/RefactoredBackupManagerService;->setBackupRunning(Z)V

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 383
    new-instance v2, Lcom/android/server/backup/internal/PerformBackupTask;

    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 385
    move-object/from16 v0, v35

    iget-object v13, v0, Lcom/android/server/backup/params/BackupParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v35

    iget-object v14, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    .line 386
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 387
    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    move/from16 v21, v0

    .line 386
    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object v11, v2

    .line 383
    invoke-direct/range {v11 .. v21}, Lcom/android/server/backup/internal/PerformBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Ljava/util/List;ZZ)V

    .line 388
    .restart local v2    # "pbt":Lcom/android/server/backup/internal/PerformBackupTask;
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v40

    .line 389
    .restart local v40    # "pbtMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 394
    .end local v2    # "pbt":Lcom/android/server/backup/internal/PerformBackupTask;
    .end local v15    # "kvQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .end local v31    # "packageName$iterator":Ljava/util/Iterator;
    .end local v35    # "params":Lcom/android/server/backup/params/BackupParams;
    .end local v40    # "pbtMessage":Landroid/os/Message;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    .line 398
    .local v41, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    .end local v41    # "pkgName":Ljava/lang/String;
    .restart local v33    # "params":Lcom/android/server/backup/params/AdbParams;
    :catch_a
    move-exception v26

    .local v26, "e":Landroid/os/RemoteException;
    goto/16 :goto_8

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_f
        :pswitch_5
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
