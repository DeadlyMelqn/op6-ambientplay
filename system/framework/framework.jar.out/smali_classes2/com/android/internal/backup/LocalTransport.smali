.class public Lcom/android/internal/backup/LocalTransport;
.super Landroid/app/backup/BackupTransport;
.source "LocalTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/LocalTransport$DecodedFilename;,
        Lcom/android/internal/backup/LocalTransport$KVOperation;
    }
.end annotation


# static fields
.field private static final CURRENT_SET_TOKEN:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final FULL_BACKUP_SIZE_QUOTA:J = 0x1900000L

.field private static final FULL_DATA_DIR:Ljava/lang/String; = "_full"

.field private static final INCREMENTAL_DIR:Ljava/lang/String; = "_delta"

.field private static final KEY_VALUE_BACKUP_SIZE_QUOTA:J = 0x500000L

.field static final POSSIBLE_SETS:[J

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DATA_MANAGEMENT_LABEL:Ljava/lang/String; = ""

.field private static final TRANSPORT_DESTINATION_STRING:Ljava/lang/String; = "Backing up to debug-only private cache"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurFullRestoreStream:Ljava/io/FileInputStream;

.field private mCurrentSetDir:Ljava/io/File;

.field private mCurrentSetFullDir:Ljava/io/File;

.field private mCurrentSetIncrementalDir:Ljava/io/File;

.field private mDataDir:Ljava/io/File;

.field private mFullBackupBuffer:[B

.field private mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

.field private mFullBackupSize:J

.field private mFullRestoreBuffer:[B

.field private mFullRestoreSocketStream:Ljava/io/FileOutputStream;

.field private mFullTargetPackage:Ljava/lang/String;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;

.field private mRestoreSetDir:Ljava/io/File;

.field private mRestoreSetFullDir:Ljava/io/File;

.field private mRestoreSetIncrementalDir:Ljava/io/File;

.field private mRestoreType:I

.field private mSocket:Landroid/os/ParcelFileDescriptor;

.field private mSocketInputStream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 510
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    .line 54
    return-void

    .line 510
    :array_0
    .array-data 8
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/app/backup/BackupTransport;-><init>()V

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string/jumbo v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string/jumbo v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 109
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    .line 111
    return-void
.end method

.method private contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 668
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 669
    .local v0, "allFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-nez v4, :cond_1

    .line 670
    :cond_0
    return-object v5

    .line 674
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v1, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 676
    .local v2, "f":Ljava/io/File;
    new-instance v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    invoke-direct {v5, v2}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 678
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 679
    return-object v1
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 5
    .param p1, "dirname"    # Ljava/io/File;

    .prologue
    .line 321
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 322
    .local v0, "contents":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 323
    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 324
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    invoke-direct {p0, v1}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 329
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private makeDataDirs()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 104
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 105
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 106
    return-void
.end method

.method private parseBackupStream(Landroid/os/ParcelFileDescriptor;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/backup/LocalTransport$KVOperation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v2, "changeOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$KVOperation;>;"
    new-instance v3, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 271
    .local v3, "changeSet":Landroid/app/backup/BackupDataInput;
    :goto_0
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 272
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, "key":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 274
    .local v0, "base64Key":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 280
    .local v4, "dataSize":I
    if-ltz v4, :cond_1

    new-array v1, v4, [B

    .line 281
    :goto_1
    if-ltz v4, :cond_0

    .line 282
    invoke-virtual {v3, v1, v7, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 284
    :cond_0
    new-instance v6, Lcom/android/internal/backup/LocalTransport$KVOperation;

    invoke-direct {v6, p0, v0, v1}, Lcom/android/internal/backup/LocalTransport$KVOperation;-><init>(Lcom/android/internal/backup/LocalTransport;Ljava/lang/String;[B)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_1
    const/4 v1, 0x0

    .local v1, "buf":[B
    goto :goto_1

    .line 286
    .end local v0    # "base64Key":Ljava/lang/String;
    .end local v1    # "buf":[B
    .end local v4    # "dataSize":I
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private parseKeySizes(Ljava/io/File;Landroid/util/ArrayMap;)I
    .locals 10
    .param p1, "packageDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, "datastore":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 293
    .local v5, "totalSize":I
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "elements":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 298
    const/4 v6, 0x0

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v1, v6

    .line 299
    .local v2, "file":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    .local v0, "element":Ljava/io/File;
    move-object v3, v2

    .line 301
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v4, v8

    .line 302
    .local v4, "size":I
    add-int/2addr v5, v4

    .line 306
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "element":Ljava/io/File;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "size":I
    :cond_0
    return v5
.end method

.method private resetFullRestoreState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 695
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 696
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    .line 697
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    .line 698
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    .line 699
    return-void
.end method

.method private tarballFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 392
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private tearDownFullBackup()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 373
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 375
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 385
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 388
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 378
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, -0x3e8

    .line 384
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 385
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 382
    return v1

    .line 383
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 384
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 385
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 383
    throw v1
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 790
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 791
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "abortFullRestore() but not currently restoring"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    .line 794
    iput v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 795
    return v2
.end method

.method public cancelFullBackup()V
    .locals 2

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 502
    .local v0, "archive":Ljava/io/File;
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    .line 503
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 506
    :cond_0
    return-void
.end method

.method public checkFullBackupSize(J)I
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 404
    .local v0, "result":I
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 405
    const/16 v0, -0x3ea

    .line 414
    :cond_0
    :goto_0
    return v0

    .line 406
    :cond_1
    const-wide/32 v2, 0x1900000

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 407
    const/16 v0, -0x3ed

    goto :goto_0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v5, 0x0

    .line 338
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v2, "packageDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 340
    .local v1, "fileset":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 341
    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v1, v4

    .line 342
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 341
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 347
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "packageDir":Ljava/io/File;
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    .restart local v2    # "packageDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 349
    .local v3, "tarballs":[Ljava/io/File;
    if-eqz v3, :cond_3

    .line 350
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v3, v4

    .line 351
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 353
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 356
    :cond_3
    return v5
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string/jumbo v0, "Backing up to debug-only private cache"

    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public finishBackup()I
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    move-result v0

    return v0
.end method

.method public finishRestore()V
    .locals 2

    .prologue
    .line 685
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 686
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    .line 688
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 689
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 13

    .prologue
    .line 514
    sget-object v5, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [J

    .line 515
    .local v1, "existing":[J
    const/4 v3, 0x0

    .line 518
    .local v3, "num":I
    sget-object v8, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    const/4 v5, 0x0

    array-length v9, v8

    move v4, v3

    .end local v3    # "num":I
    .local v4, "num":I
    :goto_0
    if-ge v5, v9, :cond_0

    aget-wide v6, v8, v5

    .line 519
    .local v6, "token":J
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 520
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "num":I
    .restart local v3    # "num":I
    aput-wide v6, v1, v4

    .line 518
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "num":I
    .restart local v4    # "num":I
    goto :goto_0

    .line 524
    .end local v6    # "token":J
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "num":I
    .restart local v3    # "num":I
    const-wide/16 v8, 0x1

    aput-wide v8, v1, v4

    .line 526
    new-array v0, v3, [Landroid/app/backup/RestoreSet;

    .line 527
    .local v0, "available":[Landroid/app/backup/RestoreSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 528
    new-instance v5, Landroid/app/backup/RestoreSet;

    const-string/jumbo v8, "Local disk image"

    const-string/jumbo v9, "flash"

    aget-wide v10, v1, v2

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v5, v0, v2

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 530
    :cond_1
    return-object v0

    .end local v0    # "available":[Landroid/app/backup/RestoreSet;
    .end local v2    # "i":I
    .end local v3    # "num":I
    .restart local v4    # "num":I
    .restart local v6    # "token":J
    :cond_2
    move v3, v4

    .end local v4    # "num":I
    .restart local v3    # "num":I
    goto :goto_1
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isFullBackup"    # Z

    .prologue
    .line 800
    if-eqz p2, :cond_0

    const-wide/32 v0, 0x1900000

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x500000

    goto :goto_0
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    .prologue
    .line 536
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 7
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 725
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 726
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Asked for full restore data for non-stream package"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    :cond_0
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    if-nez v4, :cond_1

    .line 731
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v4, v4, v5

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 733
    .local v3, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 735
    .local v0, "dataset":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    .line 743
    const/16 v4, 0x800

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    .line 748
    .end local v0    # "dataset":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 749
    .local v2, "nRead":I
    if-gez v2, :cond_2

    .line 751
    const/4 v2, -0x1

    .line 772
    :goto_0
    return v2

    .line 736
    .end local v2    # "nRead":I
    .restart local v0    # "dataset":Ljava/io/File;
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 739
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "LocalTransport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to read archive for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/16 v4, -0x3ea

    return v4

    .line 752
    .end local v0    # "dataset":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "name":Ljava/lang/String;
    .restart local v2    # "nRead":I
    :cond_2
    if-nez v2, :cond_3

    .line 756
    :try_start_2
    const-string/jumbo v4, "LocalTransport"

    const-string/jumbo v5, "read() of archive file returned 0; treating as EOF"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v2, -0x1

    goto :goto_0

    .line 762
    :cond_3
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 764
    .end local v2    # "nRead":I
    :catch_1
    move-exception v1

    .line 765
    .restart local v1    # "e":Ljava/io/IOException;
    const/16 v4, -0x3e8

    return v4

    .line 766
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 605
    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "startRestore not called"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 606
    :cond_0
    iget v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    if-gez v10, :cond_1

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "nextRestorePackage not called"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 607
    :cond_1
    iget v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 608
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "getRestoreData(fd) for non-key/value dataset"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 610
    :cond_2
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    .line 611
    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 610
    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 618
    .local v8, "packageDir":Ljava/io/File;
    invoke-direct {p0, v8}, Lcom/android/internal/backup/LocalTransport;->contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 619
    .local v0, "blobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    if-nez v0, :cond_3

    .line 620
    const-string/jumbo v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No keys for package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/16 v10, -0x3e8

    return v10

    .line 626
    :cond_3
    new-instance v7, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 628
    .local v7, "out":Landroid/app/backup/BackupDataOutput;
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "keyEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    .line 629
    .local v5, "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    iget-object v3, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    .line 630
    .local v3, "f":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    .line 633
    .local v9, "size":I
    new-array v1, v9, [B

    .line 634
    .local v1, "buf":[B
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 636
    iget-object v10, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 637
    invoke-virtual {v7, v1, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 643
    .end local v1    # "buf":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .end local v6    # "keyEntry$iterator":Ljava/util/Iterator;
    .end local v9    # "size":I
    :catch_0
    move-exception v2

    .line 644
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v10, "LocalTransport"

    const-string/jumbo v11, "Unable to read backup records"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    const/16 v10, -0x3e8

    return v10

    .line 638
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .restart local v6    # "keyEntry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    .line 639
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 638
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 642
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    :cond_4
    const/4 v10, 0x0

    return v10
.end method

.method public initializeDevice()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 155
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransport;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 557
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "startRestore not called"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 559
    :cond_0
    const/4 v1, 0x0

    .line 560
    .local v1, "found":Z
    :cond_1
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 561
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v4, v4, v5

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 565
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "contents":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 571
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 572
    const/4 v1, 0x1

    .line 575
    :cond_2
    if-nez v1, :cond_3

    .line 577
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 578
    .local v2, "maybeFullData":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 583
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 584
    iput-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    .line 585
    const/4 v1, 0x1

    .line 589
    .end local v2    # "maybeFullData":Ljava/io/File;
    :cond_3
    if-eqz v1, :cond_1

    .line 590
    new-instance v4, Landroid/app/backup/RestoreDescription;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    invoke-direct {v4, v3, v5}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    return-object v4

    .line 600
    .end local v0    # "contents":[Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    sget-object v4, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    return-object v4
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 19
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 183
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v11, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v11, "packageDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 192
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/backup/LocalTransport;->parseBackupStream(Landroid/os/ParcelFileDescriptor;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 202
    .local v2, "changeOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$KVOperation;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 203
    .local v4, "datastore":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/android/internal/backup/LocalTransport;->parseKeySizes(Ljava/io/File;Landroid/util/ArrayMap;)I

    move-result v12

    .line 214
    .local v12, "totalSize":I
    move v13, v12

    .line 215
    .local v13, "updatedSize":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "op$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/backup/LocalTransport$KVOperation;

    .line 217
    .local v7, "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->key:Ljava/lang/String;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 218
    .local v3, "curSize":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 219
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v13, v14

    .line 226
    :cond_1
    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    if-eqz v14, :cond_0

    .line 227
    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    array-length v14, v14

    add-int/2addr v13, v14

    goto :goto_0

    .line 193
    .end local v2    # "changeOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$KVOperation;>;"
    .end local v3    # "curSize":Ljava/lang/Integer;
    .end local v4    # "datastore":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    .end local v8    # "op$iterator":Ljava/util/Iterator;
    .end local v12    # "totalSize":I
    .end local v13    # "updatedSize":I
    :catch_0
    move-exception v5

    .line 195
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v14, "LocalTransport"

    const-string/jumbo v15, "Exception reading backup input"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/16 v14, -0x3e8

    return v14

    .line 236
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "changeOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$KVOperation;>;"
    .restart local v4    # "datastore":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8    # "op$iterator":Ljava/util/Iterator;
    .restart local v12    # "totalSize":I
    .restart local v13    # "updatedSize":I
    :cond_2
    int-to-long v14, v13

    const-wide/32 v16, 0x500000

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 241
    const/16 v14, -0x3ed

    return v14

    .line 246
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/backup/LocalTransport$KVOperation;

    .line 247
    .restart local v7    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    new-instance v6, Ljava/io/File;

    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->key:Ljava/lang/String;

    invoke-direct {v6, v11, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v6, "element":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 254
    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    if-eqz v14, :cond_4

    .line 255
    const/4 v15, 0x0

    const/4 v9, 0x0

    .local v9, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v10, "out":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    iget-object v0, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v14, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 260
    if-eqz v10, :cond_5

    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_1
    if-eqz v15, :cond_4

    :try_start_4
    throw v15
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 257
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v9, v10

    .line 258
    .end local v10    # "out":Ljava/io/FileOutputStream;
    :goto_2
    const-string/jumbo v14, "LocalTransport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to update key file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 v14, -0x3e8

    return v14

    .line 260
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v15

    goto :goto_1

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v14

    .end local v9    # "out":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v15

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v14, v18

    :goto_4
    if-eqz v9, :cond_6

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_5
    if-eqz v15, :cond_8

    :try_start_7
    throw v15

    .line 257
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 260
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v16

    if-nez v15, :cond_7

    move-object/from16 v15, v16

    goto :goto_5

    :cond_7
    move-object/from16 v0, v16

    if-eq v15, v0, :cond_6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    throw v14
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 263
    .end local v6    # "element":Ljava/io/File;
    .end local v7    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    :cond_9
    const/4 v14, 0x0

    return v14

    .line 260
    .restart local v6    # "element":Ljava/io/File;
    .restart local v7    # "op":Lcom/android/internal/backup/LocalTransport$KVOperation;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    goto :goto_4

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v14

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .local v9, "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v14

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 5
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/16 v4, -0x3e8

    .line 419
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 420
    const-string/jumbo v1, "LocalTransport"

    const-string/jumbo v2, "Attempt to initiate full backup while one is in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v4

    .line 432
    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    .line 433
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 434
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    .line 441
    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    .line 443
    const/4 v1, 0x0

    return v1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "LocalTransport"

    const-string/jumbo v2, "Unable to process socket for full backup"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v4
.end method

.method public requestBackupTime()J
    .locals 2

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2

    .prologue
    .line 397
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 12
    .param p1, "numBytes"    # I

    .prologue
    const/16 v11, -0x3e8

    const/4 v10, 0x0

    .line 448
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-nez v6, :cond_0

    .line 449
    const-string/jumbo v6, "LocalTransport"

    const-string/jumbo v7, "Attempted sendBackupData before performFullBackup"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return v11

    .line 453
    :cond_0
    iget-wide v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    int-to-long v8, p1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    .line 454
    iget-wide v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    const-wide/32 v8, 0x1900000

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 455
    const/16 v6, -0x3ed

    return v6

    .line 458
    :cond_1
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    array-length v6, v6

    if-le p1, v6, :cond_2

    .line 459
    new-array v6, p1, [B

    iput-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    .line 462
    :cond_2
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v6, :cond_3

    .line 465
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 466
    .local v4, "tarball":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .local v5, "tarstream":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 473
    .end local v4    # "tarball":Ljava/io/File;
    .end local v5    # "tarstream":Ljava/io/FileOutputStream;
    :cond_3
    move v0, p1

    .line 474
    .local v0, "bytesLeft":I
    :goto_0
    if-lez v0, :cond_5

    .line 476
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 477
    .local v3, "nRead":I
    if-gez v3, :cond_4

    .line 479
    const-string/jumbo v6, "LocalTransport"

    const-string/jumbo v7, "Unexpected EOD; failing backup"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v11

    .line 467
    .end local v0    # "bytesLeft":I
    .end local v3    # "nRead":I
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/io/FileNotFoundException;
    return v11

    .line 482
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "bytesLeft":I
    .restart local v3    # "nRead":I
    :cond_4
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 483
    sub-int/2addr v0, v3

    goto :goto_0

    .line 484
    .end local v3    # "nRead":I
    :catch_1
    move-exception v2

    .line 485
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error handling backup data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return v11

    .line 492
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    return v10
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 3
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;

    .prologue
    .line 543
    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 544
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 545
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    .line 546
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string/jumbo v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    .line 547
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string/jumbo v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string/jumbo v0, "com.android.internal.backup.LocalTransport"

    return-object v0
.end method
