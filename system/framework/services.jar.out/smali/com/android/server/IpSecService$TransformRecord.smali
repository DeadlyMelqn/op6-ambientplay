.class final Lcom/android/server/IpSecService$TransformRecord;
.super Lcom/android/server/IpSecService$ManagedResource;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TransformRecord"
.end annotation


# instance fields
.field private final mConfig:Landroid/net/IpSecConfig;

.field private final mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

.field private final mSpis:[Lcom/android/server/IpSecService$SpiRecord;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;Landroid/net/IpSecConfig;[Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$UdpSocketRecord;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/IpSecService;
    .param p2, "resourceId"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "config"    # Landroid/net/IpSecConfig;
    .param p5, "spis"    # [Lcom/android/server/IpSecService$SpiRecord;
    .param p6, "socket"    # Lcom/android/server/IpSecService$UdpSocketRecord;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/IpSecService$ManagedResource;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;)V

    .line 239
    iput-object p4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    .line 240
    iput-object p5, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    .line 241
    iput-object p6, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    .line 243
    invoke-static {}, Lcom/android/server/IpSecService;->-get0()[I

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 244
    .local v0, "direction":I
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/server/IpSecService$SpiRecord;->addReference()V

    .line 245
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/server/IpSecService$SpiRecord;->setOwnedByTransform()V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "direction":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    invoke-virtual {v1}, Lcom/android/server/IpSecService$UdpSocketRecord;->addReference()V

    .line 251
    :cond_1
    return-void
.end method


# virtual methods
.method public getConfig()Landroid/net/IpSecConfig;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method public getSpiRecord(I)Lcom/android/server/IpSecService$SpiRecord;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected releaseResources()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 264
    invoke-static {}, Lcom/android/server/IpSecService;->-get0()[I

    move-result-object v10

    array-length v11, v10

    move v9, v8

    :goto_0
    if-ge v9, v11, :cond_2

    aget v2, v10, v9

    .line 265
    .local v2, "direction":I
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v5

    .line 267
    .local v5, "spi":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-virtual {v0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    .line 269
    iget v1, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    .line 271
    iget-object v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v3}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 274
    :goto_1
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 275
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v4}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 267
    :goto_2
    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V

    .line 264
    :goto_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 273
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_1

    .line 276
    :cond_1
    const-string/jumbo v4, ""
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 280
    :catch_0
    move-exception v6

    .line 281
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to delete SA with ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/IpSecService$TransformRecord;->mResourceId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 285
    .end local v2    # "direction":I
    .end local v5    # "spi":I
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-static {}, Lcom/android/server/IpSecService;->-get0()[I

    move-result-object v1

    array-length v3, v1

    move v0, v8

    :goto_4
    if-ge v0, v3, :cond_3

    aget v2, v1, v0

    .line 286
    .restart local v2    # "direction":I
    iget-object v4, p0, Lcom/android/server/IpSecService$TransformRecord;->mSpis:[Lcom/android/server/IpSecService$SpiRecord;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/server/IpSecService$SpiRecord;->removeReference()V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 289
    .end local v2    # "direction":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    if-eqz v0, :cond_4

    .line 290
    iget-object v0, p0, Lcom/android/server/IpSecService$TransformRecord;->mSocket:Lcom/android/server/IpSecService$UdpSocketRecord;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$UdpSocketRecord;->removeReference()V

    .line 292
    :cond_4
    return-void

    .line 278
    .restart local v2    # "direction":I
    .restart local v5    # "spi":I
    :catch_1
    move-exception v7

    .local v7, "e":Landroid/os/ServiceSpecificException;
    goto :goto_3
.end method
