.class Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullTransportBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mBackupRunner:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field private final mBackupRunnerOpToken:I

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private volatile mIsDoingBackup:Z

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTransport:Lcom/android/internal/backup/IBackupTransport;

.field mUpdateSchedule:Z

.field mUserInitiated:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .prologue
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->unregisterTask()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Z)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p7, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p8, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p9, "userInitiated"    # Z

    .prologue
    .line 4637
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 4641
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 4618
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 4642
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 4643
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4644
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 4645
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 4646
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4647
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4648
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 4649
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v4

    iput v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 4650
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v4

    iput v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 4652
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap10(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4654
    const-string/jumbo v4, "PFTBT"

    const-string/jumbo v5, "Skipping full backup. A backup is already in progress."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    .line 4657
    return-void

    .line 4660
    :cond_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->registerTask()V

    .line 4662
    const/4 v4, 0x0

    array-length v5, p3

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v3, p3, v4

    .line 4664
    .local v3, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 4665
    const/16 v7, 0x40

    .line 4664
    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 4666
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4667
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4675
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4677
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4676
    const/16 v8, 0x9

    .line 4678
    const/4 v9, 0x3

    .line 4679
    const/4 v10, 0x0

    .line 4675
    invoke-static {v6, v8, v7, v9, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4680
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4681
    const/16 v7, -0x7d1

    .line 4680
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 4662
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4683
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->-wrap5(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4690
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4692
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4691
    const/16 v8, 0xa

    .line 4693
    const/4 v9, 0x3

    .line 4694
    const/4 v10, 0x0

    .line 4690
    invoke-static {v6, v8, v7, v9, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4695
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4696
    const/16 v7, -0x7d1

    .line 4695
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4715
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 4716
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requested package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found; ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4719
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4718
    const/16 v8, 0xc

    .line 4720
    const/4 v9, 0x3

    .line 4721
    const/4 v10, 0x0

    .line 4717
    invoke-static {v6, v8, v7, v9, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_1

    .line 4698
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_1
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-wrap7(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4705
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4707
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4706
    const/16 v8, 0xb

    .line 4708
    const/4 v9, 0x3

    .line 4709
    const/4 v10, 0x0

    .line 4705
    invoke-static {v6, v8, v7, v9, v10}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4710
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4711
    const/16 v7, -0x7d1

    .line 4710
    invoke-static {v6, v3, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_1

    .line 4714
    :cond_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4724
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private registerTask()V
    .locals 7

    .prologue
    .line 4727
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4728
    :try_start_0
    const-string/jumbo v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "backupmanager pftbt token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/BackupManagerService$Operation;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x0

    .line 4730
    const/4 v6, 0x2

    .line 4729
    invoke-direct {v3, v4, v5, p0, v6}, Lcom/android/server/backup/BackupManagerService$Operation;-><init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4732
    return-void

    .line 4727
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unregisterTask()V
    .locals 2

    .prologue
    .line 4735
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Lcom/android/server/backup/BackupManagerService;I)V

    .line 4736
    return-void
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5115
    if-eqz p1, :cond_1

    .line 5116
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    .line 5117
    aget-object v1, p1, v3

    .line 5118
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v3

    .line 5120
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5125
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    aget-object v2, p1, v5

    if-eqz v2, :cond_1

    .line 5126
    aget-object v1, p1, v5

    .line 5127
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v5

    .line 5129
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5135
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-void

    .line 5121
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 5122
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5130
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 5131
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public execute()V
    .locals 0

    .prologue
    .line 4741
    return-void
.end method

.method public handleCancel(Z)V
    .locals 5
    .param p1, "cancelAll"    # Z

    .prologue
    .line 4745
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4750
    if-nez p1, :cond_0

    .line 4751
    :try_start_0
    const-string/jumbo v1, "PFTBT"

    const-string/jumbo v3, "Expected cancelAll to be true."

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_1

    .line 4755
    const-string/jumbo v1, "PFTBT"

    const-string/jumbo v3, "Ignoring duplicate cancel call."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 4756
    return-void

    .line 4759
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    .line 4760
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_2

    .line 4761
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v3, p1}, Lcom/android/server/backup/BackupManagerService;->handleCancel(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4763
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v2

    .line 4770
    return-void

    .line 4764
    :catch_0
    move-exception v0

    .line 4765
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4745
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    .prologue
    .line 4775
    return-void
.end method

.method public run()V
    .locals 36

    .prologue
    .line 4781
    const/16 v21, 0x0

    .line 4784
    .local v21, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/16 v34, 0x0

    .line 4786
    .local v34, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v14, 0x0

    .line 4787
    .local v14, "backoff":J
    const/16 v16, 0x0

    .line 4790
    .local v16, "backupRunStatus":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 4793
    :cond_0
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "full backup requested but enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v7, v7, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4794
    const-string/jumbo v7, " provisioned="

    .line 4793
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4794
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v7, v7, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 4793
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4794
    const-string/jumbo v7, "; ignoring"

    .line 4793
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v5, :cond_4

    .line 4798
    const/16 v26, 0xd

    .line 4802
    .local v26, "monitoringEvent":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v6, 0x0

    .line 4803
    const/4 v7, 0x3

    const/4 v9, 0x0

    .line 4802
    move/from16 v0, v26

    invoke-static {v5, v0, v6, v7, v9}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4804
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 4805
    const/16 v16, -0x7d1

    .line 5079
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_1

    .line 5080
    const/16 v16, -0x7d3

    .line 5084
    :cond_1
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    .line 5088
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5089
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5091
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->unregisterTask()V

    .line 5093
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_2

    .line 5094
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 5097
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5098
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 5101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5105
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_3

    .line 5106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 5109
    :cond_3
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4806
    return-void

    .line 4800
    .end local v26    # "monitoringEvent":I
    :cond_4
    const/16 v26, 0xe

    .restart local v26    # "monitoringEvent":I
    goto/16 :goto_0

    .line 5097
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 4809
    .end local v26    # "monitoringEvent":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get6(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 4810
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v5, :cond_9

    .line 4811
    const-string/jumbo v5, "PFTBT"

    const-string/jumbo v6, "Transport not present; full data backup not performed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    const/16 v16, -0x3e8

    .line 4813
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4815
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4814
    const/16 v7, 0xf

    .line 4815
    const/4 v9, 0x1

    .line 4816
    const/4 v12, 0x0

    .line 4813
    invoke-static {v5, v7, v6, v9, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 5079
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_6

    .line 5080
    const/16 v16, -0x7d3

    .line 5084
    :cond_6
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    .line 5088
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5089
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5091
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->unregisterTask()V

    .line 5093
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_7

    .line 5094
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 5097
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5098
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v6

    .line 5101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5105
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_8

    .line 5106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 5109
    :cond_8
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4817
    return-void

    .line 5097
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 4821
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4822
    .local v4, "N":I
    const/16 v5, 0x2000

    new-array v0, v5, [B

    move-object/from16 v18, v0

    .line 4823
    .local v18, "buffer":[B
    const/16 v24, 0x0

    .end local v21    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v34    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v24, "i":I
    :goto_1
    move/from16 v0, v24

    if-ge v0, v4, :cond_a

    .line 4824
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 4825
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 4826
    .local v8, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 4828
    .local v29, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Initiating full-data transport backup of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4829
    const-string/jumbo v7, " token: "

    .line 4828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4829
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 4828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4831
    const/16 v5, 0xb18

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4833
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v34

    .line 4836
    .local v34, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUserInitiated:Z

    if-eqz v5, :cond_e

    const/16 v23, 0x1

    .line 4838
    .local v23, "flags":I
    :goto_2
    const-wide v10, 0x7fffffffffffffffL

    .line 4839
    .local v10, "quota":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    move-object/from16 v35, v0

    monitor-enter v35
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 4840
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_f

    :try_start_6
    monitor-exit v35
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 5079
    .end local v8    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v10    # "quota":J
    .end local v23    # "flags":I
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v34    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_b

    .line 5080
    const/16 v16, -0x7d3

    .line 5084
    :cond_b
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    .line 5088
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5089
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5091
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->unregisterTask()V

    .line 5093
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_c

    .line 5094
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 5097
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5098
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    monitor-exit v6

    .line 5101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5105
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_d

    .line 5106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 5109
    :cond_d
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5112
    .end local v4    # "N":I
    .end local v18    # "buffer":[B
    .end local v24    # "i":I
    :goto_3
    return-void

    .line 4836
    .restart local v4    # "N":I
    .restart local v8    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v18    # "buffer":[B
    .restart local v24    # "i":I
    .restart local v29    # "packageName":Ljava/lang/String;
    .restart local v34    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_e
    const/16 v23, 0x0

    .restart local v23    # "flags":I
    goto/16 :goto_2

    .line 4843
    .restart local v10    # "quota":J
    :cond_f
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 4844
    const/4 v6, 0x0

    aget-object v6, v34, v6

    .line 4843
    move/from16 v0, v23

    invoke-interface {v5, v8, v6, v0}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v13

    .line 4846
    .local v13, "backupPackageStatus":I
    if-nez v13, :cond_10

    .line 4847
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4848
    const/4 v7, 0x1

    .line 4847
    invoke-interface {v5, v6, v7}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v10

    .line 4850
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v21

    .line 4852
    .local v21, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    new-instance v5, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/4 v6, 0x1

    aget-object v7, v21, v6

    .line 4853
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    move-object/from16 v6, p0

    .line 4852
    invoke-direct/range {v5 .. v12}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;JI)V

    .line 4851
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 4855
    const/4 v5, 0x1

    aget-object v5, v21, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4856
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-object v5, v21, v6

    .line 4858
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v21    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :cond_10
    :try_start_9
    monitor-exit v35

    .line 4861
    if-nez v13, :cond_15

    .line 4865
    const/4 v5, 0x0

    aget-object v5, v34, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 4866
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v5, v34, v6

    .line 4870
    new-instance v5, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v7, "package-backup-bridge"

    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 4875
    new-instance v25, Ljava/io/FileInputStream;

    .line 4876
    const/4 v5, 0x0

    aget-object v5, v21, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 4875
    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4877
    .local v25, "in":Ljava/io/FileInputStream;
    new-instance v28, Ljava/io/FileOutputStream;

    .line 4878
    const/4 v5, 0x1

    aget-object v5, v34, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 4877
    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4879
    .local v28, "out":Ljava/io/FileOutputStream;
    const-wide/16 v32, 0x0

    .line 4880
    .local v32, "totalRead":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v30

    .line 4882
    .local v30, "preflightResult":J
    const-wide/16 v6, 0x0

    cmp-long v5, v30, v6

    if-gez v5, :cond_1c

    .line 4888
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4890
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4892
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 4893
    const-string/jumbo v9, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    .line 4892
    const/4 v12, 0x0

    move-wide/from16 v0, v30

    invoke-static {v7, v12, v9, v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap4(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v7

    .line 4889
    const/16 v9, 0x10

    .line 4891
    const/4 v12, 0x3

    .line 4888
    invoke-static {v5, v9, v6, v12, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4895
    move-wide/from16 v0, v30

    long-to-int v13, v0

    .line 4931
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v17

    .line 4933
    .local v17, "backupRunnerResult":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4934
    const/4 v5, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 4936
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v5, :cond_12

    .line 4937
    if-nez v17, :cond_24

    .line 4942
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result v22

    .line 4943
    .local v22, "finishResult":I
    if-nez v13, :cond_12

    .line 4944
    move/from16 v13, v22

    .end local v22    # "finishResult":I
    :cond_12
    :goto_5
    :try_start_b
    monitor-exit v6

    .line 4961
    if-nez v13, :cond_13

    .line 4963
    if-eqz v17, :cond_13

    .line 4966
    move/from16 v13, v17

    .line 4979
    :cond_13
    if-eqz v13, :cond_14

    .line 4980
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " backing up "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4986
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v14

    .line 4988
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transport suggested backoff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4995
    .end local v17    # "backupRunnerResult":I
    .end local v25    # "in":Ljava/io/FileInputStream;
    .end local v28    # "out":Ljava/io/FileOutputStream;
    .end local v30    # "preflightResult":J
    .end local v32    # "totalRead":J
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_16

    .line 4996
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v29

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 4999
    :cond_16
    const/16 v5, -0x3ea

    if-ne v13, v5, :cond_25

    .line 5000
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 5001
    const/16 v6, -0x3ea

    .line 5000
    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 5003
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transport rejected backup of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5004
    const-string/jumbo v7, ", skipping"

    .line 5003
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v29, v5, v6

    .line 5007
    const-string/jumbo v6, "transport rejected"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 5006
    const/16 v6, 0xb19

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5011
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v5, :cond_17

    .line 5012
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 5056
    :cond_17
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5057
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5058
    iget-object v5, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_18

    .line 5059
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unbinding agent in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unbinding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 5062
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 4823
    :cond_18
    :goto_7
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 4839
    .end local v13    # "backupPackageStatus":I
    :catchall_2
    move-exception v5

    :try_start_d
    monitor-exit v35

    throw v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 5066
    .end local v4    # "N":I
    .end local v8    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v10    # "quota":J
    .end local v18    # "buffer":[B
    .end local v23    # "flags":I
    .end local v24    # "i":I
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v34    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v20

    .line 5067
    .local v20, "e":Ljava/lang/Exception;
    const/16 v16, -0x3e8

    .line 5068
    :try_start_e
    const-string/jumbo v5, "PFTBT"

    const-string/jumbo v6, "Exception trying full transport backup"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5069
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 5071
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 5073
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 5074
    const-string/jumbo v9, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 5075
    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    .line 5073
    const/16 v35, 0x0

    move-object/from16 v0, v35

    invoke-static {v7, v0, v9, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 5070
    const/16 v9, 0x13

    .line 5072
    const/4 v12, 0x3

    .line 5069
    invoke-static {v5, v9, v6, v12, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 5079
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_19

    .line 5080
    const/16 v16, -0x7d3

    .line 5084
    :cond_19
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    .line 5088
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5089
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5091
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->unregisterTask()V

    .line 5093
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_1a

    .line 5094
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 5097
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5098
    :try_start_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    monitor-exit v6

    .line 5101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5105
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_1b

    .line 5106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 5109
    :cond_1b
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_3

    .line 4897
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v4    # "N":I
    .restart local v8    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v10    # "quota":J
    .restart local v13    # "backupPackageStatus":I
    .restart local v18    # "buffer":[B
    .restart local v23    # "flags":I
    .restart local v24    # "i":I
    .restart local v25    # "in":Ljava/io/FileInputStream;
    .restart local v28    # "out":Ljava/io/FileOutputStream;
    .restart local v29    # "packageName":Ljava/lang/String;
    .restart local v30    # "preflightResult":J
    .restart local v32    # "totalRead":J
    .restart local v34    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :cond_1c
    const/16 v27, 0x0

    .line 4899
    .local v27, "nRead":I
    :cond_1d
    :try_start_10
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v27

    .line 4903
    if-lez v27, :cond_1f

    .line 4904
    const/4 v5, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4905
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 4906
    :try_start_11
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v5, :cond_1e

    .line 4907
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move/from16 v0, v27

    invoke-interface {v5, v0}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-result v13

    :cond_1e
    :try_start_12
    monitor-exit v6

    .line 4910
    move/from16 v0, v27

    int-to-long v6, v0

    add-long v32, v32, v6

    .line 4911
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v5, :cond_1f

    const-wide/16 v6, 0x0

    cmp-long v5, v30, v6

    if-lez v5, :cond_1f

    .line 4912
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 4913
    new-instance v6, Landroid/app/backup/BackupProgress;

    move-wide/from16 v0, v30

    move-wide/from16 v2, v32

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 4912
    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap22(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    .line 4916
    :cond_1f
    if-lez v27, :cond_20

    .line 4917
    if-eqz v13, :cond_1d

    .line 4919
    :cond_20
    const/16 v5, -0x3ed

    if-ne v13, v5, :cond_11

    .line 4920
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package hit quota limit in-flight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4921
    const-string/jumbo v7, ": "

    .line 4920
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4921
    const-string/jumbo v7, " of "

    .line 4920
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4922
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4924
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4923
    const/16 v7, 0x12

    .line 4925
    const/4 v9, 0x1

    .line 4926
    const/4 v12, 0x0

    .line 4922
    invoke-static {v5, v7, v6, v9, v12}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 4927
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1, v10, v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto/16 :goto_4

    .line 5077
    .end local v4    # "N":I
    .end local v8    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v10    # "quota":J
    .end local v13    # "backupPackageStatus":I
    .end local v18    # "buffer":[B
    .end local v23    # "flags":I
    .end local v24    # "i":I
    .end local v25    # "in":Ljava/io/FileInputStream;
    .end local v27    # "nRead":I
    .end local v28    # "out":Ljava/io/FileOutputStream;
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v30    # "preflightResult":J
    .end local v32    # "totalRead":J
    .end local v34    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_3
    move-exception v5

    .line 5079
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v6, :cond_21

    .line 5080
    const/16 v16, -0x7d3

    .line 5084
    :cond_21
    const-string/jumbo v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Full backup completed with status: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    .line 5088
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5089
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5091
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->unregisterTask()V

    .line 5093
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v6, :cond_22

    .line 5094
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v6}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 5097
    :cond_22
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5098
    :try_start_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    monitor-exit v6

    .line 5101
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5105
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v6, :cond_23

    .line 5106
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6, v14, v15}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 5109
    :cond_23
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full data backup pass finished."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5077
    throw v5

    .line 4905
    .restart local v4    # "N":I
    .restart local v8    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v10    # "quota":J
    .restart local v13    # "backupPackageStatus":I
    .restart local v18    # "buffer":[B
    .restart local v23    # "flags":I
    .restart local v24    # "i":I
    .restart local v25    # "in":Ljava/io/FileInputStream;
    .restart local v27    # "nRead":I
    .restart local v28    # "out":Ljava/io/FileOutputStream;
    .restart local v29    # "packageName":Ljava/lang/String;
    .restart local v30    # "preflightResult":J
    .restart local v32    # "totalRead":J
    .restart local v34    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_4
    move-exception v5

    :try_start_14
    monitor-exit v6

    throw v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 4947
    .end local v27    # "nRead":I
    .restart local v17    # "backupRunnerResult":I
    :cond_24
    :try_start_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto/16 :goto_5

    .line 4933
    :catchall_5
    move-exception v5

    :try_start_16
    monitor-exit v6

    throw v5

    .line 5015
    .end local v17    # "backupRunnerResult":I
    .end local v25    # "in":Ljava/io/FileInputStream;
    .end local v28    # "out":Ljava/io/FileOutputStream;
    .end local v30    # "preflightResult":J
    .end local v32    # "totalRead":J
    :cond_25
    const/16 v5, -0x3ed

    if-ne v13, v5, :cond_26

    .line 5016
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 5017
    const/16 v6, -0x3ed

    .line 5016
    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 5019
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transport quota exceeded for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    const/16 v5, 0xb1d

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5023
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_6

    .line 5025
    :cond_26
    const/16 v5, -0x3eb

    if-ne v13, v5, :cond_27

    .line 5026
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 5027
    const/16 v6, -0x3eb

    .line 5026
    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 5028
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Application failure for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5029
    const/16 v5, 0xb07

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5030
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_6

    .line 5032
    :cond_27
    const/16 v5, -0x7d3

    if-ne v13, v5, :cond_28

    .line 5033
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 5034
    const/16 v6, -0x7d3

    .line 5033
    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 5035
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Backup cancelled. package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5036
    const-string/jumbo v7, ", cancelAll="

    .line 5035
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5036
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    .line 5035
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    const/16 v5, 0xb1e

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5038
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_6

    .line 5040
    :cond_28
    if-eqz v13, :cond_2c

    .line 5041
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 5042
    const/16 v6, -0x3e8

    .line 5041
    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 5043
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transport failed; aborting backup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5044
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0xb1a

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5046
    const/16 v16, -0x3e8

    .line 5047
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 5079
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_29

    .line 5080
    const/16 v16, -0x7d3

    .line 5084
    :cond_29
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5086
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/backup/BackupManagerService;->-wrap20(Landroid/app/backup/IBackupObserver;I)V

    .line 5088
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5089
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 5091
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->unregisterTask()V

    .line 5093
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_2a

    .line 5094
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    .line 5097
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v5, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5098
    :try_start_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    monitor-exit v6

    .line 5101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5105
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_2b

    .line 5106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 5109
    :cond_2b
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5048
    return-void

    .line 5097
    :catchall_6
    move-exception v5

    monitor-exit v6

    throw v5

    .line 5051
    :cond_2c
    :try_start_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 5052
    const/4 v6, 0x0

    .line 5051
    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/BackupManagerService;->-wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 5053
    const/16 v5, 0xb1b

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 5054
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto/16 :goto_6

    .line 5097
    .end local v8    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v10    # "quota":J
    .end local v13    # "backupPackageStatus":I
    .end local v23    # "flags":I
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v34    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catchall_7
    move-exception v5

    monitor-exit v6

    throw v5

    .end local v4    # "N":I
    .end local v18    # "buffer":[B
    .end local v24    # "i":I
    .restart local v20    # "e":Ljava/lang/Exception;
    :catchall_8
    move-exception v5

    monitor-exit v6

    throw v5

    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_9
    move-exception v5

    monitor-exit v6

    throw v5

    .line 5063
    .restart local v4    # "N":I
    .restart local v8    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v10    # "quota":J
    .restart local v13    # "backupPackageStatus":I
    .restart local v18    # "buffer":[B
    .restart local v23    # "flags":I
    .restart local v24    # "i":I
    .restart local v29    # "packageName":Ljava/lang/String;
    .restart local v34    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v19

    .local v19, "e":Landroid/os/RemoteException;
    goto/16 :goto_7
.end method
