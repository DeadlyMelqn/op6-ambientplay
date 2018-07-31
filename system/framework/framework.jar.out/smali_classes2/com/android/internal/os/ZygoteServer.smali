.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "ZygoteServer.java"


# static fields
.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field public static final TAG:Ljava/lang/String; = "ZygoteServer"


# instance fields
.field private mIsForkChild:Z

.field private mServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3
    .param p1, "abiList"    # Ljava/lang/String;

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 97
    const-string/jumbo v2, "IOException during accept()"

    .line 96
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method closeServerSocket()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 114
    .local v2, "fd":Ljava/io/FileDescriptor;
    iget-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V

    .line 115
    if-eqz v2, :cond_0

    .line 116
    invoke-static {v2}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    :cond_0
    :goto_0
    iput-object v5, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 126
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v3, "ZygoteServer"

    const-string/jumbo v4, "Zygote:  error closing descriptor"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catch_1
    move-exception v1

    .line 120
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "ZygoteServer"

    const-string/jumbo v4, "Zygote:  error closing sockets"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 1
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method registerServerSocket(Ljava/lang/String;)V
    .locals 9
    .param p1, "socketName"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v6, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-nez v6, :cond_0

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ANDROID_SOCKET_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "fullSocketName":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "env":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 78
    .local v4, "fileDesc":I
    :try_start_1
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 79
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v3, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 80
    new-instance v6, Landroid/net/LocalServerSocket;

    invoke-direct {v6, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v6, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .end local v0    # "env":Ljava/lang/String;
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "fileDesc":I
    .end local v5    # "fullSocketName":Ljava/lang/String;
    :cond_0
    return-void

    .line 73
    .restart local v5    # "fullSocketName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " unset or invalid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 81
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "env":Ljava/lang/String;
    .restart local v4    # "fileDesc":I
    :catch_1
    move-exception v1

    .line 82
    .local v1, "ex":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error binding to local socket \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 12
    .param p1, "abiList"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 144
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v5, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v8, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    iget-object v10, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v10}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [Landroid/system/StructPollfd;

    .line 152
    .local v9, "pollFds":[Landroid/system/StructPollfd;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v10, v9

    if-ge v6, v10, :cond_1

    .line 153
    new-instance v10, Landroid/system/StructPollfd;

    invoke-direct {v10}, Landroid/system/StructPollfd;-><init>()V

    aput-object v10, v9, v6

    .line 154
    aget-object v11, v9, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/FileDescriptor;

    iput-object v10, v11, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 155
    aget-object v10, v9, v6

    sget v11, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v11, v11

    iput-short v11, v10, Landroid/system/StructPollfd;->events:S

    .line 152
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v10, -0x1

    :try_start_0
    invoke-static {v9, v10}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    array-length v10, v9

    add-int/lit8 v6, v10, -0x1

    :goto_1
    if-ltz v6, :cond_0

    .line 163
    aget-object v10, v9, v6

    iget-short v10, v10, Landroid/system/StructPollfd;->revents:S

    sget v11, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v10, v11

    if-nez v10, :cond_3

    .line 162
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 159
    :catch_0
    move-exception v4

    .line 160
    .local v4, "ex":Landroid/system/ErrnoException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "poll failed"

    invoke-direct {v10, v11, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 167
    .end local v4    # "ex":Landroid/system/ErrnoException;
    :cond_3
    if-nez v6, :cond_4

    .line 168
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v7

    .line 169
    .local v7, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    .end local v7    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    :cond_4
    :try_start_1
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ZygoteConnection;

    .line 174
    .local v2, "connection":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v2, p0}, Lcom/android/internal/os/ZygoteConnection;->processOneCommand(Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v0

    .line 176
    .local v0, "command":Ljava/lang/Runnable;
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-eqz v10, :cond_6

    .line 179
    if-nez v0, :cond_5

    .line 180
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "command == null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    .end local v0    # "command":Ljava/lang/Runnable;
    .end local v2    # "connection":Lcom/android/internal/os/ZygoteConnection;
    :catch_1
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/Exception;
    iget-boolean v10, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-nez v10, :cond_8

    .line 206
    const-string/jumbo v10, "ZygoteServer"

    const-string/jumbo v11, "Exception executing zygote command: "

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/ZygoteConnection;

    .line 212
    .local v1, "conn":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 214
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 183
    .end local v1    # "conn":Lcom/android/internal/os/ZygoteConnection;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "command":Ljava/lang/Runnable;
    .restart local v2    # "connection":Lcom/android/internal/os/ZygoteConnection;
    :cond_5
    return-object v0

    .line 186
    :cond_6
    if-eqz v0, :cond_7

    .line 187
    :try_start_2
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "command != null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 193
    :cond_7
    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 194
    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 195
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 219
    .end local v0    # "command":Ljava/lang/Runnable;
    .end local v2    # "connection":Lcom/android/internal/os/ZygoteConnection;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_8
    const-string/jumbo v10, "ZygoteServer"

    const-string/jumbo v11, "Caught post-fork exception in child process."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    throw v3
.end method

.method setForkChild()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    .line 59
    return-void
.end method
