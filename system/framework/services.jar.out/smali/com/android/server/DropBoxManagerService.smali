.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$1;,
        Lcom/android/server/DropBoxManagerService$2;,
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

.field private final mHandler:Landroid/os/Handler;

.field private mMaxFiles:I

.field private mObjEpitaphLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method static synthetic -get0(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/DropBoxManagerService;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/DropBoxManagerService;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 124
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 125
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 129
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 130
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 131
    iput v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 134
    iput-boolean v2, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mObjEpitaphLock:Ljava/lang/Object;

    .line 152
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 216
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 217
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 220
    new-instance v0, Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-direct {v0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 222
    new-instance v0, Lcom/android/server/DropBoxManagerService$3;

    invoke-direct {v0, p0, p3}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 231
    return-void
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .locals 18
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 952
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 958
    .local v6, "t":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v4, 0x2710

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v15

    .line 959
    .local v15, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v10, 0x0

    .line 960
    .local v10, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v15}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 961
    invoke-interface {v15}, Ljava/util/SortedSet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v15, v2}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    check-cast v10, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 962
    .local v10, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v15}, Ljava/util/SortedSet;->clear()V

    .line 965
    .end local v10    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v2, v2, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v2, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 969
    :cond_1
    if-eqz v10, :cond_4

    .line 970
    const/4 v2, 0x0

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v16, v2

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget-object v11, v10, v16

    .line 971
    .local v11, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v3, v2, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v4, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v3, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/DropBoxManagerService$FileList;

    .line 973
    .local v14, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v14, :cond_2

    iget-object v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v2, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 974
    iget v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v2, v3

    iput v2, v14, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 976
    :cond_2
    iget v2, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 977
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v11, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 978
    iget-object v5, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v12, v6, v8

    .end local v6    # "t":J
    .local v12, "t":J
    iget v8, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 977
    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v6, v12

    .line 970
    .end local v12    # "t":J
    .restart local v6    # "t":J
    :goto_1
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_0

    .line 980
    :cond_3
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v4, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v12, v6, v8

    .end local v6    # "t":J
    .restart local v12    # "t":J
    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v6, v12

    .end local v12    # "t":J
    .restart local v6    # "t":J
    goto :goto_1

    .line 985
    .end local v11    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_4
    if-nez p1, :cond_5

    .line 986
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v0, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    .line 990
    return-wide v6

    .line 988
    :cond_5
    :try_start_1
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v6    # "t":J
    .end local v15    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    .prologue
    monitor-enter p0

    .line 933
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 934
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 939
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 941
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_0

    .line 942
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList;)V

    .line 943
    .restart local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    :cond_0
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 946
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_1
    monitor-exit p0

    .line 948
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized init()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 893
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v4, :cond_1

    .line 894
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 895
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t mkdir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 898
    :cond_0
    :try_start_1
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 899
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    iput v4, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v4, :cond_5

    .line 906
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 907
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_2

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t list files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 900
    .end local v3    # "files":[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t statfs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 909
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "files":[Ljava/io/File;
    :cond_2
    new-instance v4, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList;)V

    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 910
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 913
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v2, v3, v4

    .line 914
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 915
    const-string/jumbo v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cleaning temp file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 913
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 920
    :cond_4
    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v6, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v1, v2, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 922
    .local v1, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-virtual {v1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 925
    invoke-direct {p0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v1    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :cond_5
    monitor-exit p0

    .line 929
    return-void
.end method

.method private declared-synchronized trimToFit()J
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1000
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    .line 1001
    const-string/jumbo v28, "dropbox_age_seconds"

    const v29, 0x3f480

    .line 1000
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1002
    .local v6, "ageSeconds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    .line 1003
    const-string/jumbo v29, "dropbox_max_files"

    .line 1004
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1005
    const/16 v25, 0x12c

    .line 1002
    :goto_0
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 1006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    mul-int/lit16 v0, v6, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v30, v0

    sub-long v8, v28, v30

    .line 1007
    .local v8, "cutoffMillis":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_0

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1009
    .local v13, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v28, v0

    cmp-long v25, v28, v8

    if-lez v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->size()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 1024
    .end local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 1025
    .local v26, "uptimeMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1388

    add-long v28, v28, v30

    cmp-long v25, v26, v28

    if-lez v25, :cond_1

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    .line 1027
    const-string/jumbo v28, "dropbox_quota_percent"

    const/16 v29, 0xa

    .line 1026
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1028
    .local v17, "quotaPercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    .line 1029
    const-string/jumbo v28, "dropbox_reserve_percent"

    const/16 v29, 0xa

    .line 1028
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 1030
    .local v18, "reservePercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    .line 1031
    const-string/jumbo v28, "dropbox_quota_kb"

    const/16 v29, 0x1400

    .line 1030
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 1033
    .local v16, "quotaKb":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1035
    .local v10, "dirPath":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    .line 1040
    .local v7, "available":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/StatFs;->getBlockCount()I

    move-result v25

    mul-int v25, v25, v18

    div-int/lit8 v25, v25, 0x64

    sub-int v15, v7, v25

    .line 1041
    .local v15, "nonreserved":I
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x400

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v28, v0

    div-int v14, v25, v28

    .line 1042
    .local v14, "maximum":I
    mul-int v25, v15, v17

    div-int/lit8 v25, v25, 0x64

    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v0, v25

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 1043
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 1060
    .end local v7    # "available":I
    .end local v10    # "dirPath":Ljava/lang/String;
    .end local v14    # "maximum":I
    .end local v15    # "nonreserved":I
    .end local v16    # "quotaKb":I
    .end local v17    # "quotaPercent":I
    .end local v18    # "reservePercent":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v24, v0

    .local v24, "unsqueezed":I
    const/16 v19, 0x0

    .line 1063
    .local v19, "squeezed":I
    new-instance v23, Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1064
    .local v23, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "tag$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1065
    .local v20, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v19, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v28, v0

    sub-int v28, v28, v24

    div-int v28, v28, v19

    move/from16 v0, v25

    move/from16 v1, v28

    if-gt v0, v1, :cond_9

    .line 1071
    .end local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v25, v0

    sub-int v25, v25, v24

    div-int v22, v25, v19

    .line 1074
    .local v22, "tagQuota":I
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1075
    .restart local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 1091
    .end local v19    # "squeezed":I
    .end local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v21    # "tag$iterator":Ljava/util/Iterator;
    .end local v22    # "tagQuota":I
    .end local v23    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v24    # "unsqueezed":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v28, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int v25, v25, v28

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    monitor-exit p0

    return-wide v28

    .line 1005
    .end local v8    # "cutoffMillis":J
    .end local v26    # "uptimeMillis":J
    :cond_5
    const/16 v25, 0x3e8

    goto/16 :goto_0

    .line 1013
    .restart local v8    # "cutoffMillis":J
    .restart local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1014
    .restart local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v28, v0

    sub-int v25, v25, v28

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1015
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1016
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .end local v6    # "ageSeconds":I
    .end local v8    # "cutoffMillis":J
    .end local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :catchall_0
    move-exception v25

    monitor-exit p0

    throw v25

    .line 1036
    .restart local v6    # "ageSeconds":I
    .restart local v8    # "cutoffMillis":J
    .restart local v10    # "dirPath":Ljava/lang/String;
    .restart local v16    # "quotaKb":I
    .restart local v17    # "quotaPercent":I
    .restart local v18    # "reservePercent":I
    .restart local v26    # "uptimeMillis":J
    :catch_0
    move-exception v12

    .line 1037
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v25, Ljava/io/IOException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Can\'t restat: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1068
    .end local v10    # "dirPath":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .end local v16    # "quotaKb":I
    .end local v17    # "quotaPercent":I
    .end local v18    # "reservePercent":I
    .restart local v19    # "squeezed":I
    .restart local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v21    # "tag$iterator":Ljava/util/Iterator;
    .restart local v23    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v24    # "unsqueezed":I
    :cond_9
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    .line 1069
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 1076
    .restart local v22    # "tagQuota":I
    :cond_a
    :goto_3
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_3

    .line 1077
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1078
    .restart local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v25, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v28, v0

    sub-int v25, v25, v28

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1079
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v28, v0

    iget v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1082
    :cond_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1083
    new-instance v25, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v28, v0

    iget-object v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-wide v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 1084
    :catch_1
    move-exception v11

    .line 1085
    .local v11, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v25, "DropBoxManagerService"

    const-string/jumbo v28, "Can\'t write tombstone file"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .locals 42
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    .prologue
    .line 269
    const/16 v33, 0x0

    .line 270
    .local v33, "temp":Ljava/io/File;
    const/4 v14, 0x0

    .line 271
    .local v14, "input":Ljava/io/InputStream;
    const/16 v28, 0x0

    .line 272
    .local v28, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v32

    .line 275
    .local v32, "tag":Ljava/lang/String;
    const-string/jumbo v38, "persist.sys.assert.enable"

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 279
    .local v4, "assertState":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v10

    .line 280
    .local v10, "flags":I
    and-int/lit8 v38, v10, 0x1

    if-eqz v38, :cond_1

    new-instance v38, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v38 .. v38}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v38
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 431
    .end local v10    # "flags":I
    .end local v14    # "input":Ljava/io/InputStream;
    .end local v28    # "output":Ljava/io/OutputStream;
    .end local v33    # "temp":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 432
    .local v9, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    const-string/jumbo v38, "DropBoxManagerService"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Can\'t write: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 434
    invoke-static/range {v28 .. v28}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 435
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 437
    if-eqz v33, :cond_0

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->delete()Z

    .line 440
    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 282
    .restart local v10    # "flags":I
    .restart local v14    # "input":Ljava/io/InputStream;
    .restart local v28    # "output":Ljava/io/OutputStream;
    .restart local v33    # "temp":Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v38

    if-nez v38, :cond_2

    .line 434
    invoke-static/range {v28 .. v28}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 435
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 283
    return-void

    .line 284
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v22

    .line 285
    .local v22, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 287
    .local v16, "lastTrim":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v5, v0, [B

    .line 288
    .local v5, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 293
    .local v14, "input":Ljava/io/InputStream;
    const/16 v30, 0x0

    .line 294
    .local v30, "read":I
    :goto_2
    array-length v0, v5

    move/from16 v38, v0

    move/from16 v0, v30

    move/from16 v1, v38

    if-ge v0, v1, :cond_3

    .line 295
    array-length v0, v5

    move/from16 v38, v0

    sub-int v38, v38, v30

    move/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v24

    .line 296
    .local v24, "n":I
    if-gtz v24, :cond_11

    .line 303
    .end local v24    # "n":I
    :cond_3
    new-instance v34, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v38, v0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "drop"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Thread;->getId()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ".tmp"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 304
    .local v34, "temp":Ljava/io/File;
    :try_start_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 305
    .end local v33    # "temp":Ljava/io/File;
    .local v6, "bufferSize":I
    const/16 v38, 0x1000

    move/from16 v0, v38

    if-le v6, v0, :cond_4

    const/16 v6, 0x1000

    .line 306
    :cond_4
    const/16 v38, 0x200

    move/from16 v0, v38

    if-ge v6, v0, :cond_5

    const/16 v6, 0x200

    .line 307
    :cond_5
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v34

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 308
    .local v12, "foutput":Ljava/io/FileOutputStream;
    new-instance v29, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v29

    invoke-direct {v0, v12, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 309
    .local v29, "output":Ljava/io/OutputStream;
    :try_start_5
    array-length v0, v5

    move/from16 v38, v0

    .end local v28    # "output":Ljava/io/OutputStream;
    move/from16 v0, v30

    move/from16 v1, v38

    if-ne v0, v1, :cond_12

    and-int/lit8 v38, v10, 0x4

    if-nez v38, :cond_12

    .line 310
    new-instance v28, Ljava/util/zip/GZIPOutputStream;

    invoke-direct/range {v28 .. v29}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 311
    .end local v29    # "output":Ljava/io/OutputStream;
    .local v28, "output":Ljava/io/OutputStream;
    or-int/lit8 v10, v10, 0x4

    .line 315
    :goto_3
    if-nez v4, :cond_6

    :try_start_6
    const-string/jumbo v38, "SYSTEM_SERVER"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 316
    const-string/jumbo v38, "<android-panic-begin>\n"

    invoke-static/range {v38 .. v38}, Lcom/oem/debug/OemManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v31

    .line 317
    .local v31, "size":I
    const-string/jumbo v38, "DropBoxManagerService"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "write tag begin size : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v28    # "output":Ljava/io/OutputStream;
    .end local v31    # "size":I
    :cond_6
    const/16 v38, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v38

    move/from16 v2, v30

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 327
    if-nez v4, :cond_7

    const-string/jumbo v38, "SYSTEM_SERVER"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 328
    const-string/jumbo v38, "UTF-8"

    const/16 v39, 0x0

    move/from16 v0, v39

    move/from16 v1, v30

    move-object/from16 v2, v38

    invoke-static {v5, v0, v1, v2}, Lorg/apache/http/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 329
    .local v35, "text":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Lcom/oem/debug/OemManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v31

    .line 330
    .restart local v31    # "size":I
    const-string/jumbo v38, "DropBoxManagerService"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "write system server log size : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v31    # "size":I
    .end local v35    # "text":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 335
    .local v26, "now":J
    sub-long v38, v26, v16

    const-wide/16 v40, 0x7530

    cmp-long v38, v38, v40

    if-lez v38, :cond_8

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v22

    .line 337
    move-wide/from16 v16, v26

    .line 339
    :cond_8
    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v30

    .line 340
    if-gtz v30, :cond_13

    .line 341
    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 342
    invoke-virtual/range {v28 .. v28}, Ljava/io/OutputStream;->close()V

    .line 343
    const/16 v28, 0x0

    .line 348
    :goto_4
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 349
    .local v18, "len":J
    cmp-long v38, v18, v22

    if-lez v38, :cond_14

    .line 350
    const-string/jumbo v38, "DropBoxManagerService"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Dropping: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " ("

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->length()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " > "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " bytes)"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 352
    const/16 v33, 0x0

    .line 359
    .end local v34    # "temp":Ljava/io/File;
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordSystemError(Ljava/lang/String;)V

    .line 364
    if-nez v4, :cond_9

    const-string/jumbo v38, "SYSTEM_SERVER"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 365
    const-string/jumbo v38, "\n<android-panic-end>\n"

    invoke-static/range {v38 .. v38}, Lcom/oem/debug/OemManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v31

    .line 366
    .restart local v31    # "size":I
    const-string/jumbo v38, "DropBoxManagerService"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "write tag end size : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v31    # "size":I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v36

    .line 371
    .local v36, "time":J
    const/16 v33, 0x0

    .line 373
    .restart local v33    # "temp":Ljava/io/File;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v38, "android.intent.action.DROPBOX_ENTRY_ADDED"

    move-object/from16 v0, v38

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v8, "dropboxIntent":Landroid/content/Intent;
    const-string/jumbo v38, "tag"

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string/jumbo v38, "time"

    move-object/from16 v0, v38

    move-wide/from16 v1, v36

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 376
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    move/from16 v38, v0

    if-nez v38, :cond_a

    .line 377
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    new-instance v38, Ljava/io/File;

    const-string/jumbo v39, "/data/system/dropbox"

    invoke-direct/range {v38 .. v39}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    .line 389
    .local v15, "logFiles":[Ljava/io/File;
    const/16 v25, 0x0

    .line 390
    .local v25, "name":Ljava/lang/String;
    const/4 v13, 0x0

    .end local v25    # "name":Ljava/lang/String;
    .local v13, "i":I
    :goto_6
    if-eqz v15, :cond_18

    array-length v0, v15

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v13, v0, :cond_18

    .line 391
    aget-object v38, v15, v13

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    .line 392
    .local v25, "name":Ljava/lang/String;
    const-string/jumbo v38, ".gz"

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 393
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v38

    add-int/lit8 v38, v38, -0x3

    const/16 v39, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 395
    :cond_b
    const-string/jumbo v38, ".lost"

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_15

    .line 396
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v38

    add-int/lit8 v38, v38, -0x5

    const/16 v39, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 403
    :cond_c
    :goto_7
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v38, "yyyy-MM-dd-HH_mm_ss_SSS"

    move-object/from16 v0, v38

    invoke-direct {v11, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 404
    .local v11, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v36

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 405
    .local v7, "curDate":Ljava/util/Date;
    invoke-virtual {v11, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 407
    .local v20, "mDate":Ljava/lang/String;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "@"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_10

    .line 408
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v21, "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "/data/system/dropbox/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    aget-object v39, v15, v13

    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    const-string/jumbo v38, "DropBoxManagerService"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "file :: /data/system/dropbox/"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    aget-object v40, v15, v13

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-eqz v4, :cond_10

    .line 412
    const-string/jumbo v38, "wtf"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_d

    const-string/jumbo v38, "system_server"

    const/16 v39, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v38

    if-nez v38, :cond_e

    .line 413
    :cond_d
    const-string/jumbo v38, "system_app_crash"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    .line 412
    if-nez v38, :cond_e

    .line 414
    const-string/jumbo v38, "system_app_anr"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    .line 412
    if-nez v38, :cond_e

    .line 415
    const-string/jumbo v38, "data_app_crash"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    .line 412
    if-nez v38, :cond_e

    .line 416
    const-string/jumbo v38, "data_app_anr"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    .line 412
    if-eqz v38, :cond_f

    .line 421
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mObjEpitaphLock:Ljava/lang/Object;

    move-object/from16 v39, v0

    monitor-enter v39
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 422
    :try_start_8
    aget-object v38, v15, v13

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-static {v0, v1, v10}, Lcom/oem/debug/ASSERT;->epitaph(Ljava/io/File;Ljava/lang/String;I)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v39

    .line 425
    :cond_f
    const-string/jumbo v38, "DropBoxManagerService"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "assertState="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 390
    .end local v21    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 297
    .end local v6    # "bufferSize":I
    .end local v7    # "curDate":Ljava/util/Date;
    .end local v8    # "dropboxIntent":Landroid/content/Intent;
    .end local v11    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v12    # "foutput":Ljava/io/FileOutputStream;
    .end local v13    # "i":I
    .end local v15    # "logFiles":[Ljava/io/File;
    .end local v18    # "len":J
    .end local v20    # "mDate":Ljava/lang/String;
    .end local v25    # "name":Ljava/lang/String;
    .end local v26    # "now":J
    .end local v36    # "time":J
    .restart local v24    # "n":I
    .local v28, "output":Ljava/io/OutputStream;
    :cond_11
    add-int v30, v30, v24

    goto/16 :goto_2

    .end local v24    # "n":I
    .end local v28    # "output":Ljava/io/OutputStream;
    .end local v33    # "temp":Ljava/io/File;
    .restart local v6    # "bufferSize":I
    .restart local v12    # "foutput":Ljava/io/FileOutputStream;
    .restart local v29    # "output":Ljava/io/OutputStream;
    .restart local v34    # "temp":Ljava/io/File;
    :cond_12
    move-object/from16 v28, v29

    .line 309
    .end local v29    # "output":Ljava/io/OutputStream;
    .local v28, "output":Ljava/io/OutputStream;
    goto/16 :goto_3

    .line 345
    .end local v28    # "output":Ljava/io/OutputStream;
    .restart local v26    # "now":J
    :cond_13
    :try_start_a
    invoke-virtual/range {v28 .. v28}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_4

    .line 431
    .end local v6    # "bufferSize":I
    .end local v12    # "foutput":Ljava/io/FileOutputStream;
    .end local v26    # "now":J
    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    move-object/from16 v33, v34

    .end local v34    # "temp":Ljava/io/File;
    .local v33, "temp":Ljava/io/File;
    goto/16 :goto_0

    .line 355
    .end local v9    # "e":Ljava/io/IOException;
    .end local v33    # "temp":Ljava/io/File;
    .restart local v6    # "bufferSize":I
    .restart local v12    # "foutput":Ljava/io/FileOutputStream;
    .restart local v18    # "len":J
    .restart local v26    # "now":J
    .restart local v34    # "temp":Ljava/io/File;
    :cond_14
    if-gtz v30, :cond_6

    move-object/from16 v33, v34

    .end local v34    # "temp":Ljava/io/File;
    .restart local v33    # "temp":Ljava/io/File;
    goto/16 :goto_5

    .line 397
    .restart local v8    # "dropboxIntent":Landroid/content/Intent;
    .restart local v13    # "i":I
    .restart local v15    # "logFiles":[Ljava/io/File;
    .restart local v25    # "name":Ljava/lang/String;
    .local v33, "temp":Ljava/io/File;
    .restart local v36    # "time":J
    :cond_15
    :try_start_b
    const-string/jumbo v38, ".txt"

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_16

    .line 398
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v38

    add-int/lit8 v38, v38, -0x4

    const/16 v39, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_7

    .line 399
    :cond_16
    const-string/jumbo v38, ".dat"

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_c

    .line 400
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v38

    add-int/lit8 v38, v38, -0x4

    const/16 v39, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_7

    .line 421
    .restart local v7    # "curDate":Ljava/util/Date;
    .restart local v11    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v20    # "mDate":Ljava/lang/String;
    .restart local v21    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v38

    monitor-exit v39

    throw v38
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 433
    .end local v5    # "buffer":[B
    .end local v6    # "bufferSize":I
    .end local v7    # "curDate":Ljava/util/Date;
    .end local v8    # "dropboxIntent":Landroid/content/Intent;
    .end local v10    # "flags":I
    .end local v11    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v12    # "foutput":Ljava/io/FileOutputStream;
    .end local v13    # "i":I
    .end local v14    # "input":Ljava/io/InputStream;
    .end local v15    # "logFiles":[Ljava/io/File;
    .end local v16    # "lastTrim":J
    .end local v18    # "len":J
    .end local v20    # "mDate":Ljava/lang/String;
    .end local v21    # "mFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "max":J
    .end local v25    # "name":Ljava/lang/String;
    .end local v26    # "now":J
    .end local v30    # "read":I
    .end local v33    # "temp":Ljava/io/File;
    .end local v36    # "time":J
    :catchall_1
    move-exception v38

    .line 434
    :goto_8
    invoke-static/range {v28 .. v28}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 435
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 437
    if-eqz v33, :cond_17

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->delete()Z

    .line 433
    :cond_17
    throw v38

    .line 434
    .restart local v5    # "buffer":[B
    .restart local v6    # "bufferSize":I
    .restart local v8    # "dropboxIntent":Landroid/content/Intent;
    .restart local v10    # "flags":I
    .restart local v12    # "foutput":Ljava/io/FileOutputStream;
    .restart local v13    # "i":I
    .restart local v14    # "input":Ljava/io/InputStream;
    .restart local v15    # "logFiles":[Ljava/io/File;
    .restart local v16    # "lastTrim":J
    .restart local v18    # "len":J
    .restart local v22    # "max":J
    .restart local v26    # "now":J
    .restart local v30    # "read":I
    .restart local v33    # "temp":Ljava/io/File;
    .restart local v36    # "time":J
    :cond_18
    invoke-static/range {v28 .. v28}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 435
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    goto/16 :goto_1

    .line 433
    .end local v6    # "bufferSize":I
    .end local v8    # "dropboxIntent":Landroid/content/Intent;
    .end local v12    # "foutput":Ljava/io/FileOutputStream;
    .end local v13    # "i":I
    .end local v15    # "logFiles":[Ljava/io/File;
    .end local v18    # "len":J
    .end local v26    # "now":J
    .end local v33    # "temp":Ljava/io/File;
    .end local v36    # "time":J
    .restart local v34    # "temp":Ljava/io/File;
    :catchall_2
    move-exception v38

    move-object/from16 v33, v34

    .end local v34    # "temp":Ljava/io/File;
    .local v33, "temp":Ljava/io/File;
    goto :goto_8

    .end local v33    # "temp":Ljava/io/File;
    .restart local v6    # "bufferSize":I
    .restart local v12    # "foutput":Ljava/io/FileOutputStream;
    .restart local v29    # "output":Ljava/io/OutputStream;
    .restart local v34    # "temp":Ljava/io/File;
    :catchall_3
    move-exception v38

    move-object/from16 v28, v29

    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v28    # "output":Ljava/io/OutputStream;
    move-object/from16 v33, v34

    .end local v34    # "temp":Ljava/io/File;
    .restart local v33    # "temp":Ljava/io/File;
    goto :goto_8

    .line 431
    .end local v28    # "output":Ljava/io/OutputStream;
    .end local v33    # "temp":Ljava/io/File;
    .restart local v29    # "output":Ljava/io/OutputStream;
    .restart local v34    # "temp":Ljava/io/File;
    :catch_2
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    move-object/from16 v28, v29

    .end local v29    # "output":Ljava/io/OutputStream;
    .restart local v28    # "output":Ljava/io/OutputStream;
    move-object/from16 v33, v34

    .end local v34    # "temp":Ljava/io/File;
    .restart local v33    # "temp":Ljava/io/File;
    goto/16 :goto_0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 33
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 487
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "DropBoxManagerService"

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    .line 490
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :try_start_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v27, "out":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "doPrint":Z
    const/4 v14, 0x0

    .line 501
    .local v14, "doFile":Z
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v28, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    if-eqz p3, :cond_8

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_8

    .line 503
    aget-object v3, p3, v19

    const-string/jumbo v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p3, v19

    const-string/jumbo v4, "--print"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    :cond_1
    const/4 v15, 0x1

    .line 502
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 491
    .end local v14    # "doFile":Z
    .end local v15    # "doPrint":Z
    .end local v19    # "i":I
    .end local v27    # "out":Ljava/lang/StringBuilder;
    .end local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 492
    .local v16, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    const-string/jumbo v3, "DropBoxManagerService"

    const-string/jumbo v4, "Can\'t init"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 494
    return-void

    .line 505
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v14    # "doFile":Z
    .restart local v15    # "doPrint":Z
    .restart local v19    # "i":I
    .restart local v27    # "out":Ljava/lang/StringBuilder;
    .restart local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    aget-object v3, p3, v19

    const-string/jumbo v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p3, v19

    const-string/jumbo v4, "--file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 506
    :cond_3
    const/4 v14, 0x1

    goto :goto_1

    .line 507
    :cond_4
    aget-object v3, p3, v19

    const-string/jumbo v4, "-h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v3, p3, v19

    const-string/jumbo v4, "--help"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 508
    :cond_5
    const-string/jumbo v3, "Dropbox (dropbox) dump options:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    const-string/jumbo v3, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    const-string/jumbo v3, "    -h|--help: print this help"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    const-string/jumbo v3, "    -p|--print: print full contents of each entry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    const-string/jumbo v3, "    -f|--file: print path of each entry\'s file"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    const-string/jumbo v3, "  [timestamp] optionally filters to only those entries."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 514
    return-void

    .line 515
    :cond_6
    :try_start_4
    aget-object v3, p3, v19

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 516
    const-string/jumbo v3, "Unknown argument: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .end local v14    # "doFile":Z
    .end local v15    # "doPrint":Z
    .end local v19    # "i":I
    .end local v27    # "out":Ljava/lang/StringBuilder;
    .end local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 518
    .restart local v14    # "doFile":Z
    .restart local v15    # "doPrint":Z
    .restart local v19    # "i":I
    .restart local v27    # "out":Ljava/lang/StringBuilder;
    .restart local v28    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    :try_start_5
    aget-object v3, p3, v19

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 522
    :cond_8
    const-string/jumbo v3, "Drop box contents: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " entries\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string/jumbo v3, "Max entries: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 526
    const-string/jumbo v3, "Searching for:"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "a$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "a":Ljava/lang/String;
    const-string/jumbo v3, " "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 528
    .end local v8    # "a":Ljava/lang/String;
    :cond_9
    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .end local v9    # "a$iterator":Ljava/util/Iterator;
    :cond_a
    const/16 v26, 0x0

    .local v26, "numFound":I
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 532
    .local v25, "numArgs":I
    new-instance v30, Landroid/text/format/Time;

    invoke-direct/range {v30 .. v30}, Landroid/text/format/Time;-><init>()V

    .line 533
    .local v30, "time":Landroid/text/format/Time;
    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "entry$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 535
    .local v17, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 536
    const-string/jumbo v3, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 537
    .local v12, "date":Ljava/lang/String;
    const/16 v22, 0x1

    .line 538
    .local v22, "match":Z
    const/16 v19, 0x0

    .end local v22    # "match":Z
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    if-eqz v22, :cond_d

    .line 539
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 540
    .local v10, "arg":Ljava/lang/String;
    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 538
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 540
    :cond_c
    const/16 v22, 0x1

    .restart local v22    # "match":Z
    goto :goto_5

    .line 542
    .end local v10    # "arg":Ljava/lang/String;
    .end local v22    # "match":Z
    :cond_d
    if-eqz v22, :cond_b

    .line 544
    add-int/lit8 v26, v26, 0x1

    .line 545
    if-eqz v15, :cond_e

    const-string/jumbo v3, "========================================\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_e
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v3, :cond_f

    const-string/jumbo v3, "(no tag)"

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 549
    .local v6, "file":Ljava/io/File;
    if-nez v6, :cond_10

    .line 550
    const-string/jumbo v3, " (no file)\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 546
    .end local v6    # "file":Ljava/io/File;
    :cond_f
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    goto :goto_6

    .line 552
    .restart local v6    # "file":Ljava/io/File;
    :cond_10
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_11

    .line 553
    const-string/jumbo v3, " (contents lost)\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 556
    :cond_11
    const-string/jumbo v3, " ("

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_12

    const-string/jumbo v3, "compressed "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_12
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1a

    const-string/jumbo v3, "text"

    :goto_7
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string/jumbo v3, ", "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    if-nez v14, :cond_13

    if-eqz v15, :cond_15

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_15

    .line 563
    :cond_13
    if-nez v15, :cond_14

    const-string/jumbo v3, "    "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_14
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_15
    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_19

    if-nez v15, :cond_16

    xor-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_19

    .line 568
    :cond_16
    const/4 v13, 0x0

    .line 569
    .local v13, "dbe":Landroid/os/DropBoxManager$Entry;
    const/16 v20, 0x0

    .line 571
    .local v20, "isr":Ljava/io/InputStreamReader;
    :try_start_6
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    .line 572
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 571
    invoke-direct/range {v2 .. v7}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 574
    .end local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v2, "dbe":Landroid/os/DropBoxManager$Entry;
    if-eqz v15, :cond_1e

    .line 575
    :try_start_7
    new-instance v21, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 576
    .local v21, "isr":Ljava/io/InputStreamReader;
    const/16 v3, 0x1000

    :try_start_8
    new-array v11, v3, [C

    .line 577
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .local v11, "buf":[C
    const/16 v24, 0x0

    .line 579
    .local v24, "newline":Z
    :cond_17
    :goto_8
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/InputStreamReader;->read([C)I

    move-result v23

    .line 580
    .local v23, "n":I
    if-gtz v23, :cond_1b

    .line 590
    if-nez v24, :cond_29

    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v20, v21

    .line 607
    .end local v11    # "buf":[C
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .end local v23    # "n":I
    .end local v24    # "newline":Z
    :goto_9
    if-eqz v2, :cond_18

    :try_start_9
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 608
    :cond_18
    if-eqz v20, :cond_19

    .line 610
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 617
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    :cond_19
    :goto_a
    if-eqz v15, :cond_b

    :try_start_b
    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 558
    :cond_1a
    const-string/jumbo v3, "data"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_7

    .line 581
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v11    # "buf":[C
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "n":I
    .restart local v24    # "newline":Z
    :cond_1b
    const/4 v3, 0x0

    :try_start_c
    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v11, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 582
    add-int/lit8 v3, v23, -0x1

    aget-char v3, v11, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1d

    const/16 v24, 0x1

    .line 585
    :goto_b
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_17

    .line 586
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 587
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_8

    .line 603
    .end local v11    # "buf":[C
    .end local v23    # "n":I
    .end local v24    # "newline":Z
    :catch_1
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    move-object/from16 v20, v21

    .line 604
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    :goto_c
    :try_start_d
    const-string/jumbo v3, "*** "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string/jumbo v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 607
    if-eqz v2, :cond_1c

    :try_start_e
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 608
    :cond_1c
    if-eqz v20, :cond_19

    .line 610
    :try_start_f
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_a

    .line 611
    :catch_2
    move-exception v32

    .local v32, "unused":Ljava/io/IOException;
    goto :goto_a

    .line 582
    .end local v16    # "e":Ljava/io/IOException;
    .end local v32    # "unused":Ljava/io/IOException;
    .restart local v11    # "buf":[C
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "n":I
    .restart local v24    # "newline":Z
    :cond_1d
    const/16 v24, 0x0

    goto :goto_b

    .line 592
    .end local v11    # "buf":[C
    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .end local v23    # "n":I
    .end local v24    # "newline":Z
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    :cond_1e
    const/16 v3, 0x46

    :try_start_10
    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v29

    .line 593
    .local v29, "text":Ljava/lang/String;
    const-string/jumbo v3, "    "

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    if-nez v29, :cond_20

    .line 595
    const-string/jumbo v3, "[null]"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_1f
    :goto_d
    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 603
    .end local v29    # "text":Ljava/lang/String;
    :catch_3
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 597
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v29    # "text":Ljava/lang/String;
    :cond_20
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_23

    const/16 v31, 0x1

    .line 598
    .local v31, "truncated":Z
    :goto_e
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    if-eqz v31, :cond_1f

    const-string/jumbo v3, " ..."

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_d

    .line 606
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "text":Ljava/lang/String;
    .end local v31    # "truncated":Z
    :catchall_1
    move-exception v3

    .line 607
    :goto_f
    if-eqz v2, :cond_21

    :try_start_11
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 608
    :cond_21
    if-eqz v20, :cond_22

    .line 610
    :try_start_12
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 606
    :cond_22
    :goto_10
    :try_start_13
    throw v3

    .line 597
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v29    # "text":Ljava/lang/String;
    :cond_23
    const/16 v31, 0x0

    .restart local v31    # "truncated":Z
    goto :goto_e

    .line 611
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v29    # "text":Ljava/lang/String;
    .end local v31    # "truncated":Z
    :catch_4
    move-exception v32

    .restart local v32    # "unused":Ljava/io/IOException;
    goto/16 :goto_a

    .end local v32    # "unused":Ljava/io/IOException;
    :catch_5
    move-exception v32

    .restart local v32    # "unused":Ljava/io/IOException;
    goto :goto_10

    .line 620
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v6    # "file":Ljava/io/File;
    .end local v12    # "date":Ljava/lang/String;
    .end local v17    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v32    # "unused":Ljava/io/IOException;
    :cond_24
    if-nez v26, :cond_25

    const-string/jumbo v3, "(No entries found.)\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_25
    if-eqz p3, :cond_26

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_28

    .line 623
    :cond_26
    if-nez v15, :cond_27

    const-string/jumbo v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_27
    const-string/jumbo v3, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_28
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    monitor-exit p0

    .line 629
    return-void

    .line 606
    .restart local v6    # "file":Ljava/io/File;
    .restart local v12    # "date":Ljava/lang/String;
    .restart local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v17    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v3

    move-object v2, v13

    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto :goto_f

    .end local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v3

    move-object/from16 v20, v21

    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .local v20, "isr":Ljava/io/InputStreamReader;
    goto :goto_f

    .line 603
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v20, "isr":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v16

    .restart local v16    # "e":Ljava/io/IOException;
    move-object v2, v13

    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto/16 :goto_c

    .end local v13    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "buf":[C
    .restart local v21    # "isr":Ljava/io/InputStreamReader;
    .restart local v23    # "n":I
    .restart local v24    # "newline":Z
    :cond_29
    move-object/from16 v20, v21

    .end local v21    # "isr":Ljava/io/InputStreamReader;
    .local v20, "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_9
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .prologue
    const/4 v10, 0x0

    monitor-enter p0

    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 459
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    if-nez p1, :cond_1

    :try_start_2
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    .local v9, "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_0
    if-nez v9, :cond_2

    monitor-exit p0

    return-object v10

    .line 460
    .end local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :catch_0
    move-exception v6

    .line 461
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v0, "DropBoxManagerService"

    const-string/jumbo v1, "Can\'t init"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 462
    return-object v10

    .line 465
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/DropBoxManagerService$FileList;

    .restart local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 469
    .local v7, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 470
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 471
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 473
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 475
    .local v4, "file":Ljava/io/File;
    :try_start_6
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    .line 476
    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v5, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 475
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    .line 477
    :catch_1
    move-exception v6

    .line 478
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v0, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_5
    monitor-exit p0

    .line 483
    return-object v10
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 445
    .local v0, "token":J
    :try_start_0
    const-string/jumbo v2, "disabled"

    .line 446
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 448
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 445
    return v2

    .line 447
    :catchall_0
    move-exception v2

    .line 448
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    throw v2
.end method

.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    .prologue
    const/4 v5, 0x1

    .line 241
    sparse-switch p1, :sswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 243
    :sswitch_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 248
    sget-object v2, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 249
    new-instance v3, Lcom/android/server/DropBoxManagerService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/DropBoxManagerService$4;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    .line 247
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 258
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :sswitch_1
    iput-boolean v5, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_0

    .line 241
    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 234
    const-string/jumbo v0, "dropbox"

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 237
    return-void
.end method
