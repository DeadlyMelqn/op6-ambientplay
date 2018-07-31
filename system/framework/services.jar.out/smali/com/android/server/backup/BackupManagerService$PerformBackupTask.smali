.class Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformBackupTask"
.end annotation


# static fields
.field private static final synthetic -com-android-server-backup-BackupManagerService$BackupStateSwitchesValues:[I = null

.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$backup$BackupManagerService$BackupState:[I

.field mAgentBinder:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field mBackupDataName:Ljava/io/File;

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

.field private volatile mEphemeralOpToken:I

.field mFinished:Z

.field private final mFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

.field mJournal:Ljava/io/File;

.field mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field mNewStateName:Ljava/io/File;

.field final mNonIncremental:Z

.field mObserver:Landroid/app/backup/IBackupObserver;

.field mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingFullBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSavedState:Landroid/os/ParcelFileDescriptor;

.field mSavedStateName:Ljava/io/File;

.field mStateDir:Ljava/io/File;

.field mStatus:I

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final mUserInitiated:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private static synthetic -getcom-android-server-backup-BackupManagerService$BackupStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com-android-server-backup-BackupManagerService$BackupStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com-android-server-backup-BackupManagerService$BackupStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$BackupState;->values()[Lcom/android/server/backup/BackupManagerService$BackupState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-com-android-server-backup-BackupManagerService$BackupStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Ljava/util/List;ZZ)V
    .locals 12
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p5, "journal"    # Ljava/io/File;
    .param p6, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p9, "userInitiated"    # Z
    .param p10, "nonIncremental"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;",
            "Ljava/io/File;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2697
    .local p4, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    .local p8, "pendingFullBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2665
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 2701
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 2702
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    .line 2703
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 2704
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    .line 2705
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 2706
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 2707
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 2708
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mUserInitiated:Z

    .line 2709
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNonIncremental:Z

    .line 2711
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    .line 2712
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentOpToken:I

    .line 2714
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    .line 2716
    iget-object v11, p1, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2717
    :try_start_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2719
    const-string/jumbo v1, "PerformBackupTask"

    const-string/jumbo v2, "Skipping backup since one is already in progress."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCancelAll:Z

    .line 2722
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 2723
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2724
    const-string/jumbo v1, "Skipped. Backup already in progress."

    invoke-virtual {p1, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v11

    .line 2740
    return-void

    .line 2726
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2727
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2729
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 2731
    .local v4, "fullBackups":[Ljava/lang/String;
    new-instance v1, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 2734
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-boolean v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mUserInitiated:Z

    .line 2731
    const/4 v3, 0x0

    .line 2732
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 2731
    invoke-direct/range {v1 .. v10}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Z)V

    .line 2730
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 2736
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->registerTask()V

    .line 2737
    const-string/jumbo v1, "STATE => INITIAL"

    invoke-virtual {p1, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2716
    .end local v4    # "fullBackups":[Ljava/lang/String;
    .end local v7    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # [B

    .prologue
    .line 3242
    :try_start_0
    const-string/jumbo v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 3243
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3249
    .local v0, "checksum":[B
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3250
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 3251
    aget-byte v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3244
    .end local v0    # "checksum":[B
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 3245
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v5, "PerformBackupTask"

    const-string/jumbo v6, "Unable to use SHA-1!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    const-string/jumbo v5, "00"

    return-object v5

    .line 3253
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "checksum":[B
    .restart local v2    # "i":I
    .restart local v3    # "md":Ljava/security/MessageDigest;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private registerTask()V
    .locals 7

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2747
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/BackupManagerService$Operation;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x0

    .line 2748
    const/4 v6, 0x2

    .line 2747
    invoke-direct {v3, v4, v5, p0, v6}, Lcom/android/server/backup/BackupManagerService$Operation;-><init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2750
    return-void

    .line 2746
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unregisterTask()V
    .locals 2

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentOpToken:I

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Lcom/android/server/backup/BackupManagerService;I)V

    .line 2757
    return-void
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3260
    const/16 v16, 0x0

    .line 3259
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v15

    .line 3262
    .local v15, "widgetState":[B
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_widget"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3263
    .local v14, "widgetFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v11

    .line 3272
    .local v11, "priorStateExists":Z
    if-nez v11, :cond_0

    if-nez v15, :cond_0

    .line 3274
    return-void

    .line 3281
    :cond_0
    const/4 v8, 0x0

    .line 3282
    .local v8, "newChecksum":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 3283
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v8

    .line 3284
    .local v8, "newChecksum":Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 3286
    const/16 v17, 0x0

    const/4 v2, 0x0

    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 3287
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 3288
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 3290
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .end local v6    # "in":Ljava/io/DataInputStream;
    move-result-object v10

    .line 3291
    .local v10, "priorChecksum":Ljava/lang/String;
    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object/from16 v16, v17

    :cond_3
    :goto_1
    if-eqz v16, :cond_9

    throw v16

    :catch_0
    move-exception v17

    goto :goto_0

    :catch_1
    move-exception v16

    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v16, v17

    goto :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v10    # "priorChecksum":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_2
    move-exception v16

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    :goto_2
    :try_start_5
    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v17

    move-object/from16 v19, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v19

    :goto_3
    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    move-object/from16 v18, v17

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    move-object/from16 v17, v18

    :cond_7
    :goto_5
    if-eqz v17, :cond_8

    throw v17

    :catch_3
    move-exception v18

    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v18, v17

    goto :goto_4

    :catch_4
    move-exception v17

    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_6

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v17, v18

    goto :goto_5

    :cond_8
    throw v16

    .line 3292
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "priorChecksum":Ljava/lang/String;
    :cond_9
    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 3294
    return-void

    .line 3299
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "in":Ljava/io/DataInputStream;
    .end local v8    # "newChecksum":Ljava/lang/String;
    .end local v10    # "priorChecksum":Ljava/lang/String;
    :cond_a
    new-instance v9, Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 3300
    .local v9, "out":Landroid/app/backup/BackupDataOutput;
    if-eqz v15, :cond_14

    .line 3301
    const/16 v17, 0x0

    const/4 v4, 0x0

    .local v4, "fout":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 3302
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    :try_start_8
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3303
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 3305
    .local v13, "stateOut":Ljava/io/DataOutputStream;
    :try_start_a
    invoke-virtual {v13, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 3306
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    if-eqz v13, :cond_b

    :try_start_b
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    :cond_b
    :goto_6
    if-eqz v5, :cond_c

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    :cond_c
    move-object/from16 v16, v17

    :cond_d
    :goto_7
    if-eqz v16, :cond_13

    throw v16

    :catch_5
    move-exception v17

    goto :goto_6

    :catch_6
    move-exception v16

    if-eqz v17, :cond_d

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v16, v17

    goto :goto_7

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "stateOut":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v16

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    :goto_8
    :try_start_d
    throw v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v17

    move-object/from16 v19, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v19

    :goto_9
    if-eqz v12, :cond_e

    :try_start_e
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    :cond_e
    move-object/from16 v18, v17

    :cond_f
    :goto_a
    if-eqz v4, :cond_10

    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    :cond_10
    move-object/from16 v17, v18

    :cond_11
    :goto_b
    if-eqz v17, :cond_12

    throw v17

    :catch_8
    move-exception v18

    if-eqz v17, :cond_f

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v18, v17

    goto :goto_a

    :catch_9
    move-exception v17

    if-eqz v18, :cond_11

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v17, v18

    goto :goto_b

    :cond_12
    throw v16

    .line 3308
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v13    # "stateOut":Ljava/io/DataOutputStream;
    :cond_13
    const-string/jumbo v16, "\uffed\uffedwidget"

    array-length v0, v15

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 3309
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 3315
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    :goto_c
    return-void

    .line 3312
    :cond_14
    const-string/jumbo v16, "\uffed\uffedwidget"

    const/16 v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 3313
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto :goto_c

    .line 3306
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v12    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v16

    goto :goto_9

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v16

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v13    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_4
    move-exception v16

    move-object v12, v13

    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    :catch_a
    move-exception v16

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v13    # "stateOut":Ljava/io/DataOutputStream;
    :catch_b
    move-exception v16

    move-object v12, v13

    .end local v13    # "stateOut":Ljava/io/DataOutputStream;
    .local v12, "stateOut":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 3291
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v12    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "newChecksum":Ljava/lang/String;
    :catchall_5
    move-exception v16

    goto/16 :goto_3

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v16

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catchall_7
    move-exception v16

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    :catch_c
    move-exception v16

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    :catch_d
    move-exception v16

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method beginBackup()V
    .locals 15

    .prologue
    const/16 v14, -0x3e8

    const/4 v11, 0x0

    .line 2789
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 2790
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2791
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "beginBackup: ["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2792
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "req$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2793
    .local v5, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2794
    iget-object v9, v5, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2796
    .end local v5    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_0
    const-string/jumbo v9, " ]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2800
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2801
    iput v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2804
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2805
    const-string/jumbo v9, "PerformBackupTask"

    const-string/jumbo v10, "Backup begun with an empty queue - nothing to do."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v10, "queue empty at begin"

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2807
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v9, v11}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    .line 2808
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v9}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2809
    return-void

    .line 2815
    :cond_1
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    iput-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 2819
    iget-boolean v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNonIncremental:Z

    .line 2825
    .local v7, "skipPm":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 2826
    const-string/jumbo v10, "@pm@"

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2830
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2831
    const/4 v7, 0x0

    .line 2836
    .end local v7    # "skipPm":Z
    :cond_2
    const-string/jumbo v9, "PerformBackupTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Beginning backup of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " targets"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string/jumbo v10, "@pm@"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2840
    .local v4, "pmState":Ljava/io/File;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v8

    .line 2841
    .local v8, "transportName":Ljava/lang/String;
    const/16 v9, 0xb05

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2844
    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v9, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_3

    .line 2845
    const-string/jumbo v9, "PerformBackupTask"

    const-string/jumbo v10, "Initializing (wiping) backup state and transport storage"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "initializing transport "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2847
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2848
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v9

    iput v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2850
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "transport.initializeDevice() == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2851
    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v9, :cond_8

    .line 2852
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v10, 0xb0b

    invoke-static {v10, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2859
    :cond_3
    :goto_2
    if-eqz v7, :cond_9

    .line 2860
    const-string/jumbo v9, "PerformBackupTask"

    const-string/jumbo v10, "Skipping backup of package metadata."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v9}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2881
    :cond_4
    :goto_3
    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    const/16 v10, -0x3e9

    if-ne v9, v10, :cond_5

    .line 2885
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb0a

    invoke-static {v10, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2895
    :cond_5
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "exiting prelim: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2896
    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v9, :cond_6

    .line 2899
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2901
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v9, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    .line 2902
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v9}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2905
    .end local v8    # "transportName":Ljava/lang/String;
    :cond_6
    :goto_4
    return-void

    .line 2825
    .end local v4    # "pmState":Ljava/io/File;
    .restart local v7    # "skipPm":Z
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 2854
    .end local v7    # "skipPm":Z
    .restart local v4    # "pmState":Ljava/io/File;
    .restart local v8    # "transportName":Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string/jumbo v9, "(initialize)"

    const/16 v10, 0xb06

    invoke-static {v10, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2855
    const-string/jumbo v9, "PerformBackupTask"

    const-string/jumbo v10, "Transport error in initializeDevice()"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2887
    .end local v8    # "transportName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2888
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v9, "PerformBackupTask"

    const-string/jumbo v10, "Error in backup thread"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2889
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in backup thread: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2890
    const/16 v9, -0x3e8

    iput v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2895
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "exiting prelim: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2896
    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v9, :cond_6

    .line 2899
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2901
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v9, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    .line 2902
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v9}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto :goto_4

    .line 2868
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v8    # "transportName":Ljava/lang/String;
    :cond_9
    :try_start_3
    iget v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v9, :cond_4

    .line 2869
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v3

    .line 2870
    .local v3, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    const-string/jumbo v9, "@pm@"

    .line 2871
    invoke-virtual {v3}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 2870
    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v9

    iput v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2872
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PMBA invoke: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2877
    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 2891
    .end local v3    # "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    .end local v8    # "transportName":Ljava/lang/String;
    :catchall_0
    move-exception v9

    .line 2895
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "exiting prelim: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2896
    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v10, :cond_a

    .line 2899
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2901
    iget-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v10, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    .line 2902
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v10}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2891
    :cond_a
    throw v9
.end method

.method clearAgentState()V
    .locals 5

    .prologue
    .line 3588
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3589
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3590
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3591
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3595
    :try_start_3
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 3596
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 3600
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    .line 3601
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbinding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3603
    :try_start_4
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3606
    :cond_3
    :goto_3
    return-void

    .line 3591
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 3604
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 3590
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .line 3589
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 3588
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method clearMetadata()V
    .locals 3

    .prologue
    .line 3141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string/jumbo v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3142
    .local v0, "pmState":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3143
    :cond_0
    return-void
.end method

.method errorCleanup()V
    .locals 1

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3582
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3583
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearAgentState()V

    .line 3584
    return-void
.end method

.method public execute()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    .prologue
    .line 2764
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2765
    :try_start_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->-getcom-android-server-backup-BackupManagerService$BackupStateSwitchesValues()[I

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v2

    aget v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit v1

    .line 2783
    return-void

    .line 2767
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->beginBackup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2764
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2771
    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeNextAgent()V

    goto :goto_0

    .line 2775
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    if-nez v0, :cond_0

    .line 2776
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->finalizeBackup()V

    goto :goto_0

    .line 2778
    :cond_0
    const-string/jumbo v0, "PerformBackupTask"

    const-string/jumbo v2, "Duplicate finish of K/V pass"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2765
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    .locals 4
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$BackupState;

    .prologue
    .line 3611
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "executeNextState => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3612
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3613
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3614
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3615
    return-void
.end method

.method public failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .locals 4
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3232
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3236
    :goto_0
    return-void

    .line 3233
    :catch_0
    move-exception v0

    .line 3234
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error conveying failure to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method finalizeBackup()V
    .locals 10

    .prologue
    const/16 v9, -0x3e8

    const/4 v8, 0x0

    .line 3043
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v5, "finishing"

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3047
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "req$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 3048
    .local v2, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v2, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 3055
    .end local v2    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 3056
    const-string/jumbo v4, "PerformBackupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to remove backup journal file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    :cond_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v4, :cond_2

    .line 3063
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v5, "success; recording token"

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3065
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 3066
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3078
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v4, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3079
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 3080
    iget v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    const/16 v6, -0x3e9

    if-ne v4, v6, :cond_3

    .line 3083
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "init required; rerunning"

    invoke-virtual {v4, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3085
    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->-get6(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {v4, v6}, Lcom/android/server/backup/TransportManager;->getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;

    move-result-object v1

    .line 3086
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 3087
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3098
    .end local v1    # "name":Ljava/lang/String;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearMetadata()V

    .line 3099
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->backupNow()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    monitor-exit v5

    .line 3103
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 3105
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->unregisterTask()V

    .line 3107
    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCancelAll:Z

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-nez v4, :cond_5

    .line 3108
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 3107
    if-eqz v4, :cond_5

    .line 3109
    const-string/jumbo v4, "PerformBackupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting full backups for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3112
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const-string/jumbo v6, "full-transport-requested"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 3133
    :goto_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    .line 3134
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "K/V backup pass finished."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3137
    return-void

    .line 3067
    :catch_0
    move-exception v0

    .line 3070
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PerformBackupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Transport threw reporting restore set: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v5, "transport threw returning token"

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3090
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string/jumbo v4, "PerformBackupTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t find name of transport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3091
    const-string/jumbo v7, " for init"

    .line 3090
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 3094
    .end local v1    # "name":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 3095
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v4, "PerformBackupTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to query transport name for init: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 3078
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3113
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCancelAll:Z

    if-eqz v4, :cond_7

    .line 3114
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v4, :cond_6

    .line 3115
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->-wrap0(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;)V

    .line 3117
    :cond_6
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v5, -0x7d3

    invoke-static {v4, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    goto/16 :goto_3

    .line 3119
    :cond_7
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->-wrap0(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;)V

    .line 3120
    iget v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    sparse-switch v4, :sswitch_data_0

    .line 3129
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    goto/16 :goto_3

    .line 3122
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    goto/16 :goto_3

    .line 3125
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    goto/16 :goto_3

    .line 3120
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e9 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleCancel(Z)V
    .locals 8
    .param p1, "cancelAll"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    .prologue
    .line 3523
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mEphemeralOpToken:I

    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Lcom/android/server/backup/BackupManagerService;I)V

    .line 3524
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3525
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 3530
    return-void

    .line 3532
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCancelAll:Z

    .line 3533
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1

    .line 3534
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3536
    .local v0, "logPackageName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cancel backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    const/16 v1, 0xb07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3538
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancel of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", cancelAll="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3539
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 3541
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 3542
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v5, "android.app.backup.extra.LOG_CANCEL_ALL"

    .line 3543
    iget-boolean v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCancelAll:Z

    .line 3542
    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap1(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 3540
    const/16 v5, 0x15

    .line 3541
    const/4 v6, 0x2

    .line 3539
    invoke-static {v1, v5, v3, v6, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 3544
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->errorCleanup()V

    .line 3545
    if-nez p1, :cond_3

    .line 3551
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3550
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 3552
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v2

    .line 3557
    return-void

    .line 3535
    .end local v0    # "logPackageName":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v0, "no_package_yet"

    .restart local v0    # "logPackageName":Ljava/lang/String;
    goto :goto_0

    .line 3551
    :cond_2
    sget-object v1, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_1

    .line 3554
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->finalizeBackup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3524
    .end local v0    # "logPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 3149
    const-string/jumbo v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invokeAgentForBackup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3152
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string/jumbo v1, "blank_state"

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3153
    .local v8, "blankStateName":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    .line 3154
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    .line 3155
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    .line 3158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 3159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 3160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 3162
    const/4 v9, 0x0

    .line 3163
    .local v9, "callingAgent":Z
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mEphemeralOpToken:I

    .line 3168
    :try_start_0
    const-string/jumbo v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3171
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 3172
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3179
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNonIncremental:Z

    if-eqz v0, :cond_3

    move-object v0, v8

    .line 3180
    :goto_0
    const/high16 v1, 0x18000000

    .line 3178
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 3183
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    .line 3184
    const/high16 v1, 0x3c000000    # 0.0078125f

    .line 3183
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 3188
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3189
    const-string/jumbo v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELinux restorecon failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    .line 3193
    const/high16 v1, 0x3c000000    # 0.0078125f

    .line 3192
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 3197
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v12

    .line 3198
    .local v12, "quota":J
    const/4 v9, 0x1

    .line 3201
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "setting timeout"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3202
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mEphemeralOpToken:I

    const-wide/16 v2, 0x7530

    .line 3203
    const/4 v5, 0x0

    move-object v4, p0

    .line 3202
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 3204
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "calling agent doBackup()"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3206
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mEphemeralOpToken:I

    .line 3207
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v0, p2

    move-wide v4, v12

    .line 3206
    invoke-interface/range {v0 .. v7}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3217
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNonIncremental:Z

    if-eqz v0, :cond_2

    .line 3218
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 3226
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "invoke success"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3227
    const/4 v0, 0x0

    return v0

    .line 3179
    .end local v12    # "quota":J
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 3208
    :catch_0
    move-exception v10

    .line 3209
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error invoking for backup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3211
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3212
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3211
    const/16 v1, 0xb07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3213
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->errorCleanup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3214
    if-eqz v9, :cond_5

    const/16 v0, -0x3eb

    .line 3217
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNonIncremental:Z

    if-eqz v1, :cond_4

    .line 3218
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 3214
    :cond_4
    return v0

    .line 3215
    :cond_5
    const/16 v0, -0x3e8

    goto :goto_1

    .line 3216
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 3217
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNonIncremental:Z

    if-eqz v1, :cond_6

    .line 3218
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 3216
    :cond_6
    throw v0
.end method

.method invokeNextAgent()V
    .locals 13

    .prologue
    const/16 v12, -0x7d2

    const/16 v11, -0x3ec

    const/4 v10, 0x0

    const/16 v9, -0x3eb

    const/4 v6, 0x0

    .line 2910
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2911
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invoke q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2915
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2917
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2918
    return-void

    .line 2922
    :cond_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2923
    .local v4, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2925
    const-string/jumbo v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "starting key/value backup of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "launch agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2934
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    .line 2935
    const/16 v8, 0x40

    .line 2934
    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2936
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2940
    const-string/jumbo v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2941
    const-string/jumbo v8, " no longer supports backup; skipping"

    .line 2940
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "skipping - not eligible, completion is noop"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2945
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2946
    const/16 v8, -0x7d1

    .line 2945
    invoke-static {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 2947
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3004
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3008
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_4

    .line 3009
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3010
    .local v3, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 3014
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v9, :cond_2

    .line 3017
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 3018
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3019
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3020
    :cond_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3034
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2948
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_1
    return-void

    .line 3022
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_2
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_3

    .line 3025
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3026
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_0

    .line 3030
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 3031
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_0

    .line 3037
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_4
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_1

    .line 2951
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-wrap5(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2955
    const-string/jumbo v5, "PerformBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2956
    const-string/jumbo v8, " requests full-data rather than key/value; skipping"

    .line 2955
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "skipping - fullBackupOnly, completion is noop"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2960
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2961
    const/16 v8, -0x7d1

    .line 2960
    invoke-static {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 2962
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3004
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3008
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_9

    .line 3009
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3010
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 3014
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v9, :cond_7

    .line 3017
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 3018
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3019
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3020
    :cond_6
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3034
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2963
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_3
    return-void

    .line 3022
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_7
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_8

    .line 3025
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3026
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_2

    .line 3030
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 3031
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_2

    .line 3037
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_9
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_3

    .line 2966
    :cond_a
    :try_start_2
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2970
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "skipping - stopped"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2971
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2972
    const/16 v8, -0x7d1

    .line 2971
    invoke-static {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 2973
    sget-object v5, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3004
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3008
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_e

    .line 3009
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3010
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 3014
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v9, :cond_c

    .line 3017
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 3018
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3019
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3020
    :cond_b
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3034
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2974
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_5
    return-void

    .line 3022
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_c
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_d

    .line 3025
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3026
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_4

    .line 3030
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 3031
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_4

    .line 3037
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_e
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_5

    .line 2977
    :cond_f
    const/4 v0, 0x0

    .line 2979
    .local v0, "agent":Landroid/app/IBackupAgent;
    :try_start_3
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    new-instance v7, Landroid/os/WorkSource;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v7, v8}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2980
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2981
    const/4 v8, 0x0

    .line 2980
    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 2982
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "agent bound; a? = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_11

    const/4 v5, 0x1

    :goto_6
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2983
    if-eqz v0, :cond_12

    .line 2984
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 2985
    iget-object v5, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {p0, v5, v0, v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v5

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3004
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_7
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3008
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_16

    .line 3009
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3010
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 3014
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v9, :cond_14

    .line 3017
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 3018
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3019
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3020
    :cond_10
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3034
    :goto_8
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 3040
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_9
    return-void

    .restart local v0    # "agent":Landroid/app/IBackupAgent;
    :cond_11
    move v5, v6

    .line 2982
    goto :goto_6

    .line 2991
    :cond_12
    const/16 v5, -0x3eb

    :try_start_4
    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 2993
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :catch_0
    move-exception v2

    .line 2995
    .local v2, "ex":Ljava/lang/SecurityException;
    :try_start_5
    const-string/jumbo v5, "PerformBackupTask"

    const-string/jumbo v7, "error in bind/backup"

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2996
    const/16 v5, -0x3eb

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 2997
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "agent SE"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 2999
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 3000
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string/jumbo v5, "PerformBackupTask"

    const-string/jumbo v7, "Package does not exist; skipping"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "no such package"

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3002
    const/16 v5, -0x3ec

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3004
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3008
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v5, :cond_19

    .line 3009
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3010
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 3014
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v9, :cond_17

    .line 3017
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 3018
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3019
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3020
    :cond_13
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3034
    :goto_a
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto :goto_9

    .line 3022
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_15

    .line 3025
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3026
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_8

    .line 3030
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 3031
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_8

    .line 3037
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_16
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3022
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_17
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v5, v11, :cond_18

    .line 3025
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3026
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_a

    .line 3030
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 3031
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_a

    .line 3037
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_19
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "expecting completion/timeout callback"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 3003
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    .line 3004
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v10}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3008
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_1d

    .line 3009
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3010
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v10, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 3014
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v7, v9, :cond_1b

    .line 3017
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 3018
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3019
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3020
    :cond_1a
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3034
    :goto_b
    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 3003
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_c
    throw v5

    .line 3022
    .restart local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_1b
    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    if-ne v7, v11, :cond_1c

    .line 3025
    iput v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3026
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v7, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_b

    .line 3030
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 3031
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_b

    .line 3037
    .end local v3    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_1d
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "expecting completion/timeout callback"

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public operationComplete(J)V
    .locals 30
    .param p1, "unusedResult"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    .prologue
    .line 3320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mEphemeralOpToken:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Lcom/android/server/backup/BackupManagerService;I)V

    .line 3321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 3323
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mFinished:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 3324
    const-string/jumbo v24, "PerformBackupTask"

    const-string/jumbo v26, "operationComplete received after task finished."

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v25

    .line 3325
    return-void

    .line 3328
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    .line 3333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 3334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3338
    .local v17, "pkg":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "late opComplete; curPkg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v25

    .line 3339
    return-void

    .line 3334
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v17, "[none]"

    .restart local v17    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 3342
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3343
    .local v18, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 3344
    .local v12, "filepos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    .line 3348
    .local v10, "fd":Ljava/io/FileDescriptor;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    .line 3349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-nez v24, :cond_b

    .line 3351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    .line 3352
    const/high16 v26, 0x10000000

    .line 3351
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    .line 3353
    .local v19, "readFd":Landroid/os/ParcelFileDescriptor;
    new-instance v14, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3355
    .local v14, "in":Landroid/app/backup/BackupDataInput;
    :goto_1
    :try_start_4
    invoke-virtual {v14}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 3356
    invoke-virtual {v14}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 3357
    .local v15, "key":Ljava/lang/String;
    if-eqz v15, :cond_4

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const v26, 0xff00

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 3359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Illegal backup key: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 3360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "illegal key "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3361
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aput-object v18, v24, v26

    .line 3362
    const-string/jumbo v26, "bad key"

    const/16 v27, 0x1

    aput-object v26, v24, v27

    .line 3361
    const/16 v26, 0xb07

    move/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v24, v0

    .line 3365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v26, v0

    .line 3368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    .line 3369
    const-string/jumbo v28, "android.app.backup.extra.LOG_ILLEGAL_KEY"

    .line 3368
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2, v15}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    .line 3364
    const/16 v28, 0x5

    .line 3366
    const/16 v29, 0x3

    .line 3363
    move-object/from16 v0, v24

    move/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    move-object/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v24, v0

    const/16 v26, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 3372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    .line 3373
    const/16 v26, -0x3eb

    .line 3372
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3374
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->errorCleanup()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3381
    if-eqz v19, :cond_3

    .line 3382
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    monitor-exit v25

    .line 3376
    return-void

    .line 3378
    :cond_4
    :try_start_6
    invoke-virtual {v14}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 3380
    .end local v15    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v24

    .line 3381
    if-eqz v19, :cond_5

    .line 3382
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3380
    :cond_5
    throw v24
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3389
    .end local v14    # "in":Landroid/app/backup/BackupDataInput;
    .end local v19    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v7

    .line 3394
    .local v7, "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v24, "PerformBackupTask"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unable to save widget state for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3396
    :try_start_9
    invoke-static {v10, v12, v13}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3405
    .end local v7    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v24, v0

    const/16 v26, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 3406
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->clearAgentState()V

    .line 3407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    const-string/jumbo v26, "operation complete"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3409
    const/4 v6, 0x0

    .line 3410
    .local v6, "backupData":Landroid/os/ParcelFileDescriptor;
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3411
    const-wide/16 v22, 0x0

    .line 3413
    .local v22, "size":J
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 3414
    const-wide/16 v26, 0x0

    cmp-long v24, v22, v26

    if-lez v24, :cond_e

    .line 3415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 3416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    .line 3417
    const/high16 v26, 0x10000000

    .line 3416
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 3418
    .local v6, "backupData":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    const-string/jumbo v26, "sending data to transport"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3419
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mUserInitiated:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    const/4 v11, 0x1

    .line 3420
    .local v11, "flags":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v6, v11}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3428
    .end local v6    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "flags":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "data delivered: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    if-nez v24, :cond_d

    .line 3430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    const-string/jumbo v26, "finishing op on transport"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    .line 3432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "finished: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3447
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    if-nez v24, :cond_10

    .line 3451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 3452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mSavedStateName:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3454
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aput-object v18, v24, v26

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v24, v27

    const/16 v26, 0xb08

    move/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 3482
    :goto_5
    if-eqz v6, :cond_8

    :try_start_c
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 3488
    :cond_8
    :goto_6
    :try_start_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 3489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    const/16 v26, -0x3ea

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 3492
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_13

    sget-object v16, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3515
    .local v16, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    monitor-exit v25

    .line 3517
    return-void

    .line 3381
    .end local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v22    # "size":J
    .restart local v14    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v19    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_a
    if-eqz v19, :cond_b

    .line 3382
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3388
    .end local v14    # "in":Landroid/app/backup/BackupDataInput;
    .end local v19    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    .line 3321
    .end local v10    # "fd":Ljava/io/FileDescriptor;
    .end local v12    # "filepos":J
    .end local v18    # "pkgName":Ljava/lang/String;
    :catchall_1
    move-exception v24

    monitor-exit v25

    throw v24

    .line 3397
    .restart local v7    # "e":Ljava/io/IOException;
    .restart local v10    # "fd":Ljava/io/FileDescriptor;
    .restart local v12    # "filepos":J
    .restart local v18    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 3398
    .local v9, "ee":Landroid/system/ErrnoException;
    :try_start_f
    const-string/jumbo v24, "PerformBackupTask"

    const-string/jumbo v26, "Unable to roll back!"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_2

    .line 3419
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "ee":Landroid/system/ErrnoException;
    .restart local v6    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "size":J
    :cond_c
    const/4 v11, 0x0

    .restart local v11    # "flags":I
    goto/16 :goto_3

    .line 3433
    .end local v6    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "flags":I
    :cond_d
    :try_start_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    const/16 v26, -0x3ea

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 3434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    const-string/jumbo v26, "transport rejected package"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_4

    .line 3474
    :catch_2
    move-exception v8

    .line 3475
    .local v8, "e":Ljava/lang/Exception;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    .line 3476
    const/16 v26, -0x3e8

    .line 3475
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3477
    const-string/jumbo v24, "PerformBackupTask"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Transport error backing up "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3478
    const/16 v24, 0xb06

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3479
    const/16 v24, -0x3e8

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 3482
    if-eqz v6, :cond_8

    :try_start_12
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_6

    .line 3483
    :catch_3
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    .line 3439
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/Exception;
    .local v6, "backupData":Landroid/os/ParcelFileDescriptor;
    :cond_e
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v24, v0

    const-string/jumbo v26, "no data to send"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v24, v0

    .line 3442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v26, v0

    .line 3441
    const/16 v27, 0x7

    .line 3443
    const/16 v28, 0x3

    .line 3444
    const/16 v29, 0x0

    .line 3440
    move-object/from16 v0, v24

    move/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_4

    .line 3480
    .end local v6    # "backupData":Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v24

    .line 3482
    if-eqz v6, :cond_f

    :try_start_14
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 3480
    :cond_f
    :goto_8
    :try_start_15
    throw v24
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 3456
    :cond_10
    :try_start_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    const/16 v26, -0x3ea

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 3459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mBackupDataName:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 3460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mNewStateName:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 3461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    .line 3462
    const/16 v26, -0x3ea

    .line 3461
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3463
    const-string/jumbo v24, "Transport rejected"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3464
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    const/16 v26, -0x3ed

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    .line 3465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    .line 3466
    const/16 v26, -0x3ed

    .line 3465
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3467
    const/16 v24, 0xb0d

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto/16 :goto_5

    .line 3470
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v24, v0

    .line 3471
    const/16 v26, -0x3e8

    .line 3470
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 3472
    const/16 v24, 0xb06

    move/from16 v0, v24

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_5

    .line 3483
    :catch_4
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_6

    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_8

    .line 3492
    .end local v7    # "e":Ljava/io/IOException;
    :cond_13
    :try_start_17
    sget-object v16, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .restart local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_7

    .line 3493
    .end local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mStatus:I

    move/from16 v24, v0

    const/16 v26, -0x3ed

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 3498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    move-object/from16 v24, v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v24, :cond_15

    .line 3500
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 3501
    const/16 v27, 0x0

    .line 3500
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v20

    .line 3502
    .local v20, "quota":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    move-wide/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 3507
    .end local v20    # "quota":J
    :cond_15
    :goto_9
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_16

    sget-object v16, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .restart local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_7

    .line 3503
    .end local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :catch_6
    move-exception v8

    .line 3504
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v24, "PerformBackupTask"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unable to notify about quota exceeded: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3507
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_16
    sget-object v16, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .restart local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_7

    .line 3511
    .end local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->revertAndEndBackup()V

    .line 3512
    sget-object v16, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .restart local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_7
.end method

.method revertAndEndBackup()V
    .locals 8

    .prologue
    .line 3561
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "transport error; reverting"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3567
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 3572
    .local v0, "delay":J
    :goto_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;J)V

    .line 3574
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "request$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 3575
    .local v3, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v3, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    goto :goto_1

    .line 3568
    .end local v0    # "delay":J
    .end local v3    # "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    .end local v4    # "request$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 3569
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PerformBackupTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to contact transport for recommended backoff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    const-wide/16 v0, 0x0

    .restart local v0    # "delay":J
    goto :goto_0

    .line 3578
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "request$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
