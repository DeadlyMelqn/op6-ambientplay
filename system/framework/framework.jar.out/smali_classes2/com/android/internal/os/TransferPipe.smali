.class public final Lcom/android/internal/os/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_TIMEOUT:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field mBufferPrefix:Ljava/lang/String;

.field mComplete:Z

.field mEndTime:J

.field mFailure:Ljava/lang/String;

.field final mFds:[Landroid/os/ParcelFileDescriptor;

.field mOutFd:Ljava/io/FileDescriptor;

.field final mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "bufferPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "TransferPipe"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    .line 63
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    .line 64
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    const-wide/16 v6, 0x1388

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/os/TransferPipe;->go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 87
    return-void
.end method

.method static go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 7
    .param p0, "caller"    # Lcom/android/internal/os/TransferPipe$Caller;
    .param p1, "iface"    # Landroid/os/IInterface;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    instance-of v3, v3, Landroid/os/Binder;

    if-eqz v3, :cond_0

    .line 94
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-interface {p0, p1, v3, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2, p2, p5, p6}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 103
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    if-eqz v4, :cond_5

    throw v4

    :catch_1
    move-exception v4

    goto :goto_1

    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_2
    move-exception v3

    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    throw v4

    :catch_3
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_4

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3

    .line 104
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_5
    return-void

    .line 103
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_1
    move-exception v3

    goto :goto_3

    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_3

    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_2
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    .line 109
    return-void
.end method

.method static goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .locals 7
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 113
    instance-of v3, p0, Landroid/os/Binder;

    if-eqz v3, :cond_0

    .line 116
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-interface {p0, v3, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2, p1, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 125
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    if-eqz v4, :cond_5

    throw v4

    :catch_1
    move-exception v4

    goto :goto_1

    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_2
    move-exception v3

    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    if-eqz v4, :cond_4

    throw v4

    :catch_3
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_4

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v3

    .line 126
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :cond_5
    return-void

    .line 125
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_1
    move-exception v3

    goto :goto_3

    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_3

    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 184
    return-void
.end method

.method closeFd(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aput-object v2, v1, p1

    .line 179
    :cond_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method getReadFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWriteFd()Landroid/os/ParcelFileDescriptor;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public go(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 130
    return-void
.end method

.method public go(Ljava/io/FileDescriptor;J)V
    .locals 8
    .param p1, "out"    # Ljava/io/FileDescriptor;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    .line 142
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 144
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 147
    iget-wide v4, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 148
    .local v2, "waitTime":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 151
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v4, "Timeout"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v2    # "waitTime":J
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    :catchall_1
    move-exception v1

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 165
    throw v1

    .line 155
    .restart local v2    # "waitTime":J
    :cond_0
    :try_start_3
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/TransferPipe;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "waitTime":J
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 162
    new-instance v1, Ljava/io/IOException;

    iget-object v4, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 168
    return-void
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 191
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    .line 195
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 199
    .local v0, "buffer":[B
    monitor-enter p0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 201
    .local v7, "readFd":Landroid/os/ParcelFileDescriptor;
    if-nez v7, :cond_0

    .line 202
    const-string/jumbo v10, "TransferPipe"

    const-string/jumbo v11, "Pipe has been closed..."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 203
    return-void

    .line 205
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 206
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v4, "fos":Ljava/io/FileOutputStream;
    monitor-exit p0

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "bufferPrefix":[B
    const/4 v6, 0x1

    .line 212
    .local v6, "needPrefix":Z
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 213
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 218
    .end local v1    # "bufferPrefix":[B
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "size":I
    if-lez v8, :cond_8

    .line 220
    if-nez v1, :cond_2

    .line 221
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 251
    .end local v8    # "size":I
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Ljava/io/IOException;
    monitor-enter p0

    .line 253
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 255
    return-void

    .line 199
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "needPrefix":Z
    .end local v7    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 223
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "needPrefix":Z
    .restart local v7    # "readFd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "size":I
    :cond_2
    const/4 v9, 0x0

    .line 224
    .local v9, "start":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v8, :cond_7

    .line 225
    :try_start_4
    aget-byte v10, v0, v5

    if-eq v10, v11, :cond_6

    .line 226
    if-le v5, v9, :cond_3

    .line 227
    sub-int v10, v5, v9

    invoke-virtual {v4, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 229
    :cond_3
    move v9, v5

    .line 230
    if-eqz v6, :cond_4

    .line 231
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 232
    const/4 v6, 0x0

    .line 235
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 236
    if-ge v5, v8, :cond_5

    aget-byte v10, v0, v5

    if-ne v10, v11, :cond_4

    .line 237
    :cond_5
    if-ge v5, v8, :cond_6

    .line 238
    const/4 v6, 0x1

    .line 224
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 242
    :cond_7
    if-le v8, v9, :cond_1

    .line 243
    sub-int v10, v8, v9

    invoke-virtual {v4, v0, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 248
    .end local v5    # "i":I
    .end local v9    # "start":I
    :cond_8
    iget-object v10, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v10

    .line 259
    monitor-enter p0

    .line 260
    const/4 v10, 0x1

    :try_start_5
    iput-boolean v10, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    .line 263
    return-void

    .line 252
    .end local v8    # "size":I
    .restart local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    monitor-exit p0

    throw v10

    .line 259
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "size":I
    :catchall_2
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public setBufferPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 77
    return-void
.end method
