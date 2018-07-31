.class public Landroid/util/jar/StrictJarFile$FDStream;
.super Ljava/io/InputStream;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FDStream"
.end annotation


# instance fields
.field private endOffset:J

.field private final fd:Ljava/io/FileDescriptor;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "initialOffset"    # J
    .param p4, "endOffset"    # J

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 445
    iput-object p1, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    .line 446
    iput-wide p2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    .line 447
    iput-wide p4, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    .line 448
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v5, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    monitor-enter v5

    .line 460
    :try_start_0
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v8, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, v6, v8

    .line 461
    .local v2, "length":J
    int-to-long v6, p3

    cmp-long v4, v6, v2

    if-lez v4, :cond_0

    .line 462
    long-to-int p3, v2

    .line 465
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    sget v8, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v4, v6, v7, v8}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    :try_start_2
    iget-object v4, p0, Landroid/util/jar/StrictJarFile$FDStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v4, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 470
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 471
    iget-wide v6, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 472
    return v0

    .line 466
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Landroid/system/ErrnoException;
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 459
    .end local v1    # "e":Landroid/system/ErrnoException;
    .end local v2    # "length":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 474
    .restart local v0    # "count":I
    .restart local v2    # "length":J
    :cond_1
    const/4 v4, -0x1

    monitor-exit v5

    return v4
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 481
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->endOffset:J

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    sub-long p1, v0, v2

    .line 483
    :cond_0
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/util/jar/StrictJarFile$FDStream;->offset:J

    .line 484
    return-wide p1
.end method
