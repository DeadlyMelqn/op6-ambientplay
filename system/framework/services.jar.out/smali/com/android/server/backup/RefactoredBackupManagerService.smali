.class public Lcom/android/server/backup/RefactoredBackupManagerService;
.super Ljava/lang/Object;
.source "RefactoredBackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/RefactoredBackupManagerService$1;,
        Lcom/android/server/backup/RefactoredBackupManagerService$2;,
        Lcom/android/server/backup/RefactoredBackupManagerService$3;,
        Lcom/android/server/backup/RefactoredBackupManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x5

.field public static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field public static final BACKUP_MANIFEST_VERSION:I = 0x1

.field public static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field public static final BACKUP_METADATA_VERSION:I = 0x1

.field public static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field private static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field private static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field private static final COMPRESS_FULL_BACKUPS:Z = true

.field private static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field public static final DEBUG:Z = true

.field public static final DEBUG_BACKUP_TRACE:Z = true

.field public static final DEBUG_SCHEDULING:Z = true

.field private static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field public static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field private static final MIN_FULL_BACKUP_INTERVAL:J = 0x5265c00L

.field public static final MORE_DEBUG:Z = false

.field private static final OP_ACKNOWLEDGED:I = 0x1

.field public static final OP_PENDING:I = 0x0

.field private static final OP_TIMEOUT:I = -0x1

.field public static final OP_TYPE_BACKUP:I = 0x2

.field public static final OP_TYPE_BACKUP_WAIT:I = 0x0

.field public static final OP_TYPE_RESTORE_WAIT:I = 0x1

.field public static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field public static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field public static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final SCHEDULE_FILE_VERSION:I = 0x1

.field private static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field public static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field public static final TAG:Ljava/lang/String; = "BackupManagerService"

.field public static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field public static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field private static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field private static final TIMEOUT_INTERVAL:J = 0x2710L

.field public static final TIMEOUT_RESTORE_FINISHED_INTERVAL:J = 0x7530L

.field public static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field public static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field private mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAncestralToken:J

.field private mAutoRestore:Z

.field private mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

.field private mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field private final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

.field private volatile mBackupRunning:Z

.field private final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseStateDir:Ljava/io/File;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClearDataLock:Ljava/lang/Object;

.field private volatile mClearingData:Z

.field private mConnectedAgent:Landroid/app/IBackupAgent;

.field private volatile mConnecting:Z

.field private mContext:Landroid/content/Context;

.field private final mCurrentOpLock:Ljava/lang/Object;

.field private final mCurrentOperations:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCurrentOpLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentToken:J

.field private mDataDir:Ljava/io/File;

.field private mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field private mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFullBackupScheduleFile:Ljava/io/File;

.field private mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsRestoreInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingRestores"
    .end annotation
.end field

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private mJournalDir:Ljava/io/File;

.field private volatile mLastBackupPass:J

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingInits:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRestores:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingRestores"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProvisioned:Z

.field private mProvisionedObserver:Landroid/database/ContentObserver;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field private mRunBackupIntent:Landroid/app/PendingIntent;

.field private mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field private mRunInitIntent:Landroid/app/PendingIntent;

.field private mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation
.end field

.field private mStorageManager:Landroid/os/storage/IStorageManager;

.field private mTokenFile:Ljava/io/File;

.field private final mTokenGenerator:Ljava/util/Random;

.field private mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/io/File;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/io/File;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->backupSettingMigrated(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->readBackupEnableState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targets"    # Ljava/util/HashSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/RefactoredBackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap6(ZI)V
    .locals 0
    .param p0, "enable"    # Z
    .param p1, "userId"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeBackupEnableState(ZI)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/server/backup/Trampoline;

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 249
    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 260
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 266
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    .line 277
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 285
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 619
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 620
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 621
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 623
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 631
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 637
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 643
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    .line 644
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    .line 648
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 980
    new-instance v0, Lcom/android/server/backup/RefactoredBackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/RefactoredBackupManagerService$1;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1149
    new-instance v0, Lcom/android/server/backup/RefactoredBackupManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/backup/RefactoredBackupManagerService$2;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    .line 1148
    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

    .line 1183
    new-instance v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/backup/RefactoredBackupManagerService$3;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 694
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    .line 695
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 696
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 697
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 699
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 700
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 701
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 703
    invoke-virtual {p2}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 706
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "backup"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 707
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 708
    new-instance v0, Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/internal/BackupHandler;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 711
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 713
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "device_provisioned"

    const/4 v1, 0x0

    .line 712
    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    .line 715
    const-string/jumbo v0, "backup_auto_restore"

    const/4 v1, 0x1

    .line 714
    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAutoRestore:Z

    .line 717
    new-instance v0, Lcom/android/server/backup/internal/ProvisionedObserver;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/internal/ProvisionedObserver;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    .line 719
    const-string/jumbo v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 720
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 718
    invoke-virtual {v9, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 724
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "backup"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 725
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 726
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELinux restorecon failed on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "backup_stage"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mDataDir:Ljava/io/File;

    .line 733
    new-instance v0, Lcom/android/server/backup/BackupPasswordManager;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/backup/BackupPasswordManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 736
    new-instance v0, Lcom/android/server/backup/internal/RunBackupReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/internal/RunBackupReceiver;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 737
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 738
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.app.backup.intent.RUN"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 740
    const-string/jumbo v1, "android.permission.BACKUP"

    const/4 v4, 0x0

    .line 739
    invoke-virtual {p1, v0, v7, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 742
    new-instance v0, Lcom/android/server/backup/internal/RunInitializeReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/internal/RunInitializeReceiver;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 743
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 744
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.app.backup.intent.INIT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 746
    const-string/jumbo v1, "android.permission.BACKUP"

    const/4 v4, 0x0

    .line 745
    invoke-virtual {p1, v0, v7, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 748
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.app.backup.intent.RUN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v6, "backupIntent":Landroid/content/Intent;
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 750
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v6, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 752
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.app.backup.intent.INIT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v8, "initIntent":Landroid/content/Intent;
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 754
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 757
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v4, "pending"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 758
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 762
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v4, "fb-schedule"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 763
    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->initPackageTracking()V

    .line 768
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    .line 769
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 774
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v10

    .line 775
    .local v10, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v10}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v2

    .line 777
    .local v2, "transportWhitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 778
    const-string/jumbo v1, "backup_transport"

    .line 777
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 779
    .local v11, "transport":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    const/4 v11, 0x0

    .line 782
    .end local v11    # "transport":Ljava/lang/String;
    :cond_1
    move-object v3, v11

    .line 783
    .local v3, "currentTransport":Ljava/lang/String;
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting with transport "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v0, Lcom/android/server/backup/TransportManager;

    .line 786
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v1, p1

    .line 785
    invoke-direct/range {v0 .. v5}, Lcom/android/server/backup/TransportManager;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Lcom/android/server/backup/TransportManager$TransportBoundListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 787
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->registerAllTransports()V

    .line 791
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v1, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak;

    const/4 v4, 0x1

    invoke-direct {v1, v4, p0}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 794
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "*backup*"

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 795
    return-void

    .line 712
    .end local v2    # "transportWhitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v3    # "currentTransport":Ljava/lang/String;
    .end local v6    # "backupIntent":Landroid/content/Intent;
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "initIntent":Landroid/content/Intent;
    .end local v10    # "systemConfig":Lcom/android/server/SystemConfig;
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 714
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 768
    .restart local v6    # "backupIntent":Landroid/content/Intent;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "initIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private addPackageParticipantsLocked([Ljava/lang/String;)V
    .locals 4
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1306
    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v1

    .line 1307
    .local v1, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_0

    .line 1309
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 1310
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1314
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1316
    :cond_1
    return-void
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1324
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1325
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1326
    :cond_1
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1327
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1328
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 1329
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1330
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1332
    :cond_2
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1337
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 1338
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x10

    .line 1337
    invoke-virtual {v5, v7, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1339
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1342
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "uid":I
    :cond_3
    return-void
.end method

.method private allAgentPackages()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1386
    const/16 v4, 0x40

    .line 1387
    .local v4, "flags":I
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 1388
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1389
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "a":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1390
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 1392
    .local v6, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1393
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    .line 1394
    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 1396
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1389
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1395
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x4000000

    and-int/2addr v7, v8

    if-nez v7, :cond_0

    .line 1401
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1402
    const/16 v9, 0x400

    .line 1401
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1403
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1405
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 1406
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1409
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    return-object v5
.end method

.method private static appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 3244
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3251
    const/4 v0, 0x0

    return v0

    .line 3248
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 3244
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static backupSettingMigrated(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 2702
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "backup"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2703
    .local v0, "base":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "backup_enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2704
    .local v1, "enableFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2225
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 2226
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2227
    const-string/jumbo v3, " uid="

    .line 2226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    return-void

    .line 2231
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2233
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2236
    new-instance v0, Lcom/android/server/backup/internal/BackupRequest;

    invoke-direct {v0, p1}, Lcom/android/server/backup/internal/BackupRequest;-><init>(Ljava/lang/String;)V

    .line 2237
    .local v0, "req":Lcom/android/server/backup/internal/BackupRequest;
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2243
    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "req":Lcom/android/server/backup/internal/BackupRequest;
    :cond_1
    monitor-exit v2

    .line 2249
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 2250
    return-void

    .line 2231
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2257
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2256
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 2257
    const/4 v1, -0x1

    .line 2256
    if-ne v0, v1, :cond_0

    .line 2258
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 2258
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2264
    :cond_0
    const-string/jumbo v0, "@pm@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2265
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "@pm@"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0

    .line 2267
    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2268
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2267
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dequeueFullBackupLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1953
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1954
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1955
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1956
    .local v1, "e":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1957
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1954
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1960
    .end local v1    # "e":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_1
    return-void
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3309
    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 3310
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string/jumbo v3, "Defined backup agents:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3311
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 3312
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    const-string/jumbo v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3313
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3314
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 3315
    const-string/jumbo v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3316
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3318
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 36
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 3322
    :try_start_0
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Backup Manager is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    const-string/jumbo v26, "enabled"

    :goto_0
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 3323
    const-string/jumbo v27, " / "

    .line 3322
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 3323
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    const-string/jumbo v26, "not "

    .line 3322
    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 3323
    const-string/jumbo v27, "provisioned / "

    .line 3322
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 3324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArraySet;->size()I

    move-result v26

    if-nez v26, :cond_3

    const-string/jumbo v26, "not "

    .line 3322
    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 3324
    const-string/jumbo v27, "pending init"

    .line 3322
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3325
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Auto-restore is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAutoRestore:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    const-string/jumbo v26, "enabled"

    :goto_3
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupRunning:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    const-string/jumbo v26, "Backup currently running"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    :cond_0
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Last backup pass started: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mLastBackupPass:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 3328
    const-string/jumbo v27, " (now = "

    .line 3327
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 3328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 3327
    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 3328
    const/16 v27, 0x29

    .line 3327
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3329
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "  next scheduled: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled()J

    move-result-wide v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3331
    const-string/jumbo v26, "Transport whitelist:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "transport$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ComponentName;

    .line 3333
    .local v21, "transport":Landroid/content/ComponentName;
    const-string/jumbo v26, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3334
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 3321
    .end local v21    # "transport":Landroid/content/ComponentName;
    .end local v23    # "transport$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v26

    monitor-exit v28

    throw v26

    .line 3322
    :cond_1
    :try_start_1
    const-string/jumbo v26, "disabled"

    goto/16 :goto_0

    .line 3323
    :cond_2
    const-string/jumbo v26, ""

    goto/16 :goto_1

    .line 3324
    :cond_3
    const-string/jumbo v26, ""

    goto/16 :goto_2

    .line 3325
    :cond_4
    const-string/jumbo v26, "disabled"

    goto/16 :goto_3

    .line 3337
    .restart local v23    # "transport$iterator":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v26, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3338
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v24

    .line 3339
    .local v24, "transports":[Ljava/lang/String;
    if-eqz v24, :cond_8

    .line 3340
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v29

    const/16 v26, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v27, v26

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    aget-object v20, v29, v27

    .line 3341
    .local v20, "t":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    const-string/jumbo v26, "  * "

    :goto_6
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3344
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v22

    .line 3345
    .local v22, "transport":Lcom/android/internal/backup/IBackupTransport;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3346
    .local v7, "dir":Ljava/io/File;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "       destination: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3347
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "       intent: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3348
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v31

    const/16 v26, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    :goto_7
    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    aget-object v11, v31, v26

    .line 3350
    .local v11, "f":Ljava/io/File;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "       "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " state bytes"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 3349
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3348
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 3342
    .end local v7    # "dir":Ljava/io/File;
    .end local v11    # "f":Ljava/io/File;
    .end local v22    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_6
    :try_start_3
    const-string/jumbo v26, "    "

    goto/16 :goto_6

    .line 3352
    :catch_0
    move-exception v8

    .line 3353
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v26, "BackupManagerService"

    const-string/jumbo v31, "Error in transport"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3354
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "        Error: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3340
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7
    add-int/lit8 v26, v27, 0x1

    move/from16 v27, v26

    goto/16 :goto_5

    .line 3359
    .end local v20    # "t":Ljava/lang/String;
    :cond_8
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Pending init: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArraySet;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "s$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 3361
    .local v18, "s":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 3365
    .end local v18    # "s":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3366
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_a

    .line 3367
    const-string/jumbo v26, "Most recent backup trace:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 3369
    .restart local v18    # "s":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "   "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    .line 3365
    .end local v18    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v26

    :try_start_5
    monitor-exit v27

    throw v26

    :cond_a
    monitor-exit v27

    .line 3375
    const-string/jumbo v26, "Ancestral: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3376
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3377
    const-string/jumbo v26, "Current:   "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3378
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 3381
    .local v4, "N":I
    const-string/jumbo v26, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3382
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a
    if-ge v12, v4, :cond_c

    .line 3383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    .line 3384
    .local v25, "uid":I
    const-string/jumbo v26, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3385
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    .line 3387
    .local v13, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "app$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3388
    .local v5, "app":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 3382
    .end local v5    # "app":Ljava/lang/String;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 3392
    .end local v6    # "app$iterator":Ljava/util/Iterator;
    .end local v13    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "uid":I
    :cond_c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Ancestral packages: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    if-nez v26, :cond_d

    const-string/jumbo v26, "none"

    .line 3392
    :goto_c
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 3395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "pkg$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3396
    .local v14, "pkg":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 3393
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "pkg$iterator":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    goto :goto_c

    .line 3400
    :cond_e
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Ever backed up: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "pkg$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3402
    .restart local v14    # "pkg":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 3405
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_f
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Pending key/value backup: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "req$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/backup/internal/BackupRequest;

    .line 3407
    .local v16, "req":Lcom/android/server/backup/internal/BackupRequest;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 3410
    .end local v16    # "req":Lcom/android/server/backup/internal/BackupRequest;
    :cond_10
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Full backup queue:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 3412
    .local v9, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    const-string/jumbo v26, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3413
    iget-wide v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 3414
    const-string/jumbo v26, " : "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3415
    iget-object v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_10

    .end local v9    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_11
    monitor-exit v28

    .line 3418
    return-void
.end method

.method private fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z
    .locals 9
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    const/4 v8, 0x0

    .line 1996
    if-nez p1, :cond_0

    .line 1997
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Transport not present; full data backup not performed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    return v8

    .line 2004
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2005
    .local v2, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "@pm@"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2006
    .local v1, "pmState":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 2008
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup requested but dataset not yet initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    return v8

    .line 2012
    .end local v1    # "pmState":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2013
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get transport name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    return v8

    .line 2017
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pmState":Ljava/io/File;
    .restart local v2    # "stateDir":Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method static getInstance()Lcom/android/server/backup/Trampoline;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/android/server/backup/RefactoredBackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method private getMessageIdForOperationType(I)I
    .locals 3
    .param p1, "operationType"    # I

    .prologue
    .line 1751
    packed-switch p1, :pswitch_data_0

    .line 1757
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMessageIdForOperationType called on invalid operation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const/4 v0, -0x1

    return v0

    .line 1753
    :pswitch_0
    const/16 v0, 0x11

    return v0

    .line 1755
    :pswitch_1
    const/16 v0, 0x12

    return v0

    .line 1751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;
    .locals 1
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initPackageTracking()V
    .locals 27

    .prologue
    .line 801
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v23, v0

    const-string/jumbo v24, "ancestral"

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenFile:Ljava/io/File;

    .line 802
    const/16 v23, 0x0

    const/16 v19, 0x0

    .local v19, "tf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v20, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenFile:Ljava/io/File;

    move-object/from16 v22, v0

    const-string/jumbo v24, "r"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 803
    .end local v19    # "tf":Ljava/io/RandomAccessFile;
    .local v20, "tf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v21

    .line 804
    .local v21, "version":I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 805
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    .line 806
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    .line 808
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    .line 809
    .local v12, "numPackages":I
    if-ltz v12, :cond_0

    .line 810
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 811
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 812
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v14

    .line 813
    .local v14, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 811
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 822
    .end local v9    # "i":I
    .end local v12    # "numPackages":I
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_0
    if-eqz v20, :cond_1

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e

    :cond_1
    :goto_1
    if-eqz v23, :cond_3

    :try_start_3
    throw v23
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    .line 817
    :catch_0
    move-exception v8

    .local v8, "fnf":Ljava/io/FileNotFoundException;
    move-object/from16 v19, v20

    .line 819
    .end local v20    # "tf":Ljava/io/RandomAccessFile;
    .end local v21    # "version":I
    :goto_2
    const-string/jumbo v22, "BackupManagerService"

    const-string/jumbo v23, "No ancestral data"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .end local v8    # "fnf":Ljava/io/FileNotFoundException;
    :goto_3
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v23, v0

    const-string/jumbo v24, "processed"

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    .line 828
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    const-string/jumbo v23, "processed.new"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 833
    .local v18, "tempProcessedFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 834
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 839
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 840
    const/16 v23, 0x0

    const/16 v16, 0x0

    .local v16, "temp":Ljava/io/RandomAccessFile;
    const/4 v10, 0x0

    .local v10, "in":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string/jumbo v22, "rws"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 841
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v17, "temp":Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v11, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v22, v0

    const-string/jumbo v24, "r"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 844
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .local v11, "in":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_6
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-result-object v13

    .line 847
    .local v13, "pkg":Ljava/lang/String;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 850
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    .line 852
    :catch_1
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_4

    .line 822
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .end local v18    # "tempProcessedFile":Ljava/io/File;
    .restart local v20    # "tf":Ljava/io/RandomAccessFile;
    .restart local v21    # "version":I
    :catch_2
    move-exception v23

    goto/16 :goto_1

    :cond_3
    move-object/from16 v19, v20

    .end local v20    # "tf":Ljava/io/RandomAccessFile;
    .local v19, "tf":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v21    # "version":I
    .local v19, "tf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v22

    .end local v19    # "tf":Ljava/io/RandomAccessFile;
    :goto_5
    :try_start_8
    throw v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v23

    move-object/from16 v26, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v26

    :goto_6
    if-eqz v19, :cond_4

    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_7
    if-eqz v23, :cond_6

    :try_start_a
    throw v23

    .line 817
    :catch_4
    move-exception v8

    .restart local v8    # "fnf":Ljava/io/FileNotFoundException;
    goto/16 :goto_2

    .line 822
    .end local v8    # "fnf":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v24

    if-nez v23, :cond_5

    move-object/from16 v23, v24

    goto :goto_7

    :cond_5
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_4

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_7

    .line 820
    :catch_6
    move-exception v6

    .line 821
    .local v6, "e":Ljava/io/IOException;
    :goto_8
    const-string/jumbo v22, "BackupManagerService"

    const-string/jumbo v23, "Unable to read token file"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 822
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_b
    throw v22
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 865
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v18    # "tempProcessedFile":Ljava/io/File;
    :catch_7
    move-exception v22

    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    :goto_9
    :try_start_c
    throw v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v23

    move-object/from16 v26, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v26

    :goto_a
    if-eqz v10, :cond_7

    :try_start_d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :cond_7
    move-object/from16 v24, v23

    :cond_8
    :goto_b
    if-eqz v16, :cond_9

    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    :cond_9
    move-object/from16 v23, v24

    :cond_a
    :goto_c
    if-eqz v23, :cond_c

    :try_start_f
    throw v23
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 857
    :catch_8
    move-exception v5

    .line 860
    .local v5, "e":Ljava/io/EOFException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 861
    const-string/jumbo v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Error renaming "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    .end local v5    # "e":Ljava/io/EOFException;
    :cond_b
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 870
    :try_start_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    monitor-exit v23

    .line 875
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 876
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v22, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string/jumbo v22, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    const-string/jumbo v22, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    const-string/jumbo v22, "package"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 882
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 883
    .local v15, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v22, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 884
    const-string/jumbo v22, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 886
    return-void

    .line 865
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v15    # "sdFilter":Landroid/content/IntentFilter;
    :catch_9
    move-exception v24

    if-eqz v23, :cond_8

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_7

    :try_start_11
    invoke-virtual/range {v23 .. v24}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v24, v23

    goto/16 :goto_b

    :catch_a
    move-exception v23

    if-eqz v24, :cond_a

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_9

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v23, v24

    goto/16 :goto_c

    :cond_c
    throw v22
    :try_end_11
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 863
    :catch_b
    move-exception v6

    .line 864
    .restart local v6    # "e":Ljava/io/IOException;
    const-string/jumbo v22, "BackupManagerService"

    const-string/jumbo v23, "Error in processed file"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 868
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v22

    monitor-exit v23

    throw v22

    .line 865
    .restart local v10    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v22

    goto/16 :goto_a

    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catchall_4
    move-exception v22

    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .local v16, "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_a

    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catchall_5
    move-exception v22

    move-object v10, v11

    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_a

    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_c
    move-exception v22

    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_9

    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v11    # "in":Ljava/io/RandomAccessFile;
    .restart local v17    # "temp":Ljava/io/RandomAccessFile;
    :catch_d
    move-exception v22

    move-object v10, v11

    .end local v11    # "in":Ljava/io/RandomAccessFile;
    .local v10, "in":Ljava/io/RandomAccessFile;
    move-object/from16 v16, v17

    .end local v17    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_9

    .line 820
    .end local v10    # "in":Ljava/io/RandomAccessFile;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .end local v18    # "tempProcessedFile":Ljava/io/File;
    .restart local v20    # "tf":Ljava/io/RandomAccessFile;
    .restart local v21    # "version":I
    :catch_e
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object/from16 v19, v20

    .end local v20    # "tf":Ljava/io/RandomAccessFile;
    .local v19, "tf":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .line 822
    .end local v6    # "e":Ljava/io/IOException;
    .end local v21    # "version":I
    .local v19, "tf":Ljava/io/RandomAccessFile;
    :catchall_6
    move-exception v22

    goto/16 :goto_6

    .end local v19    # "tf":Ljava/io/RandomAccessFile;
    .restart local v20    # "tf":Ljava/io/RandomAccessFile;
    :catchall_7
    move-exception v22

    move-object/from16 v19, v20

    .end local v20    # "tf":Ljava/io/RandomAccessFile;
    .local v19, "tf":Ljava/io/RandomAccessFile;
    goto/16 :goto_6

    .end local v19    # "tf":Ljava/io/RandomAccessFile;
    .restart local v20    # "tf":Ljava/io/RandomAccessFile;
    :catch_f
    move-exception v22

    move-object/from16 v19, v20

    .end local v20    # "tf":Ljava/io/RandomAccessFile;
    .restart local v19    # "tf":Ljava/io/RandomAccessFile;
    goto/16 :goto_5
.end method

.method private parseLeftoverJournals()V
    .locals 7

    .prologue
    .line 1023
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/backup/DataChangedJournal;->listJournals(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1024
    .local v3, "journals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/DataChangedJournal;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "journal$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/DataChangedJournal;

    .line 1025
    .local v1, "journal":Lcom/android/server/backup/DataChangedJournal;
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v1, v4}, Lcom/android/server/backup/DataChangedJournal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1027
    :try_start_0
    new-instance v4, Lcom/android/server/backup/-$Lambda$HVG81oAnYYGYP1QjJ-JXVZWHuJs;

    invoke-direct {v4, p0}, Lcom/android/server/backup/-$Lambda$HVG81oAnYYGYP1QjJ-JXVZWHuJs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/android/server/backup/DataChangedJournal;->forEach(Lcom/android/server/backup/DataChangedJournal$Consumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1037
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "journal":Lcom/android/server/backup/DataChangedJournal;
    :cond_1
    return-void
.end method

.method private static readBackupEnableState(I)Z
    .locals 11
    .param p0, "userId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 2708
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v8, "backup"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2709
    .local v0, "base":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "backup_enabled"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2710
    .local v2, "enableFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2711
    const/4 v3, 0x0

    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2712
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v5

    .line 2713
    .local v5, "state":I
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    .line 2717
    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v7, :cond_2

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2714
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 2716
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "state":I
    :goto_2
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Cannot read enable state; assuming disabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return v9

    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "state":I
    :cond_1
    move v6, v9

    .line 2713
    goto :goto_0

    .line 2717
    :catch_1
    move-exception v7

    goto :goto_1

    .line 2713
    :cond_2
    return v6

    .line 2717
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "state":I
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    .end local v3    # "fin":Ljava/io/FileInputStream;
    :goto_4
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_5
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_6
    if-eqz v7, :cond_5

    :try_start_6
    throw v7

    .line 2714
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 2717
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    if-nez v7, :cond_4

    move-object v7, v8

    goto :goto_6

    :cond_4
    if-eq v7, v8, :cond_3

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2720
    :cond_6
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "isBackupEnabled() => false due to absent settings file"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2717
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    goto :goto_5

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 889
    const/4 v10, 0x0

    .line 890
    .local v10, "changed":Z
    const/16 v25, 0x0

    .line 892
    .local v25, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v7

    .line 894
    .local v7, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 895
    const/16 v29, 0x0

    const/4 v14, 0x0

    .local v14, "fstream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .local v8, "bufStream":Ljava/io/BufferedInputStream;
    const/16 v17, 0x0

    .local v17, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 896
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .local v15, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 897
    .local v9, "bufStream":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v18, Ljava/io/DataInputStream;

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 898
    .local v18, "in":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    .end local v17    # "in":Ljava/io/DataInputStream;
    move-result v27

    .line 899
    .local v27, "version":I
    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 900
    const-string/jumbo v28, "BackupManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unknown backup schedule version "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 901
    const/16 v30, 0x0

    .line 958
    if-eqz v18, :cond_0

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    move-object/from16 v28, v29

    :goto_0
    if-eqz v9, :cond_1

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_1
    move-object/from16 v29, v28

    :cond_2
    :goto_1
    if-eqz v15, :cond_3

    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    move-object/from16 v28, v29

    :cond_4
    :goto_2
    if-eqz v28, :cond_7

    :try_start_7
    throw v28
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 954
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/DataInputStream;
    .local v17, "in":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .local v8, "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 955
    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v27    # "version":I
    :goto_3
    const-string/jumbo v28, "BackupManagerService"

    const-string/jumbo v29, "Unable to read backup schedule"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    .line 957
    const/16 v25, 0x0

    .line 961
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    if-nez v25, :cond_1a

    .line 964
    const/4 v10, 0x1

    .line 965
    new-instance v25, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 966
    .local v25, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "info$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    .line 967
    .local v19, "info":Landroid/content/pm/PackageInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 968
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    .line 967
    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 969
    new-instance v28, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x0

    invoke-direct/range {v28 .. v31}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 958
    .end local v19    # "info":Landroid/content/pm/PackageInfo;
    .end local v20    # "info$iterator":Ljava/util/Iterator;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .local v25, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v27    # "version":I
    :catch_1
    move-exception v28

    goto :goto_0

    :catch_2
    move-exception v29

    if-eqz v28, :cond_2

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_1

    :try_start_8
    invoke-virtual/range {v28 .. v29}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v29, v28

    goto :goto_1

    :catch_3
    move-exception v28

    if-eqz v29, :cond_4

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v28, v29

    goto/16 :goto_2

    .line 901
    :cond_7
    return-object v30

    .line 904
    :cond_8
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 905
    .local v4, "N":I
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 911
    .end local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .local v26, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    :try_start_a
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 913
    .local v13, "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v4, :cond_f

    .line 914
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    .line 915
    .local v24, "pkgName":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v22

    .line 916
    .local v22, "lastBackup":J
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 918
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    .line 919
    .local v21, "pkg":Landroid/content/pm/PackageInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 921
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    .line 920
    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v28

    .line 919
    if-eqz v28, :cond_9

    .line 922
    new-instance v28, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    .end local v21    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 925
    .restart local v21    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_9
    const-string/jumbo v28, "BackupManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Package "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 926
    const-string/jumbo v31, " no longer eligible for full backup"

    .line 925
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_7

    .line 929
    .end local v21    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_4
    move-exception v11

    .line 931
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_c
    const-string/jumbo v28, "BackupManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Package "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 932
    const-string/jumbo v31, " not installed; dropping from full backup"

    .line 931
    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_7

    .line 958
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "i":I
    .end local v22    # "lastBackup":J
    .end local v24    # "pkgName":Ljava/lang/String;
    :catch_5
    move-exception v28

    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .local v14, "fstream":Ljava/io/FileInputStream;
    move-object/from16 v25, v26

    .end local v4    # "N":I
    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v27    # "version":I
    :goto_8
    :try_start_d
    throw v28
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_0
    move-exception v29

    move-object/from16 v34, v29

    move-object/from16 v29, v28

    move-object/from16 v28, v34

    :goto_9
    if-eqz v17, :cond_a

    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    :cond_a
    :goto_a
    if-eqz v8, :cond_b

    :try_start_f
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    :cond_b
    move-object/from16 v30, v29

    :cond_c
    :goto_b
    if-eqz v14, :cond_d

    :try_start_10
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    :cond_d
    move-object/from16 v29, v30

    :cond_e
    :goto_c
    if-eqz v29, :cond_19

    :try_start_11
    throw v29
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    .line 954
    :catch_6
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 939
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v4    # "N":I
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "i":I
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v27    # "version":I
    :cond_f
    :try_start_12
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "app$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 940
    .local v5, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 942
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    .line 941
    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v28

    .line 940
    if-eqz v28, :cond_10

    .line 943
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 947
    new-instance v28, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    const/4 v10, 0x1

    goto :goto_d

    .line 953
    .end local v5    # "app":Landroid/content/pm/PackageInfo;
    :cond_11
    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 958
    if-eqz v18, :cond_12

    :try_start_13
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    :cond_12
    move-object/from16 v28, v29

    :goto_e
    if-eqz v9, :cond_13

    :try_start_14
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    :cond_13
    move-object/from16 v29, v28

    :cond_14
    :goto_f
    if-eqz v15, :cond_15

    :try_start_15
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    :cond_15
    move-object/from16 v28, v29

    :cond_16
    :goto_10
    if-eqz v28, :cond_17

    :try_start_16
    throw v28

    .line 954
    :catch_7
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    move-object/from16 v25, v26

    .end local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .local v25, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    goto/16 :goto_3

    .line 958
    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    :catch_8
    move-exception v28

    goto :goto_e

    :catch_9
    move-exception v29

    if-eqz v28, :cond_14

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_13

    invoke-virtual/range {v28 .. v29}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v29, v28

    goto :goto_f

    :catch_a
    move-exception v28

    if-eqz v29, :cond_16

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_15

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    move-object/from16 v28, v29

    goto :goto_10

    :cond_17
    move-object/from16 v25, v26

    .end local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    goto/16 :goto_4

    .end local v4    # "N":I
    .end local v6    # "app$iterator":Ljava/util/Iterator;
    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v13    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .end local v16    # "i":I
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .end local v27    # "version":I
    :catch_b
    move-exception v30

    if-nez v29, :cond_18

    move-object/from16 v29, v30

    goto/16 :goto_a

    :cond_18
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_a

    :try_start_17
    invoke-virtual/range {v29 .. v30}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :catch_c
    move-exception v30

    if-eqz v29, :cond_c

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_b

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v30, v29

    goto/16 :goto_b

    :catch_d
    move-exception v29

    if-eqz v30, :cond_e

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_d

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v29, v30

    goto/16 :goto_c

    :cond_19
    throw v28
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    .line 974
    :cond_1a
    if-eqz v10, :cond_1b

    .line 975
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeFullBackupScheduleAsync()V

    .line 977
    :cond_1b
    return-object v25

    .line 958
    .local v8, "bufStream":Ljava/io/BufferedInputStream;
    .local v14, "fstream":Ljava/io/FileInputStream;
    .local v17, "in":Ljava/io/DataInputStream;
    .local v25, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    :catchall_1
    move-exception v28

    goto/16 :goto_9

    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v28

    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .local v14, "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v28

    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .local v8, "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    :catchall_4
    move-exception v28

    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/DataInputStream;
    .local v17, "in":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .end local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v4    # "N":I
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    .restart local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .restart local v27    # "version":I
    :catchall_5
    move-exception v28

    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v17    # "in":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    move-object/from16 v25, v26

    .end local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    .local v25, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    goto/16 :goto_9

    .end local v4    # "N":I
    .end local v27    # "version":I
    .local v8, "bufStream":Ljava/io/BufferedInputStream;
    .local v14, "fstream":Ljava/io/FileInputStream;
    .local v17, "in":Ljava/io/DataInputStream;
    .local v25, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/fullbackup/FullBackupEntry;>;"
    :catch_e
    move-exception v28

    goto/16 :goto_8

    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v28

    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .local v14, "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    :catch_10
    move-exception v28

    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .local v8, "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .end local v17    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    :catch_11
    move-exception v28

    move-object/from16 v17, v18

    .end local v18    # "in":Ljava/io/DataInputStream;
    .local v17, "in":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_8
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1370
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1379
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    :cond_0
    return-void
.end method

.method private removePackageParticipantsLocked([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .prologue
    .line 1346
    if-nez p1, :cond_0

    .line 1347
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "removePackageParticipants with null list"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return-void

    .line 1355
    :cond_0
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p1, v2

    .line 1357
    .local v0, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 1358
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1359
    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1362
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1355
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1366
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/backup/params/AdbParams;

    .prologue
    .line 2626
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0x9

    .line 2627
    const/4 v3, 0x0

    .line 2626
    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2628
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2629
    return-void
.end method

.method private startConfirmationUi(ILjava/lang/String;)Z
    .locals 4
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2609
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2610
    .local v0, "confIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.backupconfirm"

    .line 2611
    const-string/jumbo v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    .line 2610
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2612
    const-string/jumbo v2, "conftoken"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2613
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2614
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2618
    const/4 v2, 0x1

    return v2

    .line 2615
    .end local v0    # "confIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 2616
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method private waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/server/backup/params/AdbParams;

    .prologue
    .line 2632
    iget-object v2, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 2633
    :goto_0
    :try_start_0
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 2635
    :try_start_1
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2636
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 2639
    return-void

    .line 2632
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static writeBackupEnableState(ZI)V
    .locals 12
    .param p0, "enable"    # Z
    .param p1, "userId"    # I

    .prologue
    const/4 v9, 0x0

    .line 2727
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "backup"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2728
    .local v0, "base":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "backup_enabled"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2729
    .local v2, "enableFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "backup_enabled-stage"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2730
    .local v6, "stage":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2731
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_1

    const/4 v7, 0x1

    :goto_0
    :try_start_1
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write(I)V

    .line 2732
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2733
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2746
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v7, v9

    :goto_1
    if-eqz v7, :cond_2

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2735
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v4

    .line 2738
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    :goto_2
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2739
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 2738
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    sget-object v7, Lcom/android/server/backup/RefactoredBackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v7, v7, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2743
    .local v5, "r":Landroid/content/ContentResolver;
    const-string/jumbo v7, "backup_enabled"

    .line 2742
    invoke-static {v5, v7, v9, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2744
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2745
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2747
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "r":Landroid/content/ContentResolver;
    :goto_3
    return-void

    .line 2731
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2746
    :catch_1
    move-exception v7

    goto :goto_1

    :cond_2
    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v3, "fout":Ljava/io/FileOutputStream;
    goto :goto_3

    .local v3, "fout":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .end local v3    # "fout":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_5
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_6
    if-eqz v8, :cond_5

    :try_start_6
    throw v8

    .line 2735
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 2746
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    if-nez v8, :cond_4

    move-object v8, v10

    goto :goto_6

    :cond_4
    if-eq v8, v10, :cond_3

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v8, v9

    goto :goto_5

    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v3, "fout":Ljava/io/FileOutputStream;
    move-object v8, v9

    goto :goto_5

    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v7

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method private writeFullBackupScheduleAsync()V
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1019
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1020
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/backup/DataChangedJournal;->newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 2276
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/DataChangedJournal;->addPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    :goto_0
    return-void

    .line 2277
    :catch_0
    move-exception v0

    .line 2278
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to backup journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2279
    iput-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    goto :goto_0
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 2654
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "acknowledgeAdbBackupOrRestore : token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2655
    const-string/jumbo v7, " allow="

    .line 2654
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BACKUP"

    .line 2661
    const-string/jumbo v7, "acknowledgeAdbBackupOrRestore"

    .line 2660
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2667
    .local v2, "oldId":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2668
    :try_start_1
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/params/AdbParams;

    .line 2669
    .local v1, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v1, :cond_2

    .line 2670
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2671
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 2673
    if-eqz p2, :cond_1

    .line 2674
    instance-of v5, v1, Lcom/android/server/backup/params/AdbBackupParams;

    if-eqz v5, :cond_0

    .line 2675
    const/4 v4, 0x2

    .line 2678
    .local v4, "verb":I
    :goto_0
    iput-object p5, v1, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 2679
    iput-object p3, v1, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    .line 2681
    iput-object p4, v1, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    .line 2684
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2685
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2686
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "msg":Landroid/os/Message;
    .end local v4    # "verb":I
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2697
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2699
    return-void

    .line 2676
    :cond_0
    const/16 v4, 0xa

    .restart local v4    # "verb":I
    goto :goto_0

    .line 2688
    .end local v4    # "verb":I
    :cond_1
    :try_start_3
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "User rejected full backup/restore operation"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    invoke-virtual {p0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2667
    .end local v1    # "params":Lcom/android/server/backup/params/AdbParams;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2696
    :catchall_1
    move-exception v5

    .line 2697
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2696
    throw v5

    .line 2693
    .restart local v1    # "params":Lcom/android/server/backup/params/AdbParams;
    :cond_2
    :try_start_5
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "includeSystem"    # Z
    .param p8, "compress"    # Z
    .param p9, "doKeyValue"    # Z
    .param p10, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 2425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "adbBackup"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 2429
    .local v13, "callingUserHandle":I
    if-eqz v13, :cond_0

    .line 2430
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Backup supported only for the device owner"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2434
    :cond_0
    if-nez p6, :cond_2

    .line 2435
    if-nez p4, :cond_2

    .line 2439
    if-eqz p10, :cond_1

    move-object/from16 v0, p10

    array-length v3, v0

    if-nez v3, :cond_2

    .line 2440
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 2441
    const-string/jumbo v4, "Backup requested but neither shared nor any apps named"

    .line 2440
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2446
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2449
    .local v16, "oldId":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->deviceIsProvisioned()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2450
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Backup not supported before setup"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2490
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2494
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2495
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Adb backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    return-void

    .line 2491
    :catch_0
    move-exception v14

    .line 2492
    .local v14, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2455
    .end local v14    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requesting backup: apks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " obb="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2456
    const-string/jumbo v5, " shared="

    .line 2455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2456
    const-string/jumbo v5, " all="

    .line 2455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2456
    const-string/jumbo v5, " system="

    .line 2455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2457
    const-string/jumbo v5, " includekeyvalue="

    .line 2455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2457
    const-string/jumbo v5, " pkgs="

    .line 2455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Beginning adb backup..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    new-instance v2, Lcom/android/server/backup/params/AdbBackupParams;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/params/AdbBackupParams;-><init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 2464
    .local v2, "params":Lcom/android/server/backup/params/AdbBackupParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v15

    .line 2465
    .local v15, "token":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2466
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4

    .line 2470
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting backup confirmation UI, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const-string/jumbo v3, "fullback"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2472
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Unable to launch backup confirmation UI"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2490
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2494
    :goto_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2495
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Adb backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    return-void

    .line 2465
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v4

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2488
    .end local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v15    # "token":I
    :catchall_1
    move-exception v3

    .line 2490
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2494
    :goto_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2495
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Adb backup processing complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    throw v3

    .line 2491
    .restart local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .restart local v15    # "token":I
    :catch_1
    move-exception v14

    .line 2492
    .restart local v14    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2478
    .end local v14    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2479
    const/4 v6, 0x0

    .line 2480
    const/4 v7, 0x0

    .line 2478
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2483
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 2486
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Waiting for backup completion..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2490
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 2494
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2495
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Adb backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    return-void

    .line 2491
    :catch_2
    move-exception v14

    .line 2492
    .restart local v14    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2491
    .end local v2    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "token":I
    :catch_3
    move-exception v14

    .line 2492
    .restart local v14    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IO error closing output for adb backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 11
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 2551
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.BACKUP"

    const-string/jumbo v8, "adbRestore"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2555
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_0

    .line 2556
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Restore supported only for the device owner"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2559
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2564
    .local v2, "oldId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->deviceIsProvisioned()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2565
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore not permitted before setup"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2598
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2602
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2603
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "adb restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    return-void

    .line 2599
    :catch_0
    move-exception v1

    .line 2600
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after adb restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2569
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Beginning restore..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    new-instance v4, Lcom/android/server/backup/params/AdbRestoreParams;

    invoke-direct {v4, p1}, Lcom/android/server/backup/params/AdbRestoreParams;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2572
    .local v4, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    .line 2573
    .local v5, "token":I
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2574
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7

    .line 2578
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting restore confirmation UI, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    const-string/jumbo v6, "fullrest"

    invoke-direct {p0, v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2580
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Unable to launch restore confirmation"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2598
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2602
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2603
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "adb restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    return-void

    .line 2573
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v7

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2596
    .end local v4    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v5    # "token":I
    :catchall_1
    move-exception v6

    .line 2598
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2602
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2603
    const-string/jumbo v7, "BackupManagerService"

    const-string/jumbo v8, "adb restore processing complete."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    throw v6

    .line 2599
    .restart local v4    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .restart local v5    # "token":I
    :catch_1
    move-exception v1

    .line 2600
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after adb restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2586
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_8
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2587
    const/4 v7, 0x0

    .line 2588
    const/4 v10, 0x0

    .line 2586
    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2591
    invoke-direct {p0, v5, v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    .line 2594
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Waiting for restore completion..."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    invoke-direct {p0, v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2598
    :try_start_9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 2602
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2603
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "adb restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    return-void

    .line 2599
    :catch_2
    move-exception v1

    .line 2600
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after adb restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2599
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v5    # "token":I
    :catch_3
    move-exception v1

    .line 2600
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error trying to close fd after adb restore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public addBackupTrace(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 681
    return-void

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .prologue
    .line 3034
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3035
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    .line 3036
    const-string/jumbo v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 3038
    .local v0, "agent":Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3039
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    .line 3044
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3046
    return-void

    .line 3041
    :cond_0
    :try_start_1
    const-string/jumbo v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3042
    const-string/jumbo v4, " claiming agent connected"

    .line 3041
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3034
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3054
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3055
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 3056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 3057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    .line 3062
    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3064
    return-void

    .line 3059
    :cond_0
    :try_start_1
    const-string/jumbo v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3060
    const-string/jumbo v3, " claiming agent disconnected"

    .line 3059
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3054
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public backupNow()V
    .locals 5

    .prologue
    .line 2386
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "backupNow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    .line 2390
    .local v1, "result":Landroid/os/PowerSaveState;
    iget-boolean v2, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_0

    .line 2391
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Not running backup while in battery save mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 2408
    :goto_0
    return-void

    .line 2394
    :cond_0
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Scheduling immediate backup pass"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2398
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2405
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    goto :goto_0

    .line 2399
    :catch_0
    move-exception v0

    .line 2401
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "run-backup intent cancelled!"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2395
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public backupPasswordMatches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentPw"    # Ljava/lang/String;

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 32
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .prologue
    .line 2032
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 2033
    .local v24, "now":J
    const/16 v16, 0x0

    .line 2034
    .local v16, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    const-wide/32 v18, 0x5265c00

    .line 2036
    .local v18, "latency":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 2044
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2050
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v26

    .line 2051
    .local v26, "result":Landroid/os/PowerSaveState;
    move-object/from16 v0, v26

    iget-boolean v2, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_2

    .line 2052
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Deferring scheduled full backups in battery saver mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v6, 0xdbba00

    invoke-static {v2, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    .line 2054
    const/4 v2, 0x0

    return v2

    .line 2058
    :cond_2
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Beginning scheduled full backup operation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 2063
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v2, :cond_3

    .line 2064
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Backup triggered but one already/still running!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    const/4 v2, 0x0

    monitor-exit v29

    return v2

    .line 2071
    :cond_3
    const/16 v27, 0x1

    .line 2077
    .end local v16    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .local v27, "runBackup":Z
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 2080
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Backup queue empty; doing nothing"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    const/16 v27, 0x0

    .line 2160
    :cond_4
    :goto_1
    if-nez v27, :cond_d

    .line 2162
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Nothing pending full backup; rescheduling +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    move-wide/from16 v14, v18

    .line 2165
    .local v14, "deferTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/RefactoredBackupManagerService$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v15}, Lcom/android/server/backup/RefactoredBackupManagerService$5;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;J)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2171
    const/4 v2, 0x0

    monitor-exit v29

    return v2

    .line 2086
    .end local v14    # "deferTime":J
    :cond_5
    const/16 v17, 0x0

    .line 2088
    .local v17, "headBusy":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2092
    const/16 v27, 0x0

    .line 2096
    const-wide/32 v18, 0xdbba00

    .line 2099
    :cond_6
    if-eqz v27, :cond_9

    .line 2100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    move-object/from16 v16, v0

    .line 2101
    .local v16, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v30, v24, v2

    .line 2102
    .local v30, "timeSinceRun":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v30, v2

    if-ltz v2, :cond_7

    const/16 v27, 0x1

    .line 2103
    :goto_2
    if-nez v27, :cond_8

    .line 2109
    const-wide/32 v2, 0x5265c00

    sub-long v18, v2, v30

    .line 2110
    goto :goto_1

    .line 2102
    :cond_7
    const/16 v27, 0x0

    goto :goto_2

    .line 2114
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 2115
    .local v12, "appInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v12}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2124
    const/16 v17, 0x1

    .line 2158
    .end local v12    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v17    # "headBusy":Z
    .end local v30    # "timeSinceRun":J
    :cond_9
    :goto_3
    if-eqz v17, :cond_4

    goto/16 :goto_0

    .line 2128
    .restart local v12    # "appInfo":Landroid/content/pm/PackageInfo;
    .restart local v16    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v17    # "headBusy":Z
    .restart local v30    # "timeSinceRun":J
    :cond_a
    iget-object v2, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v23, v0

    .line 2129
    .local v23, "privFlags":I
    move/from16 v0, v23

    and-int/lit16 v2, v0, 0x2000

    if-nez v2, :cond_b

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result v17

    .line 2132
    .end local v17    # "headBusy":Z
    :goto_4
    if-eqz v17, :cond_9

    .line 2133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2134
    const-wide/32 v6, 0x36ee80

    .line 2133
    add-long/2addr v2, v6

    .line 2135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    const v6, 0x6ddd00

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v6, v4

    .line 2133
    add-long v20, v2, v6

    .line 2137
    .local v20, "nextEligible":J
    new-instance v28, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2138
    .local v28, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Full backup time but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2139
    const-string/jumbo v4, " is busy; deferring to "

    .line 2138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2140
    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v20

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 2138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 2146
    const-wide/32 v6, 0x5265c00

    sub-long v6, v20, v6

    .line 2145
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 2148
    .end local v12    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "nextEligible":J
    .end local v23    # "privFlags":I
    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v22

    .line 2153
    .local v22, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    const/16 v27, 0x1

    goto/16 :goto_3

    .line 2129
    .end local v22    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "appInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "headBusy":Z
    .restart local v23    # "privFlags":I
    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    .line 2153
    .end local v12    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "headBusy":Z
    .end local v23    # "privFlags":I
    .restart local v22    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 2175
    .end local v16    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v22    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v30    # "timeSinceRun":J
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2176
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2177
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    .line 2178
    .local v5, "pkg":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 2179
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    .line 2178
    invoke-direct/range {v2 .. v11}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 2181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2182
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v29

    .line 2185
    const/4 v2, 0x1

    return v2

    .line 2062
    .end local v5    # "pkg":[Ljava/lang/String;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v27    # "runBackup":Z
    :catchall_0
    move-exception v2

    monitor-exit v29

    throw v2

    .line 2154
    .restart local v16    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .restart local v27    # "runBackup":Z
    .restart local v30    # "timeSinceRun":J
    :catch_1
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    goto/16 :goto_3
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3141
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginRestoreSession: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3142
    const-string/jumbo v5, " transport="

    .line 3141
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    const/4 v1, 0x1

    .line 3146
    .local v1, "needPermission":Z
    if-nez p2, :cond_0

    .line 3147
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p2

    .line 3149
    if-eqz p1, :cond_0

    .line 3150
    const/4 v0, 0x0

    .line 3152
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3158
    .local v0, "app":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3162
    const/4 v1, 0x0

    .line 3167
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v1, :cond_1

    .line 3168
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 3169
    const-string/jumbo v5, "beginRestoreSession"

    .line 3168
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    :goto_0
    monitor-enter p0

    .line 3175
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eqz v3, :cond_2

    .line 3176
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 3177
    return-object v6

    .line 3153
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 3154
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3171
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "restoring self on current transport; no permission needed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3179
    :cond_2
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupRunning:Z

    if-eqz v3, :cond_3

    .line 3180
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Restore session requested but currently running backups"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 3181
    return-object v6

    .line 3183
    :cond_3
    :try_start_3
    new-instance v3, Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/restore/ActiveRestoreSession;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3184
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v4, 0x8

    .line 3185
    const-wide/32 v6, 0xea60

    .line 3184
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 3187
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v3

    .line 3174
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .locals 12
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    .line 1502
    const/4 v0, 0x0

    .line 1503
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1504
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    .line 1505
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1507
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1508
    const/4 v8, 0x0

    .line 1507
    invoke-interface {v3, v7, p2, v8}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1509
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "awaiting agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long v4, v8, v10

    .line 1514
    .local v4, "timeoutMark":J
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v3, :cond_2

    .line 1515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    cmp-long v3, v8, v4

    if-gez v3, :cond_2

    .line 1517
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1518
    :catch_0
    move-exception v2

    .line 1520
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    .line 1522
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1534
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "timeoutMark":J
    :catch_1
    move-exception v1

    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :cond_0
    :goto_1
    monitor-exit v6

    .line 1538
    if-nez v0, :cond_1

    .line 1540
    :try_start_4
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1545
    :cond_1
    :goto_2
    return-object v0

    .line 1527
    .restart local v0    # "agent":Landroid/app/IBackupAgent;
    .restart local v4    # "timeoutMark":J
    :cond_2
    :try_start_5
    iget-boolean v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    if-eqz v3, :cond_3

    .line 1528
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 1531
    :cond_3
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "got agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .local v0, "agent":Landroid/app/IBackupAgent;
    goto :goto_1

    .line 1503
    .end local v4    # "timeoutMark":J
    .local v0, "agent":Landroid/app/IBackupAgent;
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 1541
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :catch_2
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public cancelBackups()V
    .locals 12

    .prologue
    .line 1701
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.BACKUP"

    const-string/jumbo v10, "cancelBackups"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1707
    .local v2, "oldToken":J
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1708
    .local v4, "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 1710
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/Operation;

    .line 1711
    .local v1, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1712
    .local v5, "token":I
    iget v8, v1, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_0

    .line 1713
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1709
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "op":Lcom/android/server/backup/internal/Operation;
    .end local v5    # "token":I
    :cond_1
    :try_start_2
    monitor-exit v9

    .line 1717
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "token$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1718
    .local v6, "token":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->handleCancel(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1724
    .end local v0    # "i":I
    .end local v4    # "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "token":Ljava/lang/Integer;
    .end local v7    # "token$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    .line 1725
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1724
    throw v8

    .line 1708
    .restart local v0    # "i":I
    .restart local v4    # "operationsToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v9

    throw v8

    .line 1722
    .restart local v7    # "token$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;J)V

    .line 1723
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v10, 0x6ddd00

    invoke-static {v8, v10, v11}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1725
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1727
    return-void
.end method

.method public clearApplicationDataSynchronous(Ljava/lang/String;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1552
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1553
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_0

    .line 1558
    return-void

    .line 1560
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Tried to clear data for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " but not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    return-void

    .line 1565
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v4, Lcom/android/server/backup/internal/ClearDataObserver;

    invoke-direct {v4, p0}, Lcom/android/server/backup/internal/ClearDataObserver;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    .line 1567
    .local v4, "observer":Lcom/android/server/backup/internal/ClearDataObserver;
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1568
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearingData:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1570
    :try_start_2
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v9, 0x0

    invoke-interface {v5, p1, v4, v9}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1576
    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    add-long v6, v10, v12

    .line 1577
    .local v6, "timeoutMark":J
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearingData:Z

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    cmp-long v5, v10, v6

    if-gez v5, :cond_1

    .line 1579
    :try_start_4
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v10, 0x1388

    invoke-virtual {v5, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1580
    :catch_1
    move-exception v2

    .line 1582
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    :try_start_5
    iput-boolean v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearingData:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1567
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "timeoutMark":J
    :catchall_0
    move-exception v5

    monitor-exit v8

    throw v5

    .restart local v6    # "timeoutMark":J
    :cond_1
    monitor-exit v8

    .line 1586
    return-void

    .line 1571
    .end local v6    # "timeoutMark":J
    :catch_2
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0xc

    .line 2335
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "clearBackupData() of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :try_start_0
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x40

    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2347
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 2348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2347
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    .line 2348
    const/4 v8, -0x1

    .line 2347
    if-ne v7, v8, :cond_0

    .line 2349
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 2358
    .local v0, "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2361
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v7, v11}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 2362
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2364
    :try_start_1
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v7, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6

    .line 2365
    .local v6, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v6, :cond_1

    .line 2367
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 2368
    new-instance v9, Lcom/android/server/backup/params/ClearRetryParams;

    invoke-direct {v9, p1, p2}, Lcom/android/server/backup/params/ClearRetryParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    const/16 v10, 0xc

    invoke-virtual {v7, v10, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2369
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v10, 0x36ee80

    invoke-virtual {v7, v3, v10, v11}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 2370
    return-void

    .line 2339
    .end local v0    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_0
    move-exception v1

    .line 2340
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No such package \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' - not clearing backup data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    return-void

    .line 2354
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {v7}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object v0

    .restart local v0    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0

    .line 2372
    .restart local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2373
    .local v4, "oldId":J
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2374
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 2375
    new-instance v9, Lcom/android/server/backup/params/ClearParams;

    invoke-direct {v9, v6, v2}, Lcom/android/server/backup/params/ClearParams;-><init>(Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    .line 2374
    const/4 v10, 0x4

    invoke-virtual {v7, v10, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2376
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v7, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2377
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    .line 2380
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "oldId":J
    .end local v6    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_2
    return-void

    .line 2362
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public clearBackupTrace()V
    .locals 2

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 689
    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearPendingInits()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 523
    return-void
.end method

.method public clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .locals 2
    .param p1, "currentSession"    # Lcom/android/server/backup/restore/ActiveRestoreSession;

    .prologue
    .line 3191
    monitor-enter p0

    .line 3192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    if-eq p1, v0, :cond_0

    .line 3193
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 3200
    return-void

    .line 3195
    :cond_0
    :try_start_1
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 3197
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2287
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2288
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_0

    .line 2298
    return-void

    .line 2301
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 2302
    .local v1, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 2303
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dataChanged but no participant pkg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2304
    const-string/jumbo v4, " uid="

    .line 2303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    return-void

    .line 2308
    :cond_1
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/RefactoredBackupManagerService$6;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/RefactoredBackupManagerService$6;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 2313
    return-void
.end method

.method public dataChangedImpl(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2217
    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2218
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 2219
    return-void
.end method

.method public deviceIsEncrypted()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1906
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 1908
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3}, Landroid/os/storage/IStorageManager;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v3, v1, :cond_0

    .line 1906
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1908
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1906
    goto :goto_0

    .line 1910
    :catch_0
    move-exception v0

    .line 1913
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to communicate with storagemanager service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    return v1
.end method

.method public deviceIsProvisioned()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2411
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2412
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3285
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "BackupManagerService"

    invoke-static {v1, v4, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3287
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3289
    .local v2, "identityToken":J
    if-eqz p3, :cond_3

    .line 3290
    const/4 v1, 0x0

    :try_start_0
    array-length v4, p3

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, p3, v1

    .line 3291
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v5, "-h"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3292
    const-string/jumbo v1, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3293
    const-string/jumbo v1, "  -h       : this help text"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    const-string/jumbo v1, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3304
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3295
    return-void

    .line 3296
    :cond_1
    :try_start_1
    const-string/jumbo v5, "agents"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3297
    invoke-direct {p0, p2}, Lcom/android/server/backup/RefactoredBackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3304
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3298
    return-void

    .line 3290
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3302
    .end local v0    # "arg":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/backup/RefactoredBackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3304
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3306
    return-void

    .line 3303
    :catchall_0
    move-exception v1

    .line 3304
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3303
    throw v1
.end method

.method public endFullBackup()V
    .locals 3

    .prologue
    .line 2192
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v0, :cond_0

    .line 2195
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Telling running backup to stop"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->handleCancel(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2200
    return-void

    .line 2192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public enqueueFullBackup(Ljava/lang/String;J)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    .prologue
    .line 1966
    new-instance v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    .line 1967
    .local v1, "newEntry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1971
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    .line 1977
    const/4 v2, -0x1

    .line 1978
    .local v2, "which":I
    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-lez v3, :cond_0

    .line 1979
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 1980
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1981
    .local v0, "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    iget-wide v6, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v3, v6, p2

    if-gtz v3, :cond_2

    .line 1982
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1987
    .end local v0    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_0
    if-gez v2, :cond_1

    .line 1989
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    .line 1992
    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeFullBackupScheduleAsync()V

    .line 1993
    return-void

    .line 1979
    .restart local v0    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1967
    .end local v0    # "entry":Lcom/android/server/backup/fullbackup/FullBackupEntry;
    .end local v2    # "which":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 19
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .prologue
    .line 2501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 2502
    const-string/jumbo v5, "fullTransportBackup"

    .line 2501
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 2506
    .local v12, "callingUserHandle":I
    if-eqz v12, :cond_0

    .line 2507
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Restore supported only for the device owner"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2510
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2511
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    :goto_0
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Done with full transport backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    return-void

    .line 2514
    :cond_1
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "fullTransportBackup()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2519
    .local v16, "oldId":J
    :try_start_0
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2520
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const/4 v4, 0x0

    .line 2521
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    .line 2520
    invoke-direct/range {v2 .. v11}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Z)V

    .line 2523
    .local v2, "task":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2524
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "full-transport-master"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2527
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2535
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2536
    .local v14, "now":J
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v18, p1, v3

    .line 2537
    .local v18, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2536
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2529
    .end local v14    # "now":J
    .end local v18    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 2540
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .restart local v14    # "now":J
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2539
    .end local v2    # "task":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .end local v8    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v14    # "now":J
    :catchall_0
    move-exception v3

    .line 2540
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2539
    throw v3
.end method

.method public generateRandomIntegerToken()I
    .locals 3

    .prologue
    .line 667
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    monitor-enter v2

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "token":I
    monitor-exit v2

    .line 670
    if-ltz v0, :cond_0

    .line 671
    return v0

    .line 667
    .end local v0    # "token":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public getAncestralPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    return-object v0
.end method

.method public getAncestralToken()J
    .locals 2

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    return-wide v0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1592
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    .line 1593
    const-string/jumbo v4, "getAvailableRestoreToken"

    .line 1592
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    iget-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    .line 1596
    .local v0, "token":J
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1597
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1601
    iget-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 1605
    return-wide v0

    .line 1596
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method public getBackupManagerBinder()Landroid/app/backup/IBackupManager;
    .locals 1

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method public getBaseStateDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method public getClearDataLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2938
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 2939
    const-string/jumbo v5, "getConfigurationIntent"

    .line 2938
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 2942
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    .line 2944
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2949
    .local v1, "intent":Landroid/content/Intent;
    return-object v1

    .line 2950
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2952
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get configuration intent from transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentOpLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentOperations()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentToken()J
    .locals 2

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    return-wide v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2838
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BACKUP"

    .line 2839
    const-string/jumbo v3, "getCurrentTransport"

    .line 2838
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    .line 2842
    .local v0, "currentTransport":Ljava/lang/String;
    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2987
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 2988
    const-string/jumbo v5, "getDataManagementIntent"

    .line 2987
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 2991
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    .line 2993
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2998
    .local v1, "intent":Landroid/content/Intent;
    return-object v1

    .line 2999
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3001
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get management intent from transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3012
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 3013
    const-string/jumbo v5, "getDataManagementLabel"

    .line 3012
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 3016
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    .line 3018
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementLabel()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3020
    .local v1, "text":Ljava/lang/String;
    return-object v1

    .line 3021
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3023
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get management label from transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2966
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 2967
    const-string/jumbo v5, "getDestinationString"

    .line 2966
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 2970
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_0

    .line 2972
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2974
    .local v1, "text":Ljava/lang/String;
    return-object v1

    .line 2975
    .end local v1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2977
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get string from transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public getJournal()Lcom/android/server/backup/DataChangedJournal;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-object v0
.end method

.method public getLastBackupPass()J
    .locals 2

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mLastBackupPass:J

    return-wide v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageManagerBinder()Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public getPendingBackups()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPendingInits()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPendingRestores()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    return-object v0
.end method

.method public getQueueLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRng()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getRunInitIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRunningFullBackupTask()Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object v0
.end method

.method public getTransportManager()Lcom/android/server/backup/TransportManager;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 2864
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v3

    .line 2865
    .local v3, "whitelistedComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 2866
    .local v4, "whitelistedTransports":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2867
    .local v2, "i":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "component$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2868
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 2869
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2871
    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_0
    return-object v4
.end method

.method public getWakelock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public handleCancel(IZ)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "cancelAll"    # Z

    .prologue
    .line 1824
    const/4 v1, 0x0

    .line 1825
    .local v1, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1826
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/backup/internal/Operation;

    move-object v1, v0

    .line 1833
    .local v1, "op":Lcom/android/server/backup/internal/Operation;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/server/backup/internal/Operation;->state:I

    .line 1834
    .local v2, "state":I
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1837
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v5, "Operation already got an ack.Should have been removed from mCurrentOperations."

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const/4 v1, 0x0

    .line 1841
    .local v1, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1851
    .end local v1    # "op":Lcom/android/server/backup/internal/Operation;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1855
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v3, :cond_1

    .line 1859
    iget-object v3, v1, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-interface {v3, p2}, Lcom/android/server/backup/BackupRestoreTask;->handleCancel(Z)V

    .line 1861
    :cond_1
    return-void

    .line 1833
    .end local v2    # "state":I
    .local v1, "op":Lcom/android/server/backup/internal/Operation;
    :cond_2
    const/4 v2, -0x1

    .restart local v2    # "state":I
    goto :goto_0

    .line 1842
    :cond_3
    if-nez v2, :cond_0

    .line 1843
    :try_start_1
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cancel: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    .line 1849
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v5, v1, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1825
    .end local v1    # "op":Lcom/android/server/backup/internal/Operation;
    .end local v2    # "state":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hasBackupPassword()Z
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    return v0
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 5
    .param p1, "transportNames"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;

    .prologue
    .line 2318
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "initializeTransport"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initializeTransport(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2325
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2326
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/internal/PerformInitializeTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2328
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2330
    return-void

    .line 2327
    :catchall_0
    move-exception v2

    .line 2328
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2327
    throw v2
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 3257
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    .line 3258
    const-string/jumbo v6, "isAppEligibleForBackup"

    .line 3257
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3261
    const/16 v5, 0x40

    .line 3260
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3262
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3263
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    .line 3262
    if-nez v4, :cond_0

    .line 3264
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v4, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v4

    .line 3262
    if-eqz v4, :cond_1

    .line 3265
    :cond_0
    return v7

    .line 3267
    :cond_1
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v4}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 3268
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v3, :cond_2

    .line 3271
    :try_start_1
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    .line 3270
    invoke-interface {v3, v2, v4}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    return v4

    .line 3272
    :catch_0
    move-exception v1

    .line 3273
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to ask about eligibility: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3277
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x1

    return v4

    .line 3278
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_1
    move-exception v0

    .line 3279
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7
.end method

.method public isBackupEnabled()Z
    .locals 3

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    .line 2831
    const-string/jumbo v2, "isBackupEnabled"

    .line 2830
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isBackupOperationInProgress()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1866
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1867
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1868
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/Operation;

    .line 1869
    .local v1, "op":Lcom/android/server/backup/internal/Operation;
    iget v2, v1, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    iget v2, v1, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1870
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 1867
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "op":Lcom/android/server/backup/internal/Operation;
    :cond_1
    monitor-exit v3

    .line 1874
    return v5

    .line 1866
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isBackupRunning()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupRunning:Z

    return v0
.end method

.method public isClearingData()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearingData:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    return v0
.end method

.method public isRestoreInProgress()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mIsRestoreInProgress:Z

    return v0
.end method

.method synthetic lambda$-com_android_server_backup_RefactoredBackupManagerService_30299()V
    .locals 0

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->parseLeftoverJournals()V

    return-void
.end method

.method synthetic lambda$-com_android_server_backup_RefactoredBackupManagerService_40916(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1028
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Found stale backup journal, scheduling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-virtual {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    .line 2857
    const-string/jumbo v2, "listAllTransportComponents"

    .line 2856
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getAllTransportCompenents()[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    .line 2849
    const-string/jumbo v2, "listAllTransports"

    .line 2848
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getBoundTransportNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logBackupComplete(Ljava/lang/String;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1416
    const-string/jumbo v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 1418
    :cond_0
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v6

    .line 1419
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v6

    return-void

    .line 1421
    :cond_1
    const/4 v1, 0x0

    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    const-string/jumbo v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1422
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1423
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1426
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1424
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 1425
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_5
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t log backup of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v6

    .line 1428
    return-void

    .line 1426
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v4

    goto :goto_0

    :cond_3
    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .local v1, "out":Ljava/io/RandomAccessFile;
    goto :goto_2

    .local v1, "out":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v3

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_4
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :goto_5
    if-eqz v4, :cond_6

    :try_start_8
    throw v4

    .line 1424
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1426
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_5

    :cond_5
    if-eq v4, v5, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 1418
    :catchall_1
    move-exception v3

    monitor-exit v6

    throw v3

    .line 1426
    :cond_6
    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v3

    goto :goto_4

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .local v1, "out":Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method public opComplete(IJ)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "result"    # J

    .prologue
    const/4 v7, 0x1

    .line 3209
    const/4 v3, 0x0

    .line 3210
    .local v3, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3211
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/internal/Operation;

    move-object v3, v0

    .line 3212
    .local v3, "op":Lcom/android/server/backup/internal/Operation;
    if-eqz v3, :cond_0

    .line 3213
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 3216
    const/4 v3, 0x0

    .line 3217
    .local v3, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3231
    .end local v3    # "op":Lcom/android/server/backup/internal/Operation;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 3235
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v4, :cond_1

    .line 3236
    iget-object v4, v3, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 3237
    .local v1, "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v1}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3238
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3240
    .end local v1    # "callbackAndResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 3218
    .local v3, "op":Lcom/android/server/backup/internal/Operation;
    :cond_2
    :try_start_1
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I

    if-ne v4, v7, :cond_3

    .line 3220
    const-string/jumbo v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received duplicate ack for token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3221
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 3220
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    const/4 v3, 0x0

    .line 3224
    .local v3, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3210
    .end local v3    # "op":Lcom/android/server/backup/internal/Operation;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 3225
    .local v3, "op":Lcom/android/server/backup/internal/Operation;
    :cond_3
    :try_start_2
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v4, :cond_0

    .line 3228
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p5, "operationType"    # I

    .prologue
    .line 1732
    if-eqz p5, :cond_0

    const/4 v1, 0x1

    if-eq p5, v1, :cond_0

    .line 1733
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareOperationTimeout() doesn\'t support operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1734
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1733
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1734
    const-string/jumbo v3, " of type "

    .line 1733
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    return-void

    .line 1742
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1743
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p4, p5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1744
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {p0, p5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v3

    .line 1745
    const/4 v4, 0x0

    .line 1744
    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1746
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1748
    return-void

    .line 1742
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public randomBytes(I)[B
    .locals 2
    .param p1, "bits"    # I

    .prologue
    .line 1041
    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    .line 1042
    .local v0, "array":[B
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1043
    return-object v0
.end method

.method public recordInitPendingLocked(ZLjava/lang/String;)V
    .locals 12
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xb

    const/4 v7, 0x0

    .line 1067
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v6, v10}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 1070
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6, p2}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 1071
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v4, :cond_1

    .line 1072
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 1073
    .local v5, "transportDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1074
    .local v3, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "_need_init_"

    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1076
    .local v1, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_0

    .line 1080
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v6, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1091
    :goto_0
    return-void

    .line 1088
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1089
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v6, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1093
    .end local v1    # "initPendingFile":Ljava/io/File;
    .end local v3    # "stateDir":Ljava/io/File;
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v5    # "transportDirName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed to report name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1096
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 1095
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz p1, :cond_2

    .line 1103
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v6, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1104
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 1105
    iget-object v9, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 1106
    if-eqz p1, :cond_3

    const/4 v6, 0x1

    .line 1105
    :goto_1
    invoke-virtual {v9, v10, v6, v7, p2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1109
    const-wide/32 v10, 0x36ee80

    .line 1104
    invoke-virtual {v8, v6, v10, v11}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1111
    :cond_2
    return-void

    :cond_3
    move v6, v7

    .line 1106
    goto :goto_1

    .line 1083
    .restart local v1    # "initPendingFile":Ljava/io/File;
    .restart local v3    # "stateDir":Ljava/io/File;
    .restart local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v5    # "transportDirName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1432
    const-string/jumbo v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing backed-up knowledge of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v9, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v9

    .line 1439
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v8, "processed.new"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1440
    .local v5, "tempKnownFile":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "known":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rws"

    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1441
    .end local v1    # "known":Ljava/io/RandomAccessFile;
    .local v2, "known":Ljava/io/RandomAccessFile;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1442
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1443
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1459
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "known":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_2
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :goto_3
    if-eqz v7, :cond_6

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1450
    :catch_1
    move-exception v0

    .line 1455
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error rewriting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1456
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1457
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1458
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    monitor-exit v9

    .line 1461
    return-void

    .line 1446
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 1447
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1448
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t rename "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1459
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .local v1, "known":Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v1    # "known":Ljava/io/RandomAccessFile;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_2
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_3
    :goto_6
    if-eqz v7, :cond_4

    :try_start_9
    throw v7
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1450
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v1    # "known":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 1459
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "known":Ljava/io/RandomAccessFile;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v7

    goto :goto_6

    :cond_4
    move-object v1, v2

    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v1    # "known":Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v1    # "known":Ljava/io/RandomAccessFile;
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catch_4
    move-exception v8

    if-nez v7, :cond_5

    move-object v7, v8

    goto :goto_3

    :cond_5
    if-eq v7, v8, :cond_0

    :try_start_a
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    .line 1435
    .end local v5    # "tempKnownFile":Ljava/io/File;
    :catchall_2
    move-exception v6

    monitor-exit v9

    throw v6

    .line 1459
    .restart local v5    # "tempKnownFile":Ljava/io/File;
    :cond_6
    :try_start_b
    throw v6
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .local v1, "known":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v6

    goto/16 :goto_2

    :catch_5
    move-exception v6

    goto/16 :goto_1
.end method

.method public removeOperation(I)V
    .locals 4
    .param p1, "token"    # I

    .prologue
    .line 1767
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1768
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1769
    const-string/jumbo v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate remove for operation. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1770
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1769
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1774
    return-void

    .line 1767
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;I)I
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "flags"    # I

    .prologue
    .line 1610
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/backup/RefactoredBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 16
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p4, "flags"    # I

    .prologue
    .line 1616
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BACKUP"

    const-string/jumbo v7, "requestBackup"

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v6, 0x1

    if-ge v1, v6, :cond_1

    .line 1619
    :cond_0
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v6, "No packages named for backup request"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    const/16 v1, -0x3e8

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1622
    const/16 v1, 0x31

    .line 1623
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1621
    move-object/from16 v0, p3

    invoke-static {v0, v1, v6, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p3

    .line 1624
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "No packages are provided for backup"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1627
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 1628
    :cond_2
    const-string/jumbo v1, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Backup requested but e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " p="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/16 v1, -0x7d1

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1630
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    if-eqz v1, :cond_3

    .line 1631
    const/16 v12, 0xd

    .line 1633
    .local v12, "logTag":I
    :goto_0
    const/4 v1, 0x0

    .line 1634
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 1633
    move-object/from16 v0, p3

    invoke-static {v0, v12, v1, v6, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p3

    .line 1635
    const/16 v1, -0x7d1

    return v1

    .line 1632
    .end local v12    # "logTag":I
    :cond_3
    const/16 v12, 0xe

    .restart local v12    # "logTag":I
    goto :goto_0

    .line 1638
    .end local v12    # "logTag":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 1639
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v2, :cond_5

    .line 1640
    const/16 v1, -0x3e8

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1642
    const/16 v1, 0x32

    .line 1643
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1641
    move-object/from16 v0, p3

    invoke-static {v0, v1, v6, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p3

    .line 1644
    const/16 v1, -0x3e8

    return v1

    .line 1647
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1648
    .local v5, "fullBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1649
    .local v4, "kvBackupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v6, v0

    :goto_1
    if-ge v1, v6, :cond_9

    aget-object v15, p1, v1

    .line 1650
    .local v15, "packageName":Ljava/lang/String;
    const-string/jumbo v7, "@pm@"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1651
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1655
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1656
    const/16 v8, 0x40

    .line 1655
    invoke-virtual {v7, v15, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 1657
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1659
    const/16 v7, -0x7d1

    .line 1658
    move-object/from16 v0, p2

    invoke-static {v0, v15, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1667
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v10

    .line 1669
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v7, -0x7d2

    .line 1668
    move-object/from16 v0, p2

    invoke-static {v0, v15, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_2

    .line 1662
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    :try_start_1
    invoke-static {v14}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1663
    iget-object v7, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1665
    :cond_8
    iget-object v7, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1672
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v1, v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v1, v7

    .line 1673
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 1672
    const/16 v6, 0xb0c

    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1682
    :try_start_2
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 1689
    .local v3, "dirName":Ljava/lang/String;
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    const/4 v9, 0x1

    .line 1691
    .local v9, "nonIncrementalBackup":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v6, 0xf

    invoke-virtual {v1, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 1692
    .local v13, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/backup/params/BackupParams;

    .line 1693
    const/4 v8, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 1692
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/params/BackupParams;-><init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZZ)V

    iput-object v1, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v13}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1695
    const/4 v1, 0x0

    return v1

    .line 1683
    .end local v3    # "dirName":Ljava/lang/String;
    .end local v9    # "nonIncrementalBackup":Z
    .end local v13    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v11

    .line 1684
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transport unavailable while attempting backup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    const/16 v1, -0x3e8

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 1686
    const/16 v1, -0x3e8

    return v1

    .line 1689
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v3    # "dirName":Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "nonIncrementalBackup":Z
    goto :goto_3
.end method

.method public resetBackupState(Ljava/io/File;)V
    .locals 12
    .param p1, "stateFileDir"    # Ljava/io/File;

    .prologue
    .line 1117
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1119
    :try_start_0
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1120
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1122
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeRestoreTokens()V

    .line 1126
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v5, v8, v6

    .line 1128
    .local v5, "sf":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "_need_init_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1129
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1126
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v5    # "sf":Ljava/io/File;
    :cond_1
    monitor-exit v7

    .line 1135
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1136
    :try_start_1
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1137
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1138
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 1139
    .local v4, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 1140
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "packageName$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1141
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1135
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageName$iterator":Ljava/util/Iterator;
    .end local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1117
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1137
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v7

    .line 1146
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 3070
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_0

    .line 3071
    const-string/jumbo v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-system process uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3072
    const-string/jumbo v5, " attemping install-time restore"

    .line 3071
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    return-void

    .line 3076
    :cond_0
    const/4 v12, 0x0

    .line 3078
    .local v12, "skip":Z
    invoke-virtual {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v6

    .line 3080
    .local v6, "restoreSet":J
    const-string/jumbo v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAtInstall pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3081
    const-string/jumbo v5, " token="

    .line 3080
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3081
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 3080
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3082
    const-string/jumbo v5, " restoreSet="

    .line 3080
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3082
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    .line 3080
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-nez v1, :cond_1

    .line 3086
    const/4 v12, 0x1

    .line 3090
    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 3091
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v2, :cond_2

    .line 3092
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v4, "No transport"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    const/4 v12, 0x1

    .line 3096
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAutoRestore:Z

    if-nez v1, :cond_3

    .line 3098
    const-string/jumbo v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-restorable state: auto="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAutoRestore:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    const/4 v12, 0x1

    .line 3103
    :cond_3
    if-nez v12, :cond_4

    .line 3110
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 3112
    .local v3, "dirName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3116
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 3117
    .local v11, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/backup/params/RestoreParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;I)V

    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3119
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v11}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3127
    .end local v3    # "dirName":Ljava/lang/String;
    .end local v11    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    if-eqz v12, :cond_5

    .line 3130
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v4, "Finishing install immediately"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v1, p2, v4}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3135
    :cond_5
    :goto_1
    return-void

    .line 3120
    :catch_0
    move-exception v10

    .line 3122
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to contact transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    const/4 v12, 0x1

    goto :goto_0

    .line 3133
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public restoreWidgetData(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    .prologue
    .line 2209
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2210
    return-void
.end method

.method public scheduleNextFullBackupJob(J)V
    .locals 17
    .param p1, "transportMinLatency"    # J

    .prologue
    .line 1924
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1925
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1929
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v10, v7, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 1930
    .local v10, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v10

    .line 1931
    .local v8, "timeSinceLast":J
    const-wide/32 v14, 0x5265c00

    cmp-long v7, v8, v14

    if-gez v7, :cond_0

    .line 1932
    const-wide/32 v14, 0x5265c00

    sub-long v2, v14, v8

    .line 1933
    .local v2, "appLatency":J
    :goto_0
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1934
    .local v4, "latency":J
    new-instance v6, Lcom/android/server/backup/RefactoredBackupManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4, v5}, Lcom/android/server/backup/RefactoredBackupManagerService$4;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;J)V

    .line 1940
    .local v6, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/16 v14, 0x9c4

    invoke-virtual {v7, v6, v14, v15}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "appLatency":J
    .end local v4    # "latency":J
    .end local v6    # "r":Ljava/lang/Runnable;
    .end local v8    # "timeSinceLast":J
    .end local v10    # "upcomingLastBackup":J
    :goto_1
    monitor-exit v12

    .line 1947
    return-void

    .line 1932
    .restart local v8    # "timeSinceLast":J
    .restart local v10    # "upcomingLastBackup":J
    :cond_0
    const-wide/16 v2, 0x0

    .restart local v2    # "appLatency":J
    goto :goto_0

    .line 1943
    .end local v2    # "appLatency":J
    .end local v8    # "timeSinceLast":J
    .end local v10    # "upcomingLastBackup":J
    :cond_1
    :try_start_1
    const-string/jumbo v7, "BackupManagerService"

    const-string/jumbo v13, "Full backup queue empty; not scheduling"

    invoke-static {v7, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1924
    :catchall_0
    move-exception v7

    monitor-exit v12

    throw v7
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 2877
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    .line 2878
    const-string/jumbo v5, "selectBackupTransport"

    .line 2877
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2882
    .local v0, "oldId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2883
    .local v2, "prevTransport":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2884
    const-string/jumbo v4, "backup_transport"

    .line 2883
    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2885
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransport() set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2886
    const-string/jumbo v5, " returning "

    .line 2885
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2889
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2887
    return-object v2

    .line 2888
    .end local v2    # "prevTransport":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 2889
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2888
    throw v3
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 5
    .param p1, "transport"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;

    .prologue
    .line 2896
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    .line 2897
    const-string/jumbo v4, "selectBackupTransportAsync"

    .line 2896
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2901
    .local v0, "oldId":J
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectBackupTransportAsync() called with transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2902
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 2901
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v3, Lcom/android/server/backup/RefactoredBackupManagerService$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/RefactoredBackupManagerService$7;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/backup/TransportManager;->ensureTransportReady(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V

    .line 2930
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2931
    return-void
.end method

.method public setActiveRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .locals 0
    .param p1, "activeRestoreSession"    # Lcom/android/server/backup/restore/ActiveRestoreSession;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 451
    return-void
.end method

.method public setActivityManager(Landroid/app/IActivityManager;)V
    .locals 0
    .param p1, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 333
    return-void
.end method

.method public setAlarmManager(Landroid/app/AlarmManager;)V
    .locals 0
    .param p1, "alarmManager"    # Landroid/app/AlarmManager;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 341
    return-void
.end method

.method public setAncestralPackages(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "ancestralPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 499
    return-void
.end method

.method public setAncestralToken(J)V
    .locals 1
    .param p1, "ancestralToken"    # J

    .prologue
    .line 506
    iput-wide p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    .line 507
    return-void
.end method

.method public setAutoRestore(Z)V
    .locals 5
    .param p1, "doAutoRestore"    # Z

    .prologue
    .line 2800
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    .line 2801
    const-string/jumbo v4, "setAutoRestore"

    .line 2800
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Auto restore => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2807
    .local v0, "oldId":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2808
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2809
    const-string/jumbo v4, "backup_auto_restore"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 2808
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2810
    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAutoRestore:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2813
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2815
    return-void

    .line 2809
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2807
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2812
    :catchall_1
    move-exception v2

    .line 2813
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2812
    throw v2
.end method

.method public setBackupEnabled(Z)V
    .locals 11
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2752
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.BACKUP"

    .line 2753
    const-string/jumbo v8, "setBackupEnabled"

    .line 2752
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Backup enabled => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2759
    .local v2, "oldId":J
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    .line 2760
    .local v4, "wasEnabled":Z
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2761
    const/4 v6, 0x0

    :try_start_1
    invoke-static {p1, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeBackupEnableState(ZI)V

    .line 2762
    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 2765
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2766
    if-eqz p1, :cond_1

    xor-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_1

    :try_start_3
    iget-boolean v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    if-eqz v7, :cond_1

    .line 2768
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 2769
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2795
    return-void

    .line 2760
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2792
    .end local v4    # "wasEnabled":Z
    :catchall_1
    move-exception v5

    .line 2793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2792
    throw v5

    .line 2770
    .restart local v4    # "wasEnabled":Z
    :cond_1
    if-nez p1, :cond_0

    .line 2774
    :try_start_6
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    .line 2779
    if-eqz v4, :cond_0

    iget-boolean v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    if-eqz v7, :cond_0

    .line 2782
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v7}, Lcom/android/server/backup/TransportManager;->getBoundTransportNames()[Ljava/lang/String;

    move-result-object v0

    .line 2784
    .local v0, "allTransports":[Ljava/lang/String;
    array-length v7, v0

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v1, v0, v5

    .line 2785
    .local v1, "transport":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    .line 2784
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2787
    .end local v1    # "transport":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2788
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 2787
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v8, v9, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 2765
    .end local v0    # "allTransports":[Ljava/lang/String;
    :catchall_2
    move-exception v5

    :try_start_7
    monitor-exit v6

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public setBackupHandler(Lcom/android/server/backup/internal/BackupHandler;)V
    .locals 0
    .param p1, "backupHandler"    # Lcom/android/server/backup/internal/BackupHandler;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 381
    return-void
.end method

.method public setBackupManagerBinder(Landroid/app/backup/IBackupManager;)V
    .locals 0
    .param p1, "backupManagerBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 345
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBackupProvisioned(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    .line 2820
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    .line 2821
    const-string/jumbo v2, "setBackupProvisioned"

    .line 2820
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    return-void
.end method

.method public setBackupRunning(Z)V
    .locals 0
    .param p1, "backupRunning"    # Z

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupRunning:Z

    .line 410
    return-void
.end method

.method public setBaseStateDir(Ljava/io/File;)V
    .locals 0
    .param p1, "baseStateDir"    # Ljava/io/File;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 471
    return-void
.end method

.method public setClearingData(Z)V
    .locals 0
    .param p1, "clearingData"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearingData:Z

    .line 430
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    .line 309
    return-void
.end method

.method public setCurrentToken(J)V
    .locals 1
    .param p1, "currentToken"    # J

    .prologue
    .line 514
    iput-wide p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    .line 515
    return-void
.end method

.method public setDataDir(Ljava/io/File;)V
    .locals 0
    .param p1, "dataDir"    # Ljava/io/File;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mDataDir:Ljava/io/File;

    .line 479
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    .line 357
    return-void
.end method

.method public setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    .locals 0
    .param p1, "journal"    # Lcom/android/server/backup/DataChangedJournal;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 487
    return-void
.end method

.method public setLastBackupPass(J)V
    .locals 1
    .param p1, "lastBackupPass"    # J

    .prologue
    .line 417
    iput-wide p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mLastBackupPass:J

    .line 418
    return-void
.end method

.method public setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 317
    return-void
.end method

.method public setPackageManagerBinder(Landroid/content/pm/IPackageManager;)V
    .locals 0
    .param p1, "packageManagerBinder"    # Landroid/content/pm/IPackageManager;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 325
    return-void
.end method

.method public setPendingBackups(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "pendingBackups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/internal/BackupRequest;>;"
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 398
    return-void
.end method

.method public setProvisioned(Z)V
    .locals 0
    .param p1, "provisioned"    # Z

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    .line 365
    return-void
.end method

.method public setRestoreInProgress(Z)V
    .locals 0
    .param p1, "restoreInProgress"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mIsRestoreInProgress:Z

    .line 438
    return-void
.end method

.method public setRunInitIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "runInitIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 389
    return-void
.end method

.method public setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    .locals 0
    .param p1, "runningFullBackupTask"    # Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 532
    return-void
.end method

.method public setWakelock(Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p1, "wakelock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 373
    return-void
.end method

.method public signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .locals 3
    .param p1, "params"    # Lcom/android/server/backup/params/AdbParams;

    .prologue
    .line 2642
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 2643
    :try_start_0
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2644
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2646
    return-void

    .line 2642
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1880
    if-nez p1, :cond_0

    .line 1882
    return-void

    .line 1887
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1892
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_1

    .line 1893
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1892
    if-eqz v1, :cond_1

    .line 1895
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1902
    :cond_1
    :goto_0
    return-void

    .line 1899
    :catch_0
    move-exception v0

    .line 1900
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public waitUntilOperationComplete(I)Z
    .locals 8
    .param p1, "token"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1783
    const/4 v2, 0x0

    .line 1784
    .local v2, "finalState":I
    const/4 v3, 0x0

    .line 1785
    .local v3, "op":Lcom/android/server/backup/internal/Operation;
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1787
    .end local v3    # "op":Lcom/android/server/backup/internal/Operation;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/internal/Operation;

    move-object v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1788
    .local v3, "op":Lcom/android/server/backup/internal/Operation;
    if-nez v3, :cond_1

    :goto_1
    monitor-exit v7

    .line 1811
    invoke-virtual {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    .line 1812
    if-eqz v3, :cond_0

    .line 1813
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v7, v3, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 1819
    :cond_0
    if-ne v2, v5, :cond_3

    move v4, v5

    :goto_2
    return v4

    .line 1792
    :cond_1
    :try_start_1
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 1794
    :try_start_2
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1795
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1804
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_3
    iget v2, v3, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1785
    .end local v3    # "op":Lcom/android/server/backup/internal/Operation;
    :catchall_0
    move-exception v4

    monitor-exit v7

    throw v4

    .restart local v3    # "op":Lcom/android/server/backup/internal/Operation;
    :cond_3
    move v4, v6

    .line 1819
    goto :goto_2
.end method

.method public writeRestoreTokens()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 1467
    const/4 v0, 0x0

    .local v0, "af":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v7, "rwd"

    invoke-direct {v1, v5, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1469
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .local v1, "af":Ljava/io/RandomAccessFile;
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1472
    iget-wide v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1473
    iget-wide v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1476
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v5, :cond_2

    .line 1477
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1488
    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v6, :cond_4

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1486
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 1487
    .end local v1    # "af":Ljava/io/RandomAccessFile;
    :goto_1
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Unable to write token file:"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1489
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 1479
    .restart local v1    # "af":Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_4
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1480
    const-string/jumbo v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ancestral packages:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pkgName$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1482
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 1488
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "pkgName$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "af":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_5
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_6
    if-eqz v6, :cond_6

    :try_start_7
    throw v6

    .line 1486
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1488
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "af":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v6

    goto :goto_0

    :cond_4
    move-object v0, v1

    .end local v1    # "af":Ljava/io/RandomAccessFile;
    .local v0, "af":Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v7

    if-nez v6, :cond_5

    move-object v6, v7

    goto :goto_6

    :cond_5
    if-eq v6, v7, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .local v0, "af":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    goto :goto_5

    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .restart local v1    # "af":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "af":Ljava/io/RandomAccessFile;
    .local v0, "af":Ljava/io/RandomAccessFile;
    goto :goto_5

    .local v0, "af":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v5

    goto :goto_4
.end method
