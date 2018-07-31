.class public Landroid/net/lowpan/LowpanCommissioningSession;
.super Ljava/lang/Object;
.source "LowpanCommissioningSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanCommissioningSession$Callback;,
        Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;
    }
.end annotation


# instance fields
.field private final mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

.field private final mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

.field private mHandler:Landroid/os/Handler;

.field private final mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

.field private volatile mIsClosed:Z

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    .locals 1
    .param p0, "-this"    # Landroid/net/lowpan/LowpanCommissioningSession;

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Landroid/net/lowpan/LowpanCommissioningSession;

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/lowpan/LowpanCommissioningSession;)Z
    .locals 1
    .param p0, "-this"    # Landroid/net/lowpan/LowpanCommissioningSession;

    .prologue
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    return v0
.end method

.method static synthetic -wrap0(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/lowpan/LowpanCommissioningSession;

    .prologue
    invoke-direct {p0}, Landroid/net/lowpan/LowpanCommissioningSession;->lockedCleanup()V

    return-void
.end method

.method constructor <init>(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanBeaconInfo;Landroid/os/Looper;)V
    .locals 3
    .param p1, "binder"    # Landroid/net/lowpan/ILowpanInterface;
    .param p2, "beaconInfo"    # Landroid/net/lowpan/LowpanBeaconInfo;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;

    invoke-direct {v1, p0, v2}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;)V

    iput-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    .line 43
    iput-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    .line 115
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 116
    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    .line 117
    iput-object p3, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    .line 119
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    .line 126
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    invoke-interface {v1, v2}, Landroid/net/lowpan/ILowpanInterface;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-void

    .line 122
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private lockedCleanup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 136
    iget-boolean v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    if-nez v2, :cond_0

    .line 138
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iget-object v3, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mInternalCallback:Landroid/net/lowpan/ILowpanInterfaceListener;

    invoke-interface {v2, v3}, Landroid/net/lowpan/ILowpanInterface;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_0
    iput-object v5, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    .line 155
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    .line 156
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 140
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "x":Landroid/os/DeadObjectException;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 207
    :try_start_0
    iget-boolean v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 209
    :try_start_1
    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->closeCommissioningSession()V

    .line 211
    invoke-direct {p0}, Landroid/net/lowpan/LowpanCommissioningSession;->lockedCleanup()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 222
    return-void

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "x":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "x":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 213
    :catch_1
    move-exception v0

    .local v0, "x":Landroid/os/DeadObjectException;
    goto :goto_0
.end method

.method public getBeaconInfo()Landroid/net/lowpan/LowpanBeaconInfo;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBeaconInfo:Landroid/net/lowpan/LowpanBeaconInfo;

    return-object v0
.end method

.method synthetic lambda$-android_net_lowpan_LowpanCommissioningSession_4529()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    invoke-virtual {v0}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onClosed()V

    return-void
.end method

.method public sendToCommissioner([B)V
    .locals 3
    .param p1, "packet"    # [B

    .prologue
    .line 166
    iget-boolean v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    if-nez v2, :cond_0

    .line 168
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->sendToCommissioner([B)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 170
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "x":Landroid/os/DeadObjectException;
    goto :goto_0
.end method

.method public declared-synchronized setCallback(Landroid/net/lowpan/LowpanCommissioningSession$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "cb"    # Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    monitor-enter p0

    .line 183
    :try_start_0
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mIsClosed:Z

    if-nez v0, :cond_0

    .line 194
    if-eqz p2, :cond_1

    .line 195
    iput-object p2, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;

    .line 201
    :goto_0
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mCallback:Landroid/net/lowpan/LowpanCommissioningSession$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 203
    return-void

    .line 196
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 197
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :cond_2
    :try_start_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession;->mHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
