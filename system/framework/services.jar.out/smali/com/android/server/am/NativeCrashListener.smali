.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 99
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, "totalRead":I
    :goto_0
    if-lez p3, :cond_1

    .line 179
    add-int v2, p2, v1

    invoke-static {p0, p1, v2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 180
    .local v0, "n":I
    if-gtz v0, :cond_0

    .line 184
    const/4 v2, -0x1

    return v2

    .line 186
    :cond_0
    sub-int/2addr p3, v0

    .line 187
    add-int/2addr v1, v0

    goto :goto_0

    .line 189
    .end local v0    # "n":I
    :cond_1
    return v1
.end method

.method static unpackInt([BI)I
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 168
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 169
    .local v0, "b0":I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 170
    .local v1, "b1":I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 171
    .local v2, "b2":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 172
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/16 v10, 0x1000

    const/16 v12, 0x8

    .line 195
    new-array v0, v10, [B

    .line 196
    .local v0, "buf":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 199
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v10, 0x2710

    :try_start_0
    invoke-static {v10, v11}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v9

    .line 200
    .local v9, "timeout":Landroid/system/StructTimeval;
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 201
    sget v10, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v11, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v10, v11, v9}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 208
    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {p1, v0, v10, v11}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 209
    .local v3, "headerBytes":I
    if-eq v3, v12, :cond_0

    .line 211
    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Unable to read from debuggerd"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 215
    :cond_0
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v5

    .line 216
    .local v5, "pid":I
    const/4 v10, 0x4

    invoke-static {v0, v10}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v8

    .line 222
    .local v8, "signal":I
    if-lez v5, :cond_6

    .line 224
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v6, "pr":Lcom/android/server/am/ProcessRecord;
    :try_start_2
    monitor-exit v11

    .line 227
    if-eqz v6, :cond_5

    .line 229
    iget-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v10, :cond_3

    .line 233
    return-void

    .line 224
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 278
    .end local v3    # "headerBytes":I
    .end local v5    # "pid":I
    .end local v8    # "signal":I
    .end local v9    # "timeout":Landroid/system/StructTimeval;
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Exception dealing with report"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 251
    .local v1, "bytes":I
    .restart local v3    # "headerBytes":I
    .restart local v5    # "pid":I
    .restart local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "signal":I
    .restart local v9    # "timeout":Landroid/system/StructTimeval;
    :cond_1
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 253
    :cond_2
    if-lez v1, :cond_4

    .line 239
    .end local v1    # "bytes":I
    :cond_3
    array-length v10, v0

    const/4 v11, 0x0

    invoke-static {p1, v0, v11, v10}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 240
    .restart local v1    # "bytes":I
    if-lez v1, :cond_2

    .line 246
    add-int/lit8 v10, v1, -0x1

    aget-byte v10, v0, v10

    if-nez v10, :cond_1

    .line 247
    add-int/lit8 v10, v1, -0x1

    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 262
    :cond_4
    iget-object v11, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 263
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 264
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v11

    .line 262
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 270
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 271
    .local v7, "reportString":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v10, p0, v6, v8, v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V

    goto :goto_0

    .line 262
    .end local v7    # "reportString":Ljava/lang/String;
    :catchall_1
    move-exception v10

    monitor-exit v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    .line 273
    .end local v1    # "bytes":I
    :cond_5
    const-string/jumbo v10, "NativeCrashListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v6    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_6
    const-string/jumbo v10, "NativeCrashListener"

    const-string/jumbo v11, "Bogus pid!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 103
    new-array v0, v7, [B

    .line 111
    .local v0, "ackSignal":[B
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/data/system/ndebugsocket"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v6, "socketFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 113
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 118
    :cond_0
    :try_start_0
    sget v7, Landroid/system/OsConstants;->AF_UNIX:I

    sget v8, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 120
    .local v4, "serverFd":Ljava/io/FileDescriptor;
    const-string/jumbo v7, "/data/system/ndebugsocket"

    .line 119
    invoke-static {v7}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v5

    .line 121
    .local v5, "sockAddr":Landroid/system/UnixSocketAddress;
    invoke-static {v4, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 122
    const/4 v7, 0x1

    invoke-static {v4, v7}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 123
    const-string/jumbo v7, "/data/system/ndebugsocket"

    const/16 v8, 0x1ff

    invoke-static {v7, v8}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 126
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 129
    .local v3, "peerFd":Ljava/io/FileDescriptor;
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v4, v7}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 131
    .local v3, "peerFd":Ljava/io/FileDescriptor;
    if-eqz v3, :cond_2

    .line 134
    invoke-virtual {p0, v3}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_2
    if-eqz v3, :cond_1

    .line 143
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_2
    invoke-static {v3, v0, v7, v8}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    :goto_1
    :try_start_3
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/system/ErrnoException;
    goto :goto_0

    .line 144
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "peerFd":Ljava/io/FileDescriptor;
    :catch_2
    move-exception v2

    .line 137
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "NativeCrashListener"

    const-string/jumbo v8, "Error handling connection"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    if-eqz v3, :cond_1

    .line 143
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_5
    invoke-static {v3, v0, v7, v8}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 151
    :goto_2
    :try_start_6
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    .line 152
    :catch_3
    move-exception v1

    .restart local v1    # "e":Landroid/system/ErrnoException;
    goto :goto_0

    .line 144
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catch_4
    move-exception v2

    goto :goto_2

    .line 138
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 141
    if-eqz v3, :cond_3

    .line 143
    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_7
    invoke-static {v3, v0, v8, v9}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 151
    :goto_3
    :try_start_8
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 138
    :cond_3
    :goto_4
    :try_start_9
    throw v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 160
    .end local v4    # "serverFd":Ljava/io/FileDescriptor;
    .end local v5    # "sockAddr":Landroid/system/UnixSocketAddress;
    :catch_5
    move-exception v2

    .line 161
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "NativeCrashListener"

    const-string/jumbo v8, "Unable to init native debug socket!"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    return-void

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "serverFd":Ljava/io/FileDescriptor;
    .restart local v5    # "sockAddr":Landroid/system/UnixSocketAddress;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 152
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Landroid/system/ErrnoException;
    goto :goto_4
.end method
