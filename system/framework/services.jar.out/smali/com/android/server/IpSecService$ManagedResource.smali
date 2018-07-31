.class abstract Lcom/android/server/IpSecService$ManagedResource;
.super Ljava/lang/Object;
.source "IpSecService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ManagedResource"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mResourceId:I

.field final pid:I

.field final synthetic this$0:Lcom/android/server/IpSecService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/IpSecService;
    .param p2, "resourceId"    # I
    .param p3, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 114
    iput-object p1, p0, Lcom/android/server/IpSecService$ManagedResource;->this$0:Lcom/android/server/IpSecService;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/IpSecService$ManagedResource;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    iput-object p3, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    .line 117
    iput p2, p0, Lcom/android/server/IpSecService$ManagedResource;->mResourceId:I

    .line 118
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/IpSecService$ManagedResource;->pid:I

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/IpSecService$ManagedResource;->uid:I

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public addReference()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 130
    return-void
.end method

.method public final binderDied()V
    .locals 4

    .prologue
    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to release resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkOwnerOrSystemAndThrow()V
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/IpSecService$ManagedResource;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v1, v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only the owner may access managed resources!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    return-void
.end method

.method public isReferenced()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 139
    iget-object v1, p0, Lcom/android/server/IpSecService$ManagedResource;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final release()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/server/IpSecService$ManagedResource;->this$0:Lcom/android/server/IpSecService;

    monitor-enter v1

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->isReferenced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    const-string/jumbo v2, "Cannot release a resource that has active references!"

    .line 159
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 163
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mResourceId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v1

    .line 164
    return-void

    .line 167
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/IpSecService$ManagedResource;->releaseResources()V

    .line 168
    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 171
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mBinder:Landroid/os/IBinder;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mResourceId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 175
    return-void
.end method

.method protected abstract releaseResources()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public removeReference()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/IpSecService$ManagedResource;->mReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    .line 134
    const-string/jumbo v0, "IpSecService"

    const-string/jumbo v1, "Programming error: negative reference count"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    return-void
.end method
