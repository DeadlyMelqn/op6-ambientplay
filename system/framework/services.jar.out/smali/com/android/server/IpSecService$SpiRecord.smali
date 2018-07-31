.class final Lcom/android/server/IpSecService$SpiRecord;
.super Lcom/android/server/IpSecService$ManagedResource;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpiRecord"
.end annotation


# instance fields
.field private final mDirection:I

.field private final mLocalAddress:Ljava/lang/String;

.field private mOwnedByTransform:Z

.field private final mRemoteAddress:Ljava/lang/String;

.field private mSpi:I

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/IpSecService;
    .param p2, "resourceId"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "direction"    # I
    .param p5, "localAddress"    # Ljava/lang/String;
    .param p6, "remoteAddress"    # Ljava/lang/String;
    .param p7, "spi"    # I

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/server/IpSecService$SpiRecord;->this$0:Lcom/android/server/IpSecService;

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/IpSecService$ManagedResource;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    .line 311
    iput p4, p0, Lcom/android/server/IpSecService$SpiRecord;->mDirection:I

    .line 312
    iput-object p5, p0, Lcom/android/server/IpSecService$SpiRecord;->mLocalAddress:Ljava/lang/String;

    .line 313
    iput-object p6, p0, Lcom/android/server/IpSecService$SpiRecord;->mRemoteAddress:Ljava/lang/String;

    .line 314
    iput p7, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    .line 315
    return-void
.end method


# virtual methods
.method public getSpi()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    return v0
.end method

.method protected releaseResources()V
    .locals 8

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    if-eqz v0, :cond_0

    .line 321
    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot release Spi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Currently locked by a Transform"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 331
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService$SpiRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-virtual {v0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    .line 333
    iget v1, p0, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    iget v2, p0, Lcom/android/server/IpSecService$SpiRecord;->mDirection:I

    iget-object v3, p0, Lcom/android/server/IpSecService$SpiRecord;->mLocalAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/IpSecService$SpiRecord;->mRemoteAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    .line 331
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mSpi:I

    .line 341
    return-void

    .line 336
    :catch_0
    move-exception v6

    .line 337
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to delete SPI reservation with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService$SpiRecord;->mResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .local v7, "e":Landroid/os/ServiceSpecificException;
    goto :goto_0
.end method

.method public setOwnedByTransform()V
    .locals 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot own an SPI twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/IpSecService$SpiRecord;->mOwnedByTransform:Z

    .line 354
    return-void
.end method
