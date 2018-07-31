.class public final Landroid/net/IpSecManager;
.super Ljava/lang/Object;
.source "IpSecManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecManager$ResourceUnavailableException;,
        Landroid/net/IpSecManager$SecurityParameterIndex;,
        Landroid/net/IpSecManager$SpiUnavailableException;,
        Landroid/net/IpSecManager$Status;,
        Landroid/net/IpSecManager$UdpEncapsulationSocket;
    }
.end annotation


# static fields
.field public static final INVALID_RESOURCE_ID:I = 0x0

.field public static final INVALID_SECURITY_PARAMETER_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IpSecManager"


# instance fields
.field private final mService:Landroid/net/IIpSecService;


# direct methods
.method public constructor <init>(Landroid/net/IIpSecService;)V
    .locals 1
    .param p1, "service"    # Landroid/net/IIpSecService;

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const-string/jumbo v0, "missing service"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IIpSecService;

    iput-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    .line 558
    return-void
.end method

.method private applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "transform"    # Landroid/net/IpSecTransform;

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p2}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/IIpSecService;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "transform"    # Landroid/net/IpSecTransform;

    .prologue
    .line 381
    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p2}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/IIpSecService;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public applyTransportModeTransform(Ljava/io/FileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 5
    .param p1, "socket"    # Ljava/io/FileDescriptor;
    .param p2, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 298
    const/4 v0, 0x0

    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 299
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v1

    .line 301
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    return-void

    .line 300
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public applyTransportModeTransform(Ljava/net/DatagramSocket;Landroid/net/IpSecTransform;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 275
    const/4 v0, 0x0

    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 276
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 277
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v1

    .line 278
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    return-void

    .line 277
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public applyTransportModeTransform(Ljava/net/Socket;Landroid/net/IpSecTransform;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 255
    const/4 v0, 0x0

    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 256
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v1

    .line 258
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    return-void

    .line 257
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public applyTunnelModeTransform(Landroid/net/Network;Landroid/net/IpSecTransform;)V
    .locals 0
    .param p1, "net"    # Landroid/net/Network;
    .param p2, "transform"    # Landroid/net/IpSecTransform;

    .prologue
    .line 323
    return-void
.end method

.method public openUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$UdpEncapsulationSocket;)V

    return-object v0
.end method

.method public openUdpEncapsulationSocket(I)Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 521
    if-nez p1, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Specified port must be a valid port number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$UdpEncapsulationSocket;)V

    return-object v0
.end method

.method public removeTransportModeTransform(Ljava/io/FileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 5
    .param p1, "socket"    # Ljava/io/FileDescriptor;
    .param p2, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 373
    const/4 v0, 0x0

    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 374
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 375
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v1

    .line 376
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    return-void

    .line 375
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public removeTransportModeTransform(Ljava/net/DatagramSocket;Landroid/net/IpSecTransform;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 356
    const/4 v0, 0x0

    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 357
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v1

    .line 359
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    return-void

    .line 358
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public removeTransportModeTransform(Ljava/net/Socket;Landroid/net/IpSecTransform;)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "transform"    # Landroid/net/IpSecTransform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 338
    const/4 v0, 0x0

    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 339
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 340
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v1

    .line 341
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    return-void

    .line 340
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public removeTunnelModeTransform(Landroid/net/Network;Landroid/net/IpSecTransform;)V
    .locals 0
    .param p1, "net"    # Landroid/net/Network;
    .param p2, "transform"    # Landroid/net/IpSecTransform;

    .prologue
    .line 398
    return-void
.end method

.method public reserveSecurityParameterIndex(ILjava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;
    .locals 7
    .param p1, "direction"    # I
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    new-instance v0, Landroid/net/IpSecManager$SecurityParameterIndex;

    .line 209
    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    .line 212
    const/4 v4, 0x0

    .line 208
    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$SecurityParameterIndex;)V
    :try_end_0
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 213
    :catch_0
    move-exception v6

    .line 214
    .local v6, "unlikely":Landroid/net/IpSecManager$SpiUnavailableException;
    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string/jumbo v1, "No SPIs available"

    invoke-direct {v0, v1}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reserveSecurityParameterIndex(ILjava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;
    .locals 6
    .param p1, "direction"    # I
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;
    .param p3, "requestedSpi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    .prologue
    .line 234
    if-nez p3, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested SPI must be a valid (non-zero) SPI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    new-instance v0, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$SecurityParameterIndex;)V

    return-object v0
.end method
