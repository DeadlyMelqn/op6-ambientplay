.class public Lcom/android/server/accessibility/FingerprintGestureDispatcher;
.super Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;
.source "FingerprintGestureDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FingerprintGestureDispatcher"

.field private static final MSG_REGISTER:I = 0x1

.field private static final MSG_UNREGISTER:I = 0x2


# instance fields
.field private final mCapturingClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mRegisteredReadOnlyExceptInHandler:Z


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fingerprintService"    # Landroid/hardware/fingerprint/IFingerprintService;
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 55
    iput-object p2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 2
    .param p1, "fingerprintService"    # Landroid/hardware/fingerprint/IFingerprintService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 67
    iput-object p2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 68
    iput-object p3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 162
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_0

    .line 163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 165
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v3, p0}, Landroid/hardware/fingerprint/IFingerprintService;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 166
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    :goto_0
    return v6

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v3, "FingerprintGestureDispatcher"

    const-string/jumbo v4, "Failed to register for fingerprint activity callbacks"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 169
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    throw v3

    .line 173
    .end local v0    # "identity":J
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 176
    .restart local v0    # "identity":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v3, p0}, Landroid/hardware/fingerprint/IFingerprintService;->removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    .line 187
    return v5

    .line 177
    :catch_1
    move-exception v2

    .line 178
    .restart local v2    # "re":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "FingerprintGestureDispatcher"

    const-string/jumbo v4, "Failed to unregister for fingerprint activity callbacks"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 179
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    .line 180
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw v3

    .line 184
    .end local v0    # "identity":J
    :cond_1
    const-string/jumbo v3, "FingerprintGestureDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v6
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 110
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v3}, Landroid/hardware/fingerprint/IFingerprintService;->isClientActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    return v3

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "re":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    return v3

    .line 113
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    throw v3
.end method

.method public onClientActiveChanged(Z)V
    .locals 4
    .param p1, "nonGestureFingerprintClientActive"    # Z

    .prologue
    .line 99
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    .line 102
    xor-int/lit8 v3, p1, 0x1

    .line 101
    invoke-interface {v1, v3}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->onFingerprintGestureDetectionActiveChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    .line 105
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onFingerprintGesture(I)Z
    .locals 6
    .param p1, "fingerprintKeyCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 128
    iget-object v4, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 130
    return v5

    .line 132
    :cond_0
    packed-switch p1, :pswitch_data_0

    monitor-exit v4

    .line 150
    return v5

    .line 135
    :pswitch_0
    const/4 v2, 0x4

    .line 152
    .local v2, "idForFingerprintGestureManager":I
    :goto_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "clientList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;>;"
    monitor-exit v4

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    invoke-interface {v3, v2}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->onFingerprintGesture(I)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    .end local v0    # "clientList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;>;"
    .end local v1    # "i":I
    .end local v2    # "idForFingerprintGestureManager":I
    :pswitch_1
    const/16 v2, 0x8

    .line 140
    .restart local v2    # "idForFingerprintGestureManager":I
    goto :goto_0

    .line 143
    .end local v2    # "idForFingerprintGestureManager":I
    :pswitch_2
    const/4 v2, 0x1

    .line 144
    .restart local v2    # "idForFingerprintGestureManager":I
    goto :goto_0

    .line 147
    .end local v2    # "idForFingerprintGestureManager":I
    :pswitch_3
    const/4 v2, 0x2

    .line 148
    .restart local v2    # "idForFingerprintGestureManager":I
    goto :goto_0

    .line 128
    .end local v2    # "idForFingerprintGestureManager":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 157
    .restart local v0    # "clientList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;>;"
    .restart local v1    # "i":I
    .restart local v2    # "idForFingerprintGestureManager":I
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x118
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public updateClientList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "clientList":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;>;"
    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 80
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    .line 81
    .local v0, "client":Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;
    invoke-interface {v0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->isCapturingFingerprintGestures()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "client":Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    iget-boolean v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v3

    .line 95
    return-void

    .line 90
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    if-nez v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 77
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
