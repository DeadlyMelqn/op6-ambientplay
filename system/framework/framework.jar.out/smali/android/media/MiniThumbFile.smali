.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static final sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mEmptyBuffer:Ljava/nio/ByteBuffer;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 55
    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v1, 0x2710

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 133
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 134
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mEmptyBuffer:Ljava/nio/ByteBuffer;

    .line 135
    return-void
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 73
    .local v0, "file":Landroid/media/MiniThumbFile;
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroid/media/MiniThumbFile;

    .line 75
    .end local v0    # "file":Landroid/media/MiniThumbFile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "content://media/external/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 74
    invoke-direct {v0, v2}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 76
    .restart local v0    # "file":Landroid/media/MiniThumbFile;
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 79
    return-object v0

    .end local v0    # "file":Landroid/media/MiniThumbFile;
    .end local v1    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 8

    .prologue
    .line 102
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-nez v5, :cond_1

    .line 103
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 104
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 106
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    const-string/jumbo v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to create .thumbnails directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v3, "f":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rw"

    invoke-direct {v5, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v5, :cond_1

    .line 125
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 128
    .end local v0    # "directory":Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    return-object v5

    .line 115
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v5, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v2

    .local v2, "ex2":Ljava/io/IOException;
    goto :goto_0
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    const-string/jumbo v2, "/DCIM/.thumbnails"

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "directoryName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeOldFile()V
    .locals 4

    .prologue
    .line 90
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "oldPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static declared-synchronized reset()V
    .locals 4

    .prologue
    const-class v3, Landroid/media/MiniThumbFile;

    monitor-enter v3

    .line 63
    :try_start_0
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "file$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 64
    .local v0, "file":Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "file":Landroid/media/MiniThumbFile;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 66
    :cond_0
    :try_start_1
    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 67
    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 140
    :try_start_1
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 146
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 142
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized eraseMiniThumb(J)V
    .locals 13
    .param p1, "id"    # J

    .prologue
    const-wide/16 v4, 0x2710

    const/16 v12, 0x9

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 191
    .local v11, "r":Ljava/io/RandomAccessFile;
    if-eqz v11, :cond_3

    .line 192
    mul-long v2, p1, v4

    .line 193
    .local v2, "pos":J
    const/4 v10, 0x0

    .line 195
    .local v10, "lock":Ljava/nio/channels/FileLock;
    :try_start_1
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 196
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 198
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v10

    .line 201
    .local v10, "lock":Ljava/nio/channels/FileLock;
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1

    if-ne v1, v12, :cond_2

    .line 202
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 204
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    .line 205
    .local v8, "currentMagic":J
    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    if-nez v1, :cond_1

    .line 207
    const-string/jumbo v1, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no thumbnail for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 208
    return-void

    .line 228
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 213
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Landroid/media/MiniThumbFile;->mEmptyBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    .end local v8    # "currentMagic":J
    :cond_2
    if-eqz v10, :cond_3

    :try_start_4
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v2    # "pos":J
    .end local v10    # "lock":Ljava/nio/channels/FileLock;
    :cond_3
    :goto_1
    monitor-exit p0

    .line 235
    return-void

    .line 228
    .restart local v2    # "pos":J
    .restart local v10    # "lock":Ljava/nio/channels/FileLock;
    :catch_1
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 220
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v10    # "lock":Ljava/nio/channels/FileLock;
    :catch_2
    move-exception v7

    .line 222
    .local v7, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    const-string/jumbo v1, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got exception when reading magic, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 223
    const-string/jumbo v5, ", disk full or mount read-only? "

    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 223
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    if-eqz v10, :cond_3

    :try_start_6
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 228
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 218
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    .line 219
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v1, "MiniThumbFile"

    const-string/jumbo v4, "Got exception checking file magic: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 226
    if-eqz v10, :cond_3

    :try_start_8
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 228
    :catch_5
    move-exception v0

    goto :goto_1

    .line 224
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 226
    if-eqz v10, :cond_4

    :try_start_9
    invoke-virtual {v10}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 224
    :cond_4
    :goto_2
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .end local v2    # "pos":J
    .end local v11    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 228
    .restart local v2    # "pos":J
    .restart local v11    # "r":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_2
.end method

.method public declared-synchronized getMagic(J)J
    .locals 13
    .param p1, "id"    # J

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x1

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 155
    .local v9, "r":Ljava/io/RandomAccessFile;
    if-eqz v9, :cond_2

    .line 156
    const-wide/16 v4, 0x2710

    mul-long v2, p1, v4

    .line 157
    .local v2, "pos":J
    const/4 v8, 0x0

    .line 159
    .local v8, "lock":Ljava/nio/channels/FileLock;
    :try_start_1
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 160
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 162
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x9

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v8

    .line 165
    .local v8, "lock":Ljava/nio/channels/FileLock;
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v1

    if-ne v1, v11, :cond_1

    .line 166
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-ne v1, v10, :cond_1

    .line 168
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 179
    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 168
    return-wide v4

    .line 181
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 179
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    if-eqz v8, :cond_2

    :try_start_3
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .end local v2    # "pos":J
    .end local v8    # "lock":Ljava/nio/channels/FileLock;
    :cond_2
    :goto_1
    const-wide/16 v4, 0x0

    monitor-exit p0

    return-wide v4

    .line 181
    .restart local v2    # "pos":J
    .restart local v8    # "lock":Ljava/nio/channels/FileLock;
    :catch_1
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 173
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v8    # "lock":Ljava/nio/channels/FileLock;
    :catch_2
    move-exception v7

    .line 175
    .local v7, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    const-string/jumbo v1, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got exception when reading magic, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 176
    const-string/jumbo v5, ", disk full or mount read-only? "

    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 176
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    if-eqz v8, :cond_2

    :try_start_5
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 181
    :catch_3
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 171
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    .line 172
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v1, "MiniThumbFile"

    const-string/jumbo v4, "Got exception checking file magic: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 179
    if-eqz v8, :cond_2

    :try_start_7
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 181
    :catch_5
    move-exception v0

    goto :goto_1

    .line 177
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 179
    if-eqz v8, :cond_3

    :try_start_8
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 177
    :cond_3
    :goto_2
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v2    # "pos":J
    .end local v9    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 181
    .restart local v2    # "pos":J
    .restart local v9    # "r":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_2
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 17
    .param p1, "id"    # J
    .param p3, "data"    # [B

    .prologue
    monitor-enter p0

    .line 286
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .line 287
    .local v13, "r":Ljava/io/RandomAccessFile;
    if-nez v13, :cond_0

    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 289
    :cond_0
    const-wide/16 v6, 0x2710

    mul-long v4, p1, v6

    .line 290
    .local v4, "pos":J
    const/4 v12, 0x0

    .line 292
    .local v12, "lock":Ljava/nio/channels/FileLock;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x2710

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v12

    .line 294
    .local v12, "lock":Ljava/nio/channels/FileLock;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v16

    .line 295
    .local v16, "size":I
    const/16 v3, 0xd

    move/from16 v0, v16

    if-le v0, v3, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .line 298
    .local v10, "flag":B
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    .line 299
    .local v14, "magic":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 301
    .local v11, "length":I
    add-int/lit8 v3, v11, 0xd

    move/from16 v0, v16

    if-lt v0, v3, :cond_2

    if-eqz v11, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v3, v14, v6

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-ne v10, v3, :cond_2

    .line 302
    move-object/from16 v0, p3

    array-length v3, v0

    if-lt v3, v11, :cond_2

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v6, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    if-eqz v12, :cond_1

    :try_start_2
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    monitor-exit p0

    .line 304
    return-object p3

    .line 317
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 315
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v10    # "flag":B
    .end local v11    # "length":I
    .end local v14    # "magic":J
    :cond_2
    if-eqz v12, :cond_3

    :try_start_3
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 321
    .end local v12    # "lock":Ljava/nio/channels/FileLock;
    .end local v16    # "size":I
    :cond_3
    :goto_1
    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 317
    .restart local v12    # "lock":Ljava/nio/channels/FileLock;
    .restart local v16    # "size":I
    :catch_1
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 309
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v12    # "lock":Ljava/nio/channels/FileLock;
    .end local v16    # "size":I
    :catch_2
    move-exception v9

    .line 311
    .local v9, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    const-string/jumbo v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got exception when reading thumbnail, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 312
    const-string/jumbo v7, ", disk full or mount read-only? "

    .line 311
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 312
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 311
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    if-eqz v12, :cond_3

    :try_start_5
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 317
    :catch_3
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 307
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v2

    .line 308
    .restart local v2    # "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v3, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "got exception when reading thumbnail id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 315
    if-eqz v12, :cond_3

    :try_start_7
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 317
    :catch_5
    move-exception v2

    goto :goto_1

    .line 313
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 315
    if-eqz v12, :cond_4

    :try_start_8
    invoke-virtual {v12}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 313
    :cond_4
    :goto_2
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v4    # "pos":J
    .end local v13    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 317
    .restart local v4    # "pos":J
    .restart local v13    # "r":Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_2
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "id"    # J
    .param p4, "magic"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x2710

    monitor-enter p0

    .line 239
    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 240
    .local v9, "r":Ljava/io/RandomAccessFile;
    if-nez v9, :cond_0

    monitor-exit p0

    return-void

    .line 242
    :cond_0
    mul-long v2, p2, v4

    .line 243
    .local v2, "pos":J
    const/4 v8, 0x0

    .line 245
    .local v8, "lock":Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_2

    .line 246
    :try_start_1
    array-length v1, p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x2703

    if-le v1, v4, :cond_1

    monitor-exit p0

    .line 248
    return-void

    .line 250
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 251
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 252
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 253
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v4, p1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 254
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 255
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 257
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v8

    .line 258
    .local v8, "lock":Ljava/nio/channels/FileLock;
    iget-object v1, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    .end local v8    # "lock":Ljava/nio/channels/FileLock;
    :cond_2
    if-eqz v8, :cond_3

    :try_start_3
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :goto_0
    monitor-exit p0

    .line 276
    return-void

    .line 272
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 264
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 266
    .local v7, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    const-string/jumbo v1, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 267
    const-string/jumbo v5, "; disk full or mount read-only? "

    .line 266
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 267
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 266
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    if-eqz v8, :cond_3

    :try_start_5
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 272
    :catch_2
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 260
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 261
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v1, "MiniThumbFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 262
    const-string/jumbo v5, "; "

    .line 261
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 268
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 270
    if-eqz v8, :cond_4

    :try_start_7
    invoke-virtual {v8}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 268
    :cond_4
    :goto_1
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v2    # "pos":J
    .end local v9    # "r":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 272
    .restart local v2    # "pos":J
    .restart local v9    # "r":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    goto :goto_1
.end method
