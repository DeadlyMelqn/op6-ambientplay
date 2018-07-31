.class public Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "TarBackupReader.java"


# static fields
.field private static final TAR_HEADER_LENGTH_FILESIZE:I = 0xc

.field private static final TAR_HEADER_LENGTH_MODE:I = 0x8

.field private static final TAR_HEADER_LENGTH_MODTIME:I = 0xc

.field private static final TAR_HEADER_LENGTH_PATH:I = 0x64

.field private static final TAR_HEADER_LENGTH_PATH_PREFIX:I = 0x9b

.field private static final TAR_HEADER_LONG_RADIX:I = 0x8

.field private static final TAR_HEADER_OFFSET_FILESIZE:I = 0x7c

.field private static final TAR_HEADER_OFFSET_MODE:I = 0x64

.field private static final TAR_HEADER_OFFSET_MODTIME:I = 0x88

.field private static final TAR_HEADER_OFFSET_PATH:I = 0x0

.field private static final TAR_HEADER_OFFSET_PATH_PREFIX:I = 0x159

.field private static final TAR_HEADER_OFFSET_TYPE_CHAR:I = 0x9c


# instance fields
.field private final mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

.field private final mInputStream:Ljava/io/InputStream;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 93
    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    .line 94
    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    .line 95
    iput-object p3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 96
    return-void
.end method

.method private static extractLine([BI[Ljava/lang/String;)I
    .locals 5
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    array-length v1, p0

    .line 653
    .local v1, "end":I
    if-lt p1, v1, :cond_0

    .line 654
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 658
    :cond_0
    move v2, p1

    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 659
    aget-byte v0, p0, v2

    .line 662
    .local v0, "c":B
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 666
    .end local v0    # "c":B
    :cond_1
    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, p1

    invoke-direct {v3, p0, p1, v4}, Ljava/lang/String;-><init>([BII)V

    const/4 v4, 0x0

    aput-object v3, p2, v4

    .line 667
    add-int/lit8 v2, v2, 0x1

    .line 668
    return v2

    .line 658
    .restart local v0    # "c":B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static extractRadix([BIII)J
    .locals 11
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxChars"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    .line 747
    const-wide/16 v4, 0x0

    .line 748
    .local v4, "value":J
    add-int v1, p1, p2

    .line 749
    .local v1, "end":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 750
    aget-byte v0, p0, v2

    .line 752
    .local v0, "b":B
    if-eqz v0, :cond_0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 761
    .end local v0    # "b":B
    :cond_0
    return-wide v4

    .line 755
    .restart local v0    # "b":B
    :cond_1
    if-lt v0, v10, :cond_2

    add-int/lit8 v3, p3, 0x30

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_3

    .line 756
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 757
    const-string/jumbo v7, "\' for radix "

    .line 756
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 759
    :cond_3
    int-to-long v6, p3

    mul-long/2addr v6, v4

    add-int/lit8 v3, v0, -0x30

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 749
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static extractString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    add-int v0, p1, p2

    .line 766
    .local v0, "end":I
    move v1, p1

    .line 768
    .local v1, "eos":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    if-eqz v2, :cond_0

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p1

    const-string/jumbo v4, "US-ASCII"

    invoke-direct {v2, p0, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method private static hexLog([B)V
    .locals 10
    .param p0, "block"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 775
    const/4 v3, 0x0

    .line 776
    .local v3, "offset":I
    array-length v4, p0

    .line 777
    .local v4, "todo":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 778
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez v4, :cond_2

    .line 779
    const-string/jumbo v5, "%04x   "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const/16 v5, 0x10

    if-le v4, v5, :cond_0

    const/16 v2, 0x10

    .line 781
    .local v2, "numThisLine":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 782
    const-string/jumbo v5, "%02x "

    new-array v6, v9, [Ljava/lang/Object;

    add-int v7, v3, v1

    aget-byte v7, p0, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 780
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_0
    move v2, v4

    .restart local v2    # "numThisLine":I
    goto :goto_1

    .line 784
    .restart local v1    # "i":I
    :cond_1
    const-string/jumbo v5, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 786
    sub-int/2addr v4, v2

    .line 787
    add-int/2addr v3, v2

    goto :goto_0

    .line 789
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_2
    return-void
.end method

.method private static readExactly(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    if-gtz p3, :cond_0

    .line 244
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_0
    const/4 v1, 0x0

    .line 250
    .local v1, "soFar":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 251
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 252
    .local v0, "nRead":I
    if-gtz v0, :cond_2

    .line 263
    .end local v0    # "nRead":I
    :cond_1
    return v1

    .line 258
    .restart local v0    # "nRead":I
    :cond_2
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method private readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z
    .locals 14
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v12, 0x8000

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 688
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Suspiciously large pax header size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " - aborting"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Sanity failure: pax header size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 693
    :cond_0
    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v12, 0x1ff

    add-long/2addr v10, v12

    const/16 v12, 0x9

    shr-long/2addr v10, v12

    long-to-int v6, v10

    .line 694
    .local v6, "numBlocks":I
    mul-int/lit16 v10, v6, 0x200

    new-array v1, v10, [B

    .line 695
    .local v1, "data":[B
    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    array-length v11, v1

    const/4 v12, 0x0

    invoke-static {v10, v1, v12, v11}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v10

    array-length v11, v1

    if-ge v10, v11, :cond_1

    .line 696
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Unable to read full pax header"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 698
    :cond_1
    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    array-length v11, v1

    int-to-long v12, v11

    invoke-interface {v10, v12, v13}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 700
    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v10

    .line 701
    .local v0, "contentSize":I
    const/4 v7, 0x0

    .line 704
    .local v7, "offset":I
    :cond_2
    add-int/lit8 v2, v7, 0x1

    .line 705
    .local v2, "eol":I
    :goto_0
    if-ge v2, v0, :cond_3

    aget-byte v10, v1, v2

    const/16 v11, 0x20

    if-eq v10, v11, :cond_3

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 708
    :cond_3
    if-lt v2, v0, :cond_4

    .line 710
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Invalid pax data"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 713
    :cond_4
    sub-int v10, v2, v7

    const/16 v11, 0xa

    invoke-static {v1, v7, v10, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v10

    long-to-int v5, v10

    .line 714
    .local v5, "linelen":I
    add-int/lit8 v3, v2, 0x1

    .line 715
    .local v3, "key":I
    add-int v10, v7, v5

    add-int/lit8 v2, v10, -0x1

    .line 717
    add-int/lit8 v9, v3, 0x1

    .local v9, "value":I
    :goto_1
    aget-byte v10, v1, v9

    const/16 v11, 0x3d

    if-eq v10, v11, :cond_5

    if-gt v9, v2, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 720
    :cond_5
    if-le v9, v2, :cond_6

    .line 721
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Invalid pax declaration"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 725
    :cond_6
    new-instance v4, Ljava/lang/String;

    sub-int v10, v9, v3

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v4, v1, v3, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 727
    .local v4, "keyStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v10, v9, 0x1

    sub-int v11, v2, v9

    add-int/lit8 v11, v11, -0x1

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v8, v1, v10, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 729
    .local v8, "valStr":Ljava/lang/String;
    const-string/jumbo v10, "path"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 730
    iput-object v8, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 739
    :goto_2
    add-int/2addr v7, v5

    .line 740
    if-lt v7, v0, :cond_2

    .line 742
    const/4 v10, 0x1

    return v10

    .line 731
    :cond_7
    const-string/jumbo v10, "size"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 732
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_2

    .line 735
    :cond_8
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unhandled pax key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private readTarHeader([B)Z
    .locals 4
    .param p1, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x200

    const/4 v2, 0x0

    .line 672
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 673
    .local v0, "got":I
    if-nez v0, :cond_0

    .line 674
    return v2

    .line 676
    :cond_0
    if-ge v0, v3, :cond_1

    .line 677
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    const-wide/16 v2, 0x200

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 680
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;)Lcom/android/server/backup/restore/RestorePolicy;
    .locals 10
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "allowApks"    # Z
    .param p3, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p4, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 389
    if-nez p4, :cond_0

    .line 390
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    return-object v5

    .line 393
    :cond_0
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 398
    .local v4, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :try_start_0
    iget-object v5, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/16 v6, 0x40

    .line 397
    invoke-virtual {p1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 400
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 401
    .local v1, "flags":I
    const v5, 0x8000

    and-int/2addr v5, v1

    if-eqz v5, :cond_8

    .line 404
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 405
    const/16 v6, 0x2710

    .line 404
    if-ge v5, v6, :cond_1

    .line 406
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 414
    :cond_1
    invoke-static {p4, v3}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 415
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 416
    const/high16 v6, 0x20000

    .line 415
    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 417
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Package has restoreAnyVersion; taking data"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 420
    const/16 v6, 0x22

    .line 422
    const/4 v7, 0x3

    .line 423
    const/4 v8, 0x0

    .line 418
    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 424
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v1    # "flags":I
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v4, v5, :cond_2

    iget-boolean v5, p3, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 523
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot restore package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 524
    const-string/jumbo v7, " without the matching .apk"

    .line 523
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 531
    const-string/jumbo v6, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 530
    const/4 v8, 0x0

    invoke-static {v8, v6, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 527
    const/16 v7, 0x29

    .line 528
    const/4 v8, 0x0

    .line 529
    const/4 v9, 0x3

    .line 525
    invoke-static {v5, v7, v8, v9, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 534
    :cond_2
    return-object v4

    .line 425
    .restart local v1    # "flags":I
    .restart local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v6, p3, Lcom/android/server/backup/FileMetadata;->version:I

    if-lt v5, v6, :cond_4

    .line 426
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Sig + version match; taking data"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 429
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 430
    const/16 v6, 0x23

    .line 432
    const/4 v7, 0x3

    .line 433
    const/4 v8, 0x0

    .line 428
    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 495
    .end local v1    # "flags":I
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz p2, :cond_9

    .line 501
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 502
    const-string/jumbo v7, " not installed; requiring apk in dataset"

    .line 501
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    .line 510
    :goto_1
    const-string/jumbo v5, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 509
    const/4 v7, 0x0

    .line 508
    invoke-static {v7, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 513
    .local v2, "monitoringExtras":Landroid/os/Bundle;
    const-string/jumbo v5, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    .line 511
    invoke-static {v2, v5, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 515
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 516
    const/16 v6, 0x28

    .line 517
    const/4 v7, 0x0

    .line 518
    const/4 v8, 0x3

    .line 514
    invoke-static {v5, v6, v7, v8, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_0

    .line 438
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "monitoringExtras":Landroid/os/Bundle;
    .restart local v1    # "flags":I
    .restart local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    if-eqz p2, :cond_5

    .line 439
    :try_start_2
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Data version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p3, Lcom/android/server/backup/FileMetadata;->version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 440
    const-string/jumbo v7, " is newer than installed "

    .line 439
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 441
    const-string/jumbo v7, "version "

    .line 439
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 442
    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 439
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 443
    const-string/jumbo v7, " - requiring apk"

    .line 439
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_0

    .line 446
    :cond_5
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Data requires newer version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 447
    iget v7, p3, Lcom/android/server/backup/FileMetadata;->version:I

    .line 446
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 447
    const-string/jumbo v7, "; ignoring"

    .line 446
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 456
    const-string/jumbo v6, "android.app.backup.extra.LOG_OLD_VERSION"

    .line 457
    iget v7, p3, Lcom/android/server/backup/FileMetadata;->version:I

    int-to-long v8, v7

    .line 455
    const/4 v7, 0x0

    .line 453
    invoke-static {v7, v6, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v6

    .line 450
    const/16 v7, 0x24

    .line 452
    const/4 v8, 0x3

    .line 448
    invoke-static {v5, v7, v3, v8, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 459
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_0

    .line 463
    :cond_6
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restore manifest signatures do not match installed application for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 465
    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 463
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 468
    const/16 v6, 0x25

    .line 470
    const/4 v7, 0x3

    .line 471
    const/4 v8, 0x0

    .line 466
    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_0

    .line 474
    :cond_7
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 475
    const-string/jumbo v7, " is system level with no agent"

    .line 474
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 478
    const/16 v6, 0x26

    .line 480
    const/4 v7, 0x2

    .line 481
    const/4 v8, 0x0

    .line 476
    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_0

    .line 485
    :cond_8
    const-string/jumbo v5, "BackupManagerService"

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restore manifest from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " but allowBackup=false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 485
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 490
    const/16 v6, 0x27

    .line 492
    const/4 v7, 0x3

    .line 493
    const/4 v8, 0x0

    .line 488
    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 506
    .end local v1    # "flags":I
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_1
.end method

.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object v0
.end method

.method public readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .locals 18
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v16, 0x10000

    cmp-long v13, v14, v16

    if-lez v13, :cond_0

    .line 278
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Restore manifest too big; corrupt? size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 281
    :cond_0
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v13, v14

    new-array v2, v13, [B

    .line 286
    .local v2, "buffer":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v14, v14

    const/4 v15, 0x0

    invoke-static {v13, v2, v15, v14}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v13

    int-to-long v14, v13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_1

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v13, v14, v15}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 292
    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/String;

    .line 293
    .local v11, "str":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 296
    .local v9, "offset":I
    :try_start_0
    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    .line 297
    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 298
    .local v12, "version":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 299
    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    .line 300
    const/4 v13, 0x0

    aget-object v6, v11, v13

    .line 302
    .local v6, "manifestPackage":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 303
    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    .line 304
    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/backup/FileMetadata;->version:I

    .line 305
    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    .line 308
    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 309
    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    .line 310
    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    const/4 v13, 0x0

    aget-object v13, v11, v13

    :goto_0
    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 311
    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    .line 312
    const/4 v13, 0x0

    aget-object v13, v11, v13

    const-string/jumbo v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    .line 313
    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    .line 314
    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 315
    .local v8, "numSigs":I
    if-lez v8, :cond_4

    .line 316
    new-array v10, v8, [Landroid/content/pm/Signature;

    .line 317
    .local v10, "sigs":[Landroid/content/pm/Signature;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v8, :cond_3

    .line 318
    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    .line 319
    new-instance v13, Landroid/content/pm/Signature;

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-direct {v13, v14}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v13, v10, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 289
    .end local v5    # "i":I
    .end local v6    # "manifestPackage":Ljava/lang/String;
    .end local v8    # "numSigs":I
    .end local v9    # "offset":I
    .end local v10    # "sigs":[Landroid/content/pm/Signature;
    .end local v11    # "str":[Ljava/lang/String;
    .end local v12    # "version":I
    :cond_1
    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v14, "Unexpected EOF in manifest"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 310
    .restart local v6    # "manifestPackage":Ljava/lang/String;
    .restart local v9    # "offset":I
    .restart local v11    # "str":[Ljava/lang/String;
    .restart local v12    # "version":I
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 321
    .restart local v5    # "i":I
    .restart local v8    # "numSigs":I
    .restart local v10    # "sigs":[Landroid/content/pm/Signature;
    :cond_3
    return-object v10

    .line 323
    .end local v5    # "i":I
    .end local v10    # "sigs":[Landroid/content/pm/Signature;
    :cond_4
    :try_start_1
    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Missing signature on backed-up package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 330
    const-string/jumbo v14, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 329
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v14, v15}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 326
    const/16 v15, 0x2a

    .line 327
    const/16 v16, 0x0

    .line 328
    const/16 v17, 0x3

    .line 324
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v15, v0, v1, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 375
    .end local v6    # "manifestPackage":Ljava/lang/String;
    .end local v8    # "numSigs":I
    .end local v12    # "version":I
    :goto_2
    const/4 v13, 0x0

    return-object v13

    .line 333
    .restart local v6    # "manifestPackage":Ljava/lang/String;
    .restart local v12    # "version":I
    :cond_5
    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Expected package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 334
    const-string/jumbo v15, " but restore manifest claims "

    .line 333
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string/jumbo v13, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 335
    const/4 v15, 0x0

    invoke-static {v15, v13, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 339
    .local v7, "monitoringExtras":Landroid/os/Bundle;
    const-string/jumbo v13, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    .line 337
    invoke-static {v7, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 342
    const/16 v14, 0x2b

    .line 343
    const/4 v15, 0x0

    .line 344
    const/16 v16, 0x3

    .line 340
    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 362
    .end local v6    # "manifestPackage":Ljava/lang/String;
    .end local v7    # "monitoringExtras":Landroid/os/Bundle;
    .end local v12    # "version":I
    :catch_0
    move-exception v4

    .line 363
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Corrupt restore manifest for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 369
    const-string/jumbo v14, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 370
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 369
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v14, v15}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 366
    const/16 v15, 0x2e

    .line 367
    const/16 v16, 0x0

    .line 368
    const/16 v17, 0x3

    .line 364
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v15, v0, v1, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_2

    .line 348
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "version":I
    :cond_6
    :try_start_2
    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unknown restore manifest version "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 349
    const-string/jumbo v15, " for package "

    .line 348
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 349
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 348
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string/jumbo v13, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 350
    const/4 v15, 0x0

    invoke-static {v15, v13, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 353
    .restart local v7    # "monitoringExtras":Landroid/os/Bundle;
    const-string/jumbo v13, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v14, v12

    .line 352
    invoke-static {v7, v13, v14, v15}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v7

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 356
    const/16 v14, 0x2c

    .line 357
    const/4 v15, 0x0

    .line 358
    const/16 v16, 0x3

    .line 354
    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 371
    .end local v7    # "monitoringExtras":Landroid/os/Bundle;
    .end local v12    # "version":I
    :catch_1
    move-exception v3

    .line 372
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v13, "BackupManagerService"

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v12, 0x10000

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 561
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Metadata too big; corrupt? size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 564
    :cond_0
    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v10, v10

    new-array v1, v10, [B

    .line 565
    .local v1, "buffer":[B
    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v11, v12

    const/4 v12, 0x0

    invoke-static {v10, v1, v12, v11}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v10

    int-to-long v10, v10

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 566
    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v10, v12, v13}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 571
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    .line 572
    .local v7, "str":[Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {v1, v10, v7}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 573
    .local v4, "offset":I
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 574
    .local v9, "version":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 575
    invoke-static {v1, v4, v7}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    .line 576
    const/4 v10, 0x0

    aget-object v5, v7, v10

    .line 577
    .local v5, "pkg":Ljava/lang/String;
    iget-object v10, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 580
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 581
    array-length v10, v1

    sub-int/2addr v10, v4

    .line 580
    invoke-direct {v0, v1, v4, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 582
    .local v0, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 583
    .local v2, "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    if-lez v10, :cond_4

    .line 584
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 585
    .local v8, "token":I
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 586
    .local v6, "size":I
    const/high16 v10, 0x10000

    if-le v6, v10, :cond_2

    .line 587
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Datum "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 588
    const-string/jumbo v12, " too big; corrupt? size="

    .line 587
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 588
    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    .line 587
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 568
    .end local v0    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v4    # "offset":I
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v7    # "str":[Ljava/lang/String;
    .end local v8    # "token":I
    .end local v9    # "version":I
    :cond_1
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Unexpected EOF in widget data"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 590
    .restart local v0    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "offset":I
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v6    # "size":I
    .restart local v7    # "str":[Ljava/lang/String;
    .restart local v8    # "token":I
    .restart local v9    # "version":I
    :cond_2
    packed-switch v8, :pswitch_data_0

    .line 601
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Ignoring metadata blob "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 602
    const-string/jumbo v12, " for "

    .line 601
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 602
    iget-object v12, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 601
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_0

    .line 595
    :pswitch_0
    new-array v10, v6, [B

    iput-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    .line 596
    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    invoke-virtual {v2, v10}, Ljava/io/DataInputStream;->read([B)I

    goto/16 :goto_0

    .line 610
    .end local v0    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v6    # "size":I
    .end local v8    # "token":I
    :cond_3
    const-string/jumbo v10, "BackupManagerService"

    .line 611
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Metadata mismatch: package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " but widget data for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 610
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string/jumbo v10, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 614
    const/4 v12, 0x0

    invoke-static {v12, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 617
    .local v3, "monitoringExtras":Landroid/os/Bundle;
    const-string/jumbo v10, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    .line 616
    invoke-static {v3, v10, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 619
    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 620
    const/16 v11, 0x2f

    .line 621
    const/4 v12, 0x0

    .line 622
    const/4 v13, 0x3

    .line 618
    invoke-static {v10, v11, v12, v13, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 640
    .end local v3    # "monitoringExtras":Landroid/os/Bundle;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 626
    :cond_5
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported metadata version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string/jumbo v10, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 630
    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 629
    const/4 v12, 0x0

    .line 628
    invoke-static {v12, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 632
    .restart local v3    # "monitoringExtras":Landroid/os/Bundle;
    const-string/jumbo v10, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v12, v9

    .line 631
    invoke-static {v3, v10, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    .line 634
    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 635
    const/16 v11, 0x30

    .line 636
    const/4 v12, 0x0

    .line 637
    const/4 v13, 0x3

    .line 633
    invoke-static {v10, v11, v12, v13, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_1

    .line 590
    :pswitch_data_0
    .packed-switch 0x1ffed01
        :pswitch_0
    .end packed-switch
.end method

.method public readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 103
    .local v0, "block":[B
    const/4 v3, 0x0

    .line 105
    .local v3, "info":Lcom/android/server/backup/FileMetadata;
    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v2

    .line 106
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_7

    .line 109
    :try_start_0
    new-instance v4, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v4}, Lcom/android/server/backup/FileMetadata;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    const/16 v8, 0x7c

    .line 112
    const/16 v9, 0xc

    .line 113
    const/16 v10, 0x8

    .line 110
    :try_start_1
    invoke-static {v0, v8, v9, v10}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    .line 115
    const/16 v8, 0x88

    .line 116
    const/16 v9, 0xc

    .line 117
    const/16 v10, 0x8

    .line 114
    invoke-static {v0, v8, v9, v10}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 119
    const/16 v8, 0x64

    .line 120
    const/16 v9, 0x8

    .line 121
    const/16 v10, 0x8

    .line 118
    invoke-static {v0, v8, v9, v10}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 124
    const/16 v8, 0x159

    .line 125
    const/16 v9, 0x9b

    .line 123
    invoke-static {v0, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 127
    const/4 v8, 0x0

    .line 128
    const/16 v9, 0x64

    .line 126
    invoke-static {v0, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 130
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 133
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 137
    :cond_1
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    .line 138
    .local v7, "typeChar":I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_4

    .line 140
    invoke-direct {p0, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z

    move-result v2

    .line 141
    if-eqz v2, :cond_2

    .line 144
    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v2

    .line 146
    :cond_2
    if-nez v2, :cond_3

    .line 147
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 220
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :goto_0
    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    throw v1

    .line 150
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_3
    const/16 v8, 0x9c

    :try_start_2
    aget-byte v7, v0, v8

    .line 153
    :cond_4
    sparse-switch v7, :sswitch_data_0

    .line 173
    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 155
    :sswitch_0
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    .line 181
    :cond_5
    :goto_1
    const-string/jumbo v8, "shared/"

    .line 182
    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v10, "shared/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 181
    const/4 v11, 0x0

    .line 182
    const/4 v12, 0x0

    .line 181
    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 184
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 185
    const-string/jumbo v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 186
    const-string/jumbo v8, "shared"

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 188
    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move-object v3, v4

    .line 228
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :cond_7
    return-object v3

    .line 158
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :sswitch_1
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    .line 159
    iget-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 160
    const-string/jumbo v8, "BackupManagerService"

    const-string/jumbo v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_1

    .line 170
    :sswitch_2
    const/4 v8, 0x0

    return-object v8

    .line 190
    :cond_8
    const-string/jumbo v8, "apps/"

    .line 191
    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v10, "apps/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 190
    const/4 v11, 0x0

    .line 191
    const/4 v12, 0x0

    .line 190
    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 195
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 198
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 199
    .local v6, "slash":I
    if-gez v6, :cond_9

    .line 200
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 202
    :cond_9
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 203
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 207
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 208
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_meta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 207
    if-eqz v8, :cond_6

    .line 209
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 210
    if-gez v6, :cond_a

    .line 211
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 212
    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 211
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 214
    :cond_a
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 215
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 218
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "slash":I
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method public skipTarPadding(J)V
    .locals 9
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x200

    .line 540
    add-long v4, p1, v6

    rem-long v2, v4, v6

    .line 541
    .local v2, "partial":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 542
    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    .line 546
    .local v1, "needed":I
    new-array v0, v1, [B

    .line 547
    .local v0, "buffer":[B
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 548
    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long v6, v1

    invoke-interface {v4, v6, v7}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 553
    .end local v0    # "buffer":[B
    .end local v1    # "needed":I
    :cond_0
    return-void

    .line 550
    .restart local v0    # "buffer":[B
    .restart local v1    # "needed":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
