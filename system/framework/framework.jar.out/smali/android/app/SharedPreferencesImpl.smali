.class final Landroid/app/SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedPreferencesImpl$EditorImpl;,
        Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    }
.end annotation


# static fields
.field private static final CONTENT:Ljava/lang/Object;

.field private static final DEBUG:Z = false

.field private static final MAX_FSYNC_DURATION_MILLIS:J = 0x100L

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesImpl"


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private mCurrentMemoryStateGeneration:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mDiskStateGeneration:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWritingToDiskLock"
    .end annotation
.end field

.field private mDiskWritesInFlight:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMode:I

.field private mNumSync:I

.field private mStatSize:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mStatTimestamp:Landroid/system/StructTimespec;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWritingToDiskLock"
    .end annotation
.end field

.field private final mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/app/SharedPreferencesImpl;)J
    .locals 2
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    iget-wide v0, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-wide v0
.end method

.method static synthetic -get1(Landroid/app/SharedPreferencesImpl;)I
    .locals 1
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic -get2(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/SharedPreferencesImpl;J)J
    .locals 1
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    return-wide p1
.end method

.method static synthetic -set1(Landroid/app/SharedPreferencesImpl;I)I
    .locals 0
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return p1
.end method

.method static synthetic -set2(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "-value"    # Ljava/util/Map;

    .prologue
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "postWriteRunnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/app/SharedPreferencesImpl;)V
    .locals 0
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->loadFromDisk()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .locals 0
    .param p0, "-this"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "isFromSyncCommit"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/io/File;I)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    .line 78
    iput v2, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    .line 81
    iput-boolean v2, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 91
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 90
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 103
    new-instance v0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    .line 104
    iput v2, p0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    .line 107
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 108
    invoke-static {p1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 109
    iput p2, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    .line 110
    iput-boolean v2, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 112
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 113
    return-void
.end method

.method private awaitLoadedLocked()V
    .locals 2

    .prologue
    .line 230
    iget-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v1, :cond_0

    .line 234
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 236
    :cond_0
    :goto_0
    iget-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v1, :cond_1

    .line 238
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .local v0, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 242
    .end local v0    # "unused":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method private static createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, -0x1

    .line 627
    const/4 v3, 0x0

    .line 629
    .local v3, "str":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "str":Ljava/io/FileOutputStream;
    .local v4, "str":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 646
    .end local v4    # "str":Ljava/io/FileOutputStream;
    :goto_0
    return-object v3

    .line 630
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 632
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_0

    .line 633
    const-string/jumbo v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v5, 0x0

    return-object v5

    .line 637
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 638
    const/16 v6, 0x1f9

    .line 636
    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 641
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v4    # "str":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "str":Ljava/io/FileOutputStream;
    .local v3, "str":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 642
    .local v3, "str":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 643
    .local v1, "e2":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "postWriteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 594
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 596
    .local v0, "isFromSyncCommit":Z
    :goto_0
    new-instance v2, Landroid/app/SharedPreferencesImpl$2;

    invoke-direct {v2, p0, p1, v0, p2}, Landroid/app/SharedPreferencesImpl$2;-><init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;ZLjava/lang/Runnable;)V

    .line 612
    .local v2, "writeToDiskRunnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 613
    const/4 v1, 0x0

    .line 614
    .local v1, "wasEmpty":Z
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 615
    :try_start_0
    iget v4, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit v3

    .line 617
    if-eqz v1, :cond_2

    .line 618
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 619
    return-void

    .line 594
    .end local v0    # "isFromSyncCommit":Z
    .end local v1    # "wasEmpty":Z
    .end local v2    # "writeToDiskRunnable":Ljava/lang/Runnable;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isFromSyncCommit":Z
    goto :goto_0

    .line 615
    .restart local v1    # "wasEmpty":Z
    .restart local v2    # "writeToDiskRunnable":Ljava/lang/Runnable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 614
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 623
    .end local v1    # "wasEmpty":Z
    :cond_2
    xor-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    .line 624
    return-void
.end method

.method private hasFileChangedUnexpectedly()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 192
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 193
    :try_start_0
    iget v5, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_0

    monitor-exit v4

    .line 196
    return v3

    :cond_0
    monitor-exit v4

    .line 206
    :try_start_1
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 207
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 212
    .local v1, "stat":Landroid/system/StructStat;
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 213
    :try_start_2
    iget-object v5, v1, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    invoke-virtual {v5, v6}, Landroid/system/StructTimespec;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v6, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    iget-wide v8, v1, Landroid/system/StructStat;->st_size:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    monitor-exit v4

    return v2

    .line 192
    .end local v1    # "stat":Landroid/system/StructStat;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/system/ErrnoException;
    return v2

    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v1    # "stat":Landroid/system/StructStat;
    :cond_2
    move v2, v3

    .line 213
    goto :goto_0

    .line 212
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method private loadFromDisk()V
    .locals 10

    .prologue
    .line 127
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 128
    :try_start_0
    iget-boolean v6, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    monitor-exit v7

    .line 129
    return-void

    .line 131
    :cond_0
    :try_start_1
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 133
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iget-object v8, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v7

    .line 138
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 139
    const-string/jumbo v6, "SharedPreferencesImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Attempt to read preferences file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " without permission"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    const/4 v2, 0x0

    .line 143
    .local v2, "map":Ljava/util/Map;
    const/4 v3, 0x0

    .line 145
    .local v3, "stat":Landroid/system/StructStat;
    :try_start_2
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    .line 146
    .local v3, "stat":Landroid/system/StructStat;
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    const/4 v4, 0x0

    .line 149
    .local v4, "str":Ljava/io/BufferedInputStream;
    :try_start_3
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 150
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x4000

    .line 149
    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .local v5, "str":Ljava/io/BufferedInputStream;
    :try_start_4
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v2

    .line 155
    .local v2, "map":Ljava/util/Map;
    :try_start_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1

    .line 162
    .end local v2    # "map":Ljava/util/Map;
    .end local v3    # "stat":Landroid/system/StructStat;
    .end local v5    # "str":Ljava/io/BufferedInputStream;
    :cond_3
    :goto_0
    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 163
    const/4 v6, 0x1

    :try_start_6
    iput-boolean v6, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 164
    if-eqz v2, :cond_4

    .line 165
    iput-object v2, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 166
    iget-object v6, v3, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    iput-object v6, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    .line 167
    iget-wide v8, v3, Landroid/system/StructStat;->st_size:J

    iput-wide v8, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    .line 171
    :goto_1
    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v7

    .line 173
    return-void

    .line 127
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 152
    .local v2, "map":Ljava/util/Map;
    .restart local v3    # "stat":Landroid/system/StructStat;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v1

    .line 153
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string/jumbo v6, "SharedPreferencesImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 155
    :try_start_8
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "map":Ljava/util/Map;
    .end local v3    # "stat":Landroid/system/StructStat;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/system/ErrnoException;
    goto :goto_0

    .line 154
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v2    # "map":Ljava/util/Map;
    .restart local v3    # "stat":Landroid/system/StructStat;
    :catchall_1
    move-exception v6

    .line 155
    :goto_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 154
    throw v6
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_1

    .line 169
    .end local v2    # "map":Ljava/util/Map;
    .end local v3    # "stat":Landroid/system/StructStat;
    :cond_4
    :try_start_9
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    .line 162
    :catchall_2
    move-exception v6

    monitor-exit v7

    throw v6

    .line 154
    .restart local v2    # "map":Ljava/util/Map;
    .restart local v3    # "stat":Landroid/system/StructStat;
    .restart local v5    # "str":Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v6

    move-object v4, v5

    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .local v4, "str":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 152
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v5    # "str":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "prefsFile"    # Ljava/io/File;

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private startLoadFromDisk()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 119
    new-instance v0, Landroid/app/SharedPreferencesImpl$1;

    const-string/jumbo v1, "SharedPreferencesImpl-load"

    invoke-direct {v0, p0, v1}, Landroid/app/SharedPreferencesImpl$1;-><init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/SharedPreferencesImpl$1;->start()V

    .line 124
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V
    .locals 38
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "isFromSyncCommit"    # Z

    .prologue
    .line 651
    const-wide/16 v26, 0x0

    .line 652
    .local v26, "startTime":J
    const-wide/16 v12, 0x0

    .line 653
    .local v12, "existsTime":J
    const-wide/16 v4, 0x0

    .line 654
    .local v4, "backupExistsTime":J
    const-wide/16 v22, 0x0

    .line 655
    .local v22, "outputStreamCreateTime":J
    const-wide/16 v30, 0x0

    .line 656
    .local v30, "writeTime":J
    const-wide/16 v20, 0x0

    .line 657
    .local v20, "fsyncTime":J
    const-wide/16 v24, 0x0

    .line 658
    .local v24, "setPermTime":J
    const-wide/16 v16, 0x0

    .line 659
    .local v16, "fstatTime":J
    const-wide/16 v8, 0x0

    .line 665
    .local v8, "deleteTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v14

    .line 675
    .local v14, "fileExists":Z
    if-eqz v14, :cond_5

    .line 676
    const/4 v15, 0x0

    .line 679
    .local v15, "needsWrite":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    move-wide/from16 v34, v0

    cmp-long v32, v32, v34

    if-gez v32, :cond_0

    .line 680
    if-eqz p2, :cond_1

    .line 681
    const/4 v15, 0x1

    .line 693
    :cond_0
    :goto_0
    if-nez v15, :cond_3

    .line 694
    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 695
    return-void

    .line 683
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 686
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/SharedPreferencesImpl;->mCurrentMemoryStateGeneration:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    move-wide/from16 v36, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v32, v34, v36

    if-nez v32, :cond_2

    .line 687
    const/4 v15, 0x1

    :cond_2
    monitor-exit v33

    goto :goto_0

    .line 683
    :catchall_0
    move-exception v32

    monitor-exit v33

    throw v32

    .line 698
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v6

    .line 704
    .local v6, "backupFileExists":Z
    if-nez v6, :cond_4

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v32

    if-nez v32, :cond_5

    .line 706
    const-string/jumbo v32, "SharedPreferencesImpl"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Couldn\'t rename file "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 707
    const-string/jumbo v34, " to backup file "

    .line 706
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    move-object/from16 v34, v0

    .line 706
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 709
    return-void

    .line 712
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    .line 720
    .end local v6    # "backupFileExists":Z
    .end local v15    # "needsWrite":Z
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/app/SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v29

    .line 726
    .local v29, "str":Ljava/io/FileOutputStream;
    if-nez v29, :cond_6

    .line 727
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 728
    return-void

    .line 730
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 734
    invoke-static/range {v29 .. v29}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 738
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->close()V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/SharedPreferencesImpl;->mMode:I

    move/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 746
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v28

    .line 747
    .local v28, "stat":Landroid/system/StructStat;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 748
    :try_start_3
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:Landroid/system/StructTimespec;

    .line 749
    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/SharedPreferencesImpl;->mStatSize:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v33
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 760
    .end local v28    # "stat":Landroid/system/StructStat;
    :goto_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    .line 766
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/SharedPreferencesImpl;->mDiskStateGeneration:J

    .line 768
    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 781
    sub-long v18, v20, v30

    .line 782
    .local v18, "fsyncDuration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    move-object/from16 v32, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    .line 783
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    .line 785
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/SharedPreferencesImpl;->mNumSync:I

    move/from16 v32, v0

    move/from16 v0, v32

    rem-int/lit16 v0, v0, 0x400

    move/from16 v32, v0

    if-nez v32, :cond_8

    .line 786
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mSyncTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    move-object/from16 v32, v0

    const-string/jumbo v33, "SharedPreferencesImpl"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Time required to fsync "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 789
    :cond_7
    return-void

    .line 747
    .end local v18    # "fsyncDuration":J
    .restart local v28    # "stat":Landroid/system/StructStat;
    :catchall_1
    move-exception v32

    :try_start_6
    monitor-exit v33

    throw v32
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 751
    .end local v28    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/system/ErrnoException;
    goto :goto_1

    .line 785
    .end local v7    # "e":Landroid/system/ErrnoException;
    .restart local v18    # "fsyncDuration":J
    :cond_8
    const-wide/16 v32, 0x100

    cmp-long v32, v18, v32

    if-lez v32, :cond_7

    goto :goto_2

    .line 792
    .end local v18    # "fsyncDuration":J
    .end local v29    # "str":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    .line 793
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v32, "SharedPreferencesImpl"

    const-string/jumbo v33, "writeToFile: Got exception:"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    .end local v10    # "e":Ljava/io/IOException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_9

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    move-result v32

    if-nez v32, :cond_9

    .line 799
    const-string/jumbo v32, "SharedPreferencesImpl"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Couldn\'t clean up partially-written file "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_9
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(ZZ)V

    .line 803
    return-void

    .line 790
    :catch_2
    move-exception v11

    .line 791
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v32, "SharedPreferencesImpl"

    const-string/jumbo v33, "writeToFile: Got exception:"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 302
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 318
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/SharedPreferencesImpl;)V

    return-object v0

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 248
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 292
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 293
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 294
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 295
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .end local p2    # "defValue":Z
    :cond_0
    monitor-exit v2

    return p2

    .line 292
    .end local v0    # "v":Ljava/lang/Boolean;
    .restart local p2    # "defValue":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 285
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 286
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 287
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 288
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .end local p2    # "defValue":F
    :cond_0
    monitor-exit v2

    return p2

    .line 285
    .end local v0    # "v":Ljava/lang/Float;
    .restart local p2    # "defValue":F
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 271
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 272
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 273
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 274
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p2

    .end local p2    # "defValue":I
    :cond_0
    monitor-exit v2

    return p2

    .line 271
    .end local v0    # "v":Ljava/lang/Integer;
    .restart local p2    # "defValue":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 278
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 279
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 280
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 281
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide p2

    .end local p2    # "defValue":J
    :cond_0
    monitor-exit v2

    return-wide p2

    .line 278
    .end local v0    # "v":Ljava/lang/Long;
    .restart local p2    # "defValue":J
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 255
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 256
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "v":Ljava/lang/String;
    :goto_0
    monitor-exit v2

    return-object v0

    .restart local v0    # "v":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 254
    .end local v0    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 264
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 265
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .local v0, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    monitor-exit v2

    return-object v0

    .restart local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 263
    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 218
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v2, Landroid/app/SharedPreferencesImpl;->CONTENT:Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 221
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method startReloadIfChangedUnexpectedly()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 183
    return-void

    .line 185
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 187
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 224
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 227
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
