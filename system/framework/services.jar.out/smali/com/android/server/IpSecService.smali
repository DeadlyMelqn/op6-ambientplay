.class public Lcom/android/server/IpSecService;
.super Landroid/net/IIpSecService$Stub;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IpSecService$ManagedResource;,
        Lcom/android/server/IpSecService$ManagedResourceArray;,
        Lcom/android/server/IpSecService$SpiRecord;,
        Lcom/android/server/IpSecService$TransformRecord;,
        Lcom/android/server/IpSecService$UdpSocketRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DIRECTIONS:[I

.field static final FREE_PORT_MIN:I = 0x400

.field private static final INADDR_ANY:Ljava/net/InetAddress;

.field private static final MAX_PORT_BIND_ATTEMPTS:I = 0xa

.field private static final NETD_FETCH_TIMEOUT:I = 0x1388

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field static final PORT_MAX:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "IpSecService"

.field private static mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<",
            "Lcom/android/server/IpSecService$SpiRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<",
            "Lcom/android/server/IpSecService$TransformRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<",
            "Lcom/android/server/IpSecService$UdpSocketRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-string/jumbo v1, "IpSecService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/IpSecService;->DBG:Z

    .line 65
    const/4 v1, 0x1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 64
    sput-object v1, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    .line 73
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0xfaded0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-direct {p0}, Landroid/net/IIpSecService$Stub;-><init>()V

    .line 89
    new-instance v0, Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 93
    new-instance v0, Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V

    .line 92
    iput-object v0, p0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 97
    new-instance v0, Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-direct {v0, p0, v1}, Lcom/android/server/IpSecService$ManagedResourceArray;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$ManagedResourceArray;)V

    .line 96
    iput-object v0, p0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 390
    iput-object p1, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    .line 391
    return-void
.end method

.method private bindToRandomPort(Ljava/io/FileDescriptor;)V
    .locals 7
    .param p1, "sockFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    const/16 v1, 0xa

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 513
    :try_start_0
    sget v4, Landroid/system/OsConstants;->AF_INET:I

    sget v5, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v6, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v4, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 514
    .local v3, "probeSocket":Ljava/io/FileDescriptor;
    sget-object v4, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 515
    invoke-static {v3}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 516
    .local v2, "port":I
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 517
    const-string/jumbo v4, "IpSecService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Binding to port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v4, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {p1, v4, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    return-void

    .line 520
    .end local v2    # "port":I
    .end local v3    # "probeSocket":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/system/ErrnoException;
    iget v4, v0, Landroid/system/ErrnoException;->errno:I

    sget v5, Landroid/system/OsConstants;->EADDRINUSE:I

    if-ne v4, v5, :cond_0

    .line 511
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 528
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Failed 10 attempts to bind to a port"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private connectNativeNetdService()V
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lcom/android/server/IpSecService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService$1;-><init>(Lcom/android/server/IpSecService;)V

    invoke-virtual {v0}, Lcom/android/server/IpSecService$1;->start()V

    .line 417
    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/IpSecService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/android/server/IpSecService;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;)V

    .line 395
    .local v0, "service":Lcom/android/server/IpSecService;
    invoke-direct {v0}, Lcom/android/server/IpSecService;->connectNativeNetdService()V

    .line 396
    return-object v0
.end method

.method private declared-synchronized releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V
    .locals 4
    .param p2, "resourceId"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/IpSecService$ManagedResource;",
            ">(",
            "Lcom/android/server/IpSecService$ManagedResourceArray",
            "<TT;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "resArray":Lcom/android/server/IpSecService$ManagedResourceArray;, "Lcom/android/server/IpSecService$ManagedResourceArray<TT;>;"
    monitor-enter p0

    .line 479
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v0

    .line 481
    .local v0, "record":Lcom/android/server/IpSecService$ManagedResource;, "TT;"
    if-nez v0, :cond_0

    .line 482
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not available to be deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "record":Lcom/android/server/IpSecService$ManagedResource;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 486
    .restart local v0    # "record":Lcom/android/server/IpSecService$ManagedResource;, "TT;"
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/IpSecService$ManagedResource;->release()V

    .line 487
    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$ManagedResourceArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 488
    return-void
.end method


# virtual methods
.method public declared-synchronized applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    .locals 13
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-virtual {v0, p2}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v9

    check-cast v9, Lcom/android/server/IpSecService$TransformRecord;

    .line 667
    .local v9, "info":Lcom/android/server/IpSecService$TransformRecord;
    if-nez v9, :cond_0

    .line 668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Transform "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "info":Lcom/android/server/IpSecService$TransformRecord;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 672
    .restart local v9    # "info":Lcom/android/server/IpSecService$TransformRecord;
    :cond_0
    :try_start_1
    iget v0, v9, Lcom/android/server/IpSecService$TransformRecord;->pid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, v9, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 673
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Only the owner of an IpSec Transform may apply it!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_2
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 678
    .local v7, "c":Landroid/net/IpSecConfig;
    :try_start_2
    sget-object v11, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    const/4 v0, 0x0

    array-length v12, v11

    move v10, v0

    :goto_0
    if-ge v10, v12, :cond_5

    aget v3, v11, v10

    .line 679
    .local v3, "direction":I
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    .line 681
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 684
    invoke-virtual {v7}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 685
    invoke-virtual {v7}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 687
    :goto_1
    invoke-virtual {v7}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 688
    invoke-virtual {v7}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 690
    :goto_2
    invoke-virtual {v9, v3}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord(I)Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v6

    move v2, p2

    .line 679
    invoke-interface/range {v0 .. v6}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 678
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 686
    :cond_3
    const-string/jumbo v4, ""

    goto :goto_1

    .line 689
    :cond_4
    const-string/jumbo v5, ""
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 692
    .end local v3    # "direction":I
    :catch_0
    move-exception v8

    :cond_5
    monitor-exit p0

    .line 695
    return-void
.end method

.method public closeUdpEncapsulationSocket(I)V
    .locals 2
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    const-string/jumbo v1, "UdpEncapsulationSocket"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/IpSecService;->releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V

    .line 578
    return-void
.end method

.method public declared-synchronized createTransportModeTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;)Landroid/net/IpSecTransformResponse;
    .locals 30
    .param p1, "c"    # Landroid/net/IpSecConfig;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 590
    :try_start_0
    sget-object v2, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 591
    .local v3, "resourceId":I
    sget-object v2, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    array-length v2, v2

    new-array v0, v2, [Lcom/android/server/IpSecService$SpiRecord;

    move-object/from16 v25, v0

    .line 593
    .local v25, "spis":[Lcom/android/server/IpSecService$SpiRecord;
    const/16 v18, 0x0

    .local v18, "encapLocalPort":I
    const/16 v19, 0x0

    .line 594
    .local v19, "encapRemotePort":I
    const/16 v26, 0x0

    .line 595
    .local v26, "socketRecord":Lcom/android/server/IpSecService$UdpSocketRecord;
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v17

    .line 596
    .local v17, "encapType":I
    if-eqz v17, :cond_0

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapLocalResourceId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v26

    .end local v26    # "socketRecord":Lcom/android/server/IpSecService$UdpSocketRecord;
    check-cast v26, Lcom/android/server/IpSecService$UdpSocketRecord;

    .line 598
    .local v26, "socketRecord":Lcom/android/server/IpSecService$UdpSocketRecord;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/IpSecService$UdpSocketRecord;->getPort()I

    move-result v18

    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v19

    .line 602
    .end local v26    # "socketRecord":Lcom/android/server/IpSecService$UdpSocketRecord;
    :cond_0
    sget-object v21, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    const/4 v2, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v20, v2

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget v5, v21, v20

    .line 603
    .local v5, "direction":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/IpSecConfig;->getAuthentication(I)Landroid/net/IpSecAlgorithm;

    move-result-object v27

    .line 604
    .local v27, "auth":Landroid/net/IpSecAlgorithm;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/IpSecConfig;->getEncryption(I)Landroid/net/IpSecAlgorithm;

    move-result-object v28

    .line 606
    .local v28, "crypt":Landroid/net/IpSecAlgorithm;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/IpSecConfig;->getSpiResourceId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/IpSecService$ManagedResourceArray;->get(I)Lcom/android/server/IpSecService$ManagedResource;

    move-result-object v2

    check-cast v2, Lcom/android/server/IpSecService$SpiRecord;

    aput-object v2, v25, v5

    .line 607
    aget-object v2, v25, v5

    invoke-virtual {v2}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 609
    .local v10, "spi":I
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v4

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 617
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 620
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v8

    .line 624
    :goto_3
    if-eqz v27, :cond_4

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v11

    .line 625
    :goto_4
    if-eqz v27, :cond_5

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v12

    .line 626
    :goto_5
    if-eqz v27, :cond_6

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v13

    .line 627
    :goto_6
    if-eqz v28, :cond_7

    invoke-virtual/range {v28 .. v28}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v14

    .line 628
    :goto_7
    if-eqz v28, :cond_8

    invoke-virtual/range {v28 .. v28}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v15

    .line 629
    :goto_8
    if-eqz v28, :cond_9

    invoke-virtual/range {v28 .. v28}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v16

    .line 609
    :goto_9
    invoke-interface/range {v2 .. v19}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;[BILjava/lang/String;[BIIII)V

    .line 602
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto/16 :goto_0

    .line 616
    :cond_1
    const-string/jumbo v6, ""

    goto :goto_1

    .line 619
    :cond_2
    const-string/jumbo v7, ""

    goto :goto_2

    .line 622
    :cond_3
    const-wide/16 v8, 0x0

    goto :goto_3

    .line 624
    :cond_4
    const-string/jumbo v11, ""

    goto :goto_4

    .line 625
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 626
    :cond_6
    const/4 v13, 0x0

    goto :goto_6

    .line 627
    :cond_7
    const-string/jumbo v14, ""
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 628
    :cond_8
    const/4 v15, 0x0

    goto :goto_8

    .line 629
    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    .line 633
    :catch_0
    move-exception v29

    .line 635
    .local v29, "e":Landroid/os/ServiceSpecificException;
    :try_start_2
    new-instance v2, Landroid/net/IpSecTransformResponse;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/net/IpSecTransformResponse;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 639
    .end local v5    # "direction":I
    .end local v10    # "spi":I
    .end local v27    # "auth":Landroid/net/IpSecAlgorithm;
    .end local v28    # "crypt":Landroid/net/IpSecAlgorithm;
    .end local v29    # "e":Landroid/os/ServiceSpecificException;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 640
    new-instance v20, Lcom/android/server/IpSecService$TransformRecord;

    move-object/from16 v21, p0

    move/from16 v22, v3

    move-object/from16 v23, p2

    move-object/from16 v24, p1

    invoke-direct/range {v20 .. v26}, Lcom/android/server/IpSecService$TransformRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;Landroid/net/IpSecConfig;[Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$UdpSocketRecord;)V

    .line 639
    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Lcom/android/server/IpSecService$ManagedResourceArray;->put(ILcom/android/server/IpSecService$ManagedResource;)V

    .line 641
    new-instance v2, Landroid/net/IpSecTransformResponse;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/net/IpSecTransformResponse;-><init>(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    .end local v3    # "resourceId":I
    .end local v17    # "encapType":I
    .end local v18    # "encapLocalPort":I
    .end local v19    # "encapRemotePort":I
    .end local v25    # "spis":[Lcom/android/server/IpSecService$SpiRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public deleteTransportModeTransform(I)V
    .locals 2
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/IpSecService;->mTransformRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    const-string/jumbo v1, "IpSecTransform"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/IpSecService;->releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V

    .line 653
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string/jumbo v0, "IpSecService Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetdNativeService Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "alive"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 720
    return-void

    .line 718
    :cond_0
    const-string/jumbo v0, "dead"

    goto :goto_0
.end method

.method getNetdInstance()Landroid/net/INetd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    .line 421
    .local v0, "netd":Landroid/net/INetd;
    if-nez v0, :cond_0

    .line 422
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Failed to Get Netd Instance"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_0
    return-object v0
.end method

.method declared-synchronized isNetdAlive()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 429
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 430
    .local v0, "netd":Landroid/net/INetd;
    if-nez v0, :cond_0

    monitor-exit p0

    .line 431
    return v2

    .line 433
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 434
    .end local v0    # "netd":Landroid/net/INetd;
    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    monitor-exit p0

    .line 435
    return v2

    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;
    .locals 8
    .param p1, "port"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 540
    if-eqz p1, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 541
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 542
    const-string/jumbo v1, "Specified port number must be a valid non-reserved UDP port"

    .line 541
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 544
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 545
    .local v2, "resourceId":I
    const/4 v4, 0x0

    .line 547
    .local v4, "sockFd":Ljava/io/FileDescriptor;
    :try_start_2
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v0, v1, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 549
    .local v4, "sockFd":Ljava/io/FileDescriptor;
    if-eqz p1, :cond_2

    .line 550
    const-string/jumbo v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binding to port "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-object v0, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {v4, v0, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 558
    :goto_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    .line 559
    sget v1, Landroid/system/OsConstants;->UDP_ENCAP:I

    .line 560
    sget v3, Landroid/system/OsConstants;->UDP_ENCAP_ESPINUDP:I

    .line 556
    invoke-static {v4, v0, v1, v3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 562
    iget-object v7, p0, Lcom/android/server/IpSecService;->mUdpSocketRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 563
    new-instance v0, Lcom/android/server/IpSecService$UdpSocketRecord;

    move-object v1, p0

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/IpSecService$UdpSocketRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;Ljava/io/FileDescriptor;I)V

    .line 562
    invoke-virtual {v7, v2, v0}, Lcom/android/server/IpSecService$ManagedResourceArray;->put(ILcom/android/server/IpSecService$ManagedResource;)V

    .line 564
    new-instance v0, Landroid/net/IpSecUdpEncapResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, p1, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(IIILjava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 553
    :cond_2
    :try_start_3
    invoke-direct {p0, v4}, Lcom/android/server/IpSecService;->bindToRandomPort(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 565
    .end local v4    # "sockFd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v6

    .line 566
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 570
    new-instance v0, Landroid/net/IpSecUdpEncapResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public releaseSecurityParameterIndex(I)V
    .locals 2
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    const-string/jumbo v1, "SecurityParameterIndex"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/IpSecService;->releaseManagedResource(Lcom/android/server/IpSecService$ManagedResourceArray;ILjava/lang/String;)V

    .line 494
    return-void
.end method

.method public removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    .locals 3
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 707
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/ServiceSpecificException;
    goto :goto_0
.end method

.method public declared-synchronized reserveSecurityParameterIndex(ILjava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;
    .locals 14
    .param p1, "direction"    # I
    .param p2, "remoteAddress"    # Ljava/lang/String;
    .param p3, "requestedSpi"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 444
    :try_start_0
    sget-object v0, Lcom/android/server/IpSecService;->mNextResourceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 446
    .local v1, "resourceId":I
    const/4 v11, 0x0

    .line 447
    .local v11, "spi":I
    const-string/jumbo v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .local v3, "localAddress":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    move v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->ipSecAllocateSpi(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 457
    const-string/jumbo v0, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Allocated SPI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSpiRecords:Lcom/android/server/IpSecService$ManagedResourceArray;

    .line 460
    new-instance v4, Lcom/android/server/IpSecService$SpiRecord;

    move-object v5, p0

    move v6, v1

    move-object/from16 v7, p4

    move v8, p1

    move-object v9, v3

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v11}, Lcom/android/server/IpSecService$SpiRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 458
    invoke-virtual {v0, v1, v4}, Lcom/android/server/IpSecService$ManagedResourceArray;->put(ILcom/android/server/IpSecService$ManagedResource;)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    new-instance v0, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v11}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 465
    :catch_0
    move-exception v12

    .line 466
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v12}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "resourceId":I
    .end local v3    # "localAddress":Ljava/lang/String;
    .end local v11    # "spi":I
    .end local v12    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 461
    .restart local v1    # "resourceId":I
    .restart local v3    # "localAddress":Ljava/lang/String;
    .restart local v11    # "spi":I
    :catch_1
    move-exception v13

    .line 463
    .local v13, "e":Landroid/os/ServiceSpecificException;
    :try_start_4
    new-instance v0, Landroid/net/IpSecSpiResponse;

    .line 464
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 463
    invoke-direct {v0, v2, v4, v11}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string/jumbo v0, "IpSecService"

    const-string/jumbo v1, "IpSecService is ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    const-string/jumbo v0, "IpSecService"

    const-string/jumbo v1, "IpSecService not ready: failed to connect to NetD Native Service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
