.class public Landroid/net/lowpan/LowpanInterface;
.super Ljava/lang/Object;
.source "LowpanInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanInterface$Callback;
    }
.end annotation


# static fields
.field public static final EMPTY_PARTITION_ID:Ljava/lang/String; = ""

.field public static final NETWORK_TYPE_THREAD_V1:Ljava/lang/String; = "org.threadgroup.thread.v1"

.field public static final ROLE_COORDINATOR:Ljava/lang/String; = "coordinator"

.field public static final ROLE_DETACHED:Ljava/lang/String; = "detached"

.field public static final ROLE_END_DEVICE:Ljava/lang/String; = "end-device"

.field public static final ROLE_LEADER:Ljava/lang/String; = "leader"

.field public static final ROLE_ROUTER:Ljava/lang/String; = "router"

.field public static final ROLE_SLEEPY_END_DEVICE:Ljava/lang/String; = "sleepy-end-device"

.field public static final ROLE_SLEEPY_ROUTER:Ljava/lang/String; = "sleepy-router"

.field public static final STATE_ATTACHED:Ljava/lang/String; = "attached"

.field public static final STATE_ATTACHING:Ljava/lang/String; = "attaching"

.field public static final STATE_COMMISSIONING:Ljava/lang/String; = "commissioning"

.field public static final STATE_FAULT:Ljava/lang/String; = "fault"

.field public static final STATE_OFFLINE:Ljava/lang/String; = "offline"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private final mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/lowpan/ILowpanInterfaceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;
    .locals 1
    .param p0, "-this"    # Landroid/net/lowpan/LowpanInterface;

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Landroid/net/lowpan/LowpanInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanInterface;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/lowpan/ILowpanInterface;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    .line 201
    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 202
    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    .line 203
    return-void
.end method


# virtual methods
.method public addExternalRoute(Landroid/net/IpPrefix;I)V
    .locals 3
    .param p1, "prefix"    # Landroid/net/IpPrefix;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 797
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->addExternalRoute(Landroid/net/IpPrefix;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    return-void

    .line 802
    :catch_0
    move-exception v1

    .line 803
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 799
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 800
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    .locals 3
    .param p1, "prefix"    # Landroid/net/IpPrefix;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 760
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    return-void

    .line 765
    :catch_0
    move-exception v1

    .line 766
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 762
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 763
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public attach(Landroid/net/lowpan/LowpanProvision;)V
    .locals 3
    .param p1, "provision"    # Landroid/net/lowpan/LowpanProvision;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 269
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->attach(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return-void

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 271
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 272
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public createScanner()Landroid/net/lowpan/LowpanScanner;
    .locals 2

    .prologue
    .line 708
    new-instance v0, Landroid/net/lowpan/LowpanScanner;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanScanner;-><init>(Landroid/net/lowpan/ILowpanInterface;)V

    return-object v0
.end method

.method public form(Landroid/net/lowpan/LowpanProvision;)V
    .locals 3
    .param p1, "provision"    # Landroid/net/lowpan/LowpanProvision;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->form(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    return-void

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 232
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 233
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getLinkAddresses()[Landroid/net/LinkAddress;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 720
    :try_start_0
    iget-object v7, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v7}, Landroid/net/lowpan/ILowpanInterface;->getLinkAddresses()[Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "linkAddressStrings":[Ljava/lang/String;
    array-length v7, v2

    new-array v3, v7, [Landroid/net/LinkAddress;

    .line 722
    .local v3, "ret":[Landroid/net/LinkAddress;
    const/4 v0, 0x0

    .line 723
    .local v0, "i":I
    const/4 v7, 0x0

    array-length v8, v2

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    .line 724
    .local v4, "str":Ljava/lang/String;
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    aput-object v9, v3, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    add-int/lit8 v7, v7, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 726
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 731
    .end local v1    # "i":I
    .end local v2    # "linkAddressStrings":[Ljava/lang/String;
    .end local v3    # "ret":[Landroid/net/LinkAddress;
    :catch_0
    move-exception v6

    .line 732
    .local v6, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v6}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v7

    throw v7

    .line 728
    .end local v6    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v5

    .line 729
    .local v5, "x":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
.end method

.method public getLinkNetworks()[Landroid/net/IpPrefix;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 743
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getLinkNetworks()[Landroid/net/IpPrefix;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 748
    :catch_0
    move-exception v1

    .line 749
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 745
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 746
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getLowpanCredential()Landroid/net/lowpan/LowpanCredential;
    .locals 2

    .prologue
    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v1}, Landroid/net/lowpan/ILowpanInterface;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .locals 3

    .prologue
    .line 484
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 486
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 487
    .local v0, "x":Landroid/os/DeadObjectException;
    new-instance v2, Landroid/net/lowpan/LowpanIdentity;

    invoke-direct {v2}, Landroid/net/lowpan/LowpanIdentity;-><init>()V

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 344
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 345
    .local v0, "x":Landroid/os/DeadObjectException;
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getPartitionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 471
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getPartitionId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 473
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 474
    .local v0, "x":Landroid/os/DeadObjectException;
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getRole()Ljava/lang/String;
    .locals 3

    .prologue
    .line 498
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getRole()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 500
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 501
    .local v0, "x":Landroid/os/DeadObjectException;
    const-string/jumbo v2, "detached"

    return-object v2
.end method

.method public getService()Landroid/net/lowpan/ILowpanInterface;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 458
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 460
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 461
    .local v0, "x":Landroid/os/DeadObjectException;
    const-string/jumbo v2, "fault"

    return-object v2
.end method

.method public getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 533
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 535
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 536
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getSupportedNetworkTypes()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 521
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->getSupportedNetworkTypes()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 523
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 524
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isCommissioned()Z
    .locals 3

    .prologue
    .line 432
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->isCommissioned()Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 434
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 435
    .local v0, "x":Landroid/os/DeadObjectException;
    const/4 v2, 0x0

    return v2
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    .line 416
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->isConnected()Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 418
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 419
    .local v0, "x":Landroid/os/DeadObjectException;
    const/4 v2, 0x0

    return v2
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 360
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 362
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 363
    .local v0, "x":Landroid/os/DeadObjectException;
    const/4 v2, 0x0

    return v2
.end method

.method public isUp()Z
    .locals 3

    .prologue
    .line 398
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->isUp()Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 400
    .end local v1    # "x":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 401
    .local v0, "x":Landroid/os/DeadObjectException;
    const/4 v2, 0x0

    return v2
.end method

.method public join(Landroid/net/lowpan/LowpanProvision;)V
    .locals 3
    .param p1, "provision"    # Landroid/net/lowpan/LowpanProvision;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->join(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 252
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public leave()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 287
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->leave()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    return-void

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 289
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 290
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;

    .prologue
    .line 667
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V

    .line 668
    return-void
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 557
    new-instance v0, Landroid/net/lowpan/LowpanInterface$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/lowpan/LowpanInterface$1;-><init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V

    .line 647
    .local v0, "listenerBinder":Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, v0}, Landroid/net/lowpan/ILowpanInterface;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    iget-object v3, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 653
    :try_start_1
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 655
    return-void

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 652
    .end local v1    # "x":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeExternalRoute(Landroid/net/IpPrefix;)V
    .locals 4
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .prologue
    .line 814
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->removeExternalRoute(Landroid/net/IpPrefix;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v1

    .line 821
    .local v1, "x":Landroid/os/ServiceSpecificException;
    sget-object v2, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 816
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 817
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    .locals 4
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .prologue
    .line 778
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v1

    .line 785
    .local v1, "x":Landroid/os/ServiceSpecificException;
    sget-object v2, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 781
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2}, Landroid/net/lowpan/ILowpanInterface;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return-void

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 328
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 329
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 381
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    return-void

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 383
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 384
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)Landroid/net/lowpan/LowpanCommissioningSession;
    .locals 5
    .param p1, "beaconInfo"    # Landroid/net/lowpan/LowpanBeaconInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 304
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, p1}, Landroid/net/lowpan/ILowpanInterface;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    .line 306
    new-instance v2, Landroid/net/lowpan/LowpanCommissioningSession;

    iget-object v3, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3, p1, v4}, Landroid/net/lowpan/LowpanCommissioningSession;-><init>(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanBeaconInfo;Landroid/os/Looper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v1}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v2

    throw v2

    .line 308
    .end local v1    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 309
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterCallback(Landroid/net/lowpan/LowpanInterface$Callback;)V
    .locals 7
    .param p1, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;

    .prologue
    .line 679
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 680
    .local v0, "hashCode":I
    iget-object v5, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 681
    :try_start_0
    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/ILowpanInterfaceListener;

    .line 683
    .local v1, "listenerBinder":Landroid/net/lowpan/ILowpanInterfaceListener;
    if-eqz v1, :cond_0

    .line 684
    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :try_start_1
    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v4, v1}, Landroid/net/lowpan/ILowpanInterface;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v5

    .line 696
    return-void

    .line 691
    :catch_0
    move-exception v3

    .line 692
    .local v3, "x":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    .end local v1    # "listenerBinder":Landroid/net/lowpan/ILowpanInterfaceListener;
    .end local v3    # "x":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 688
    .restart local v1    # "listenerBinder":Landroid/net/lowpan/ILowpanInterfaceListener;
    :catch_1
    move-exception v2

    .local v2, "x":Landroid/os/DeadObjectException;
    goto :goto_0
.end method
