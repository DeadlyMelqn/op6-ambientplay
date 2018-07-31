.class public Lcom/android/server/NsdService;
.super Landroid/net/nsd/INsdManager$Stub;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$ClientInfo;,
        Lcom/android/server/NsdService$DaemonConnection;,
        Lcom/android/server/NsdService$DaemonConnectionSupplier;,
        Lcom/android/server/NsdService$NativeCallbackReceiver;,
        Lcom/android/server/NsdService$NativeEvent;,
        Lcom/android/server/NsdService$NativeResponseCode;,
        Lcom/android/server/NsdService$NsdSettings;,
        Lcom/android/server/NsdService$NsdStateMachine;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_ID:I = 0x0

.field private static final MDNS_TAG:Ljava/lang/String; = "mDnsConnector"

.field private static final TAG:Ljava/lang/String; = "NsdService"


# instance fields
.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDaemon:Lcom/android/server/NsdService$DaemonConnection;

.field private final mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

.field private final mIdToClientInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

.field private final mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

.field private final mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mUniqueId:I


# direct methods
.method static synthetic -com_android_server_NsdService-mthref-0(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;
    .locals 1

    .prologue
    .line 557
    new-instance v0, Lcom/android/server/NsdService$DaemonConnection;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$DaemonConnection;-><init>(Lcom/android/server/NsdService$NativeCallbackReceiver;)V

    return-object v0
.end method

.method static synthetic -get0(Lcom/android/server/NsdService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;

    .prologue
    iget-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NsdService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;

    .prologue
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;

    .prologue
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/NsdService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;

    .prologue
    iget-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdSettings;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;

    .prologue
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;

    .prologue
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "discoveryId"    # I
    .param p2, "serviceType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "resolveId"    # I
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->getAddrInfo(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/android/server/NsdService;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->notifyEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/NsdService;Landroid/os/Message;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/NsdService;Landroid/os/Message;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/NsdService;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/NsdService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/NsdService;->isNsdEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "regId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "resolveId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "resolveId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "resolveId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopResolveService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "discoveryId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/NsdService;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;
    .param p1, "regId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unregisterService(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/NsdService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/NsdService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/NsdService;->getUniqueId()I

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/NsdService$NsdSettings;Landroid/os/Handler;Lcom/android/server/NsdService$DaemonConnectionSupplier;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/android/server/NsdService$NsdSettings;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "fn"    # Lcom/android/server/NsdService$DaemonConnectionSupplier;

    .prologue
    .line 543
    invoke-direct {p0}, Landroid/net/nsd/INsdManager$Stub;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    .line 544
    iput-object p1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    .line 545
    iput-object p2, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    .line 546
    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine;

    const-string/jumbo v1, "NsdService"

    invoke-direct {v0, p0, v1, p3}, Lcom/android/server/NsdService$NsdStateMachine;-><init>(Lcom/android/server/NsdService;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    .line 547
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v0}, Lcom/android/server/NsdService$NsdStateMachine;->start()V

    .line 548
    new-instance v0, Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NativeCallbackReceiver;-><init>(Lcom/android/server/NsdService;)V

    iput-object v0, p0, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    .line 549
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-interface {p4, v0}, Lcom/android/server/NsdService$DaemonConnectionSupplier;->get(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    .line 550
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NsdService;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-static {p0}, Lcom/android/server/NsdService$NsdSettings;->makeDefault(Landroid/content/Context;)Lcom/android/server/NsdService$NsdSettings;

    move-result-object v2

    .line 554
    .local v2, "settings":Lcom/android/server/NsdService$NsdSettings;
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "NsdService"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 555
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 556
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/NsdService;

    sget-object v4, Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;->$INST$0:Lcom/android/server/-$Lambda$AZbCJpvy__SzB8YDjhldiwCtqD8;

    invoke-direct {v1, p0, v2, v0, v4}, Lcom/android/server/NsdService;-><init>(Landroid/content/Context;Lcom/android/server/NsdService$NsdSettings;Landroid/os/Handler;Lcom/android/server/NsdService$DaemonConnectionSupplier;)V

    .line 558
    .local v1, "service":Lcom/android/server/NsdService;
    iget-object v4, v1, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-virtual {v4}, Lcom/android/server/NsdService$NativeCallbackReceiver;->awaitConnection()V

    .line 559
    return-object v1
.end method

.method private discoverServices(ILjava/lang/String;)Z
    .locals 4
    .param p1, "discoveryId"    # I
    .param p2, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "discover"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getAddrInfo(ILjava/lang/String;)Z
    .locals 4
    .param p1, "resolveId"    # I
    .param p2, "hostname"    # Ljava/lang/String;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "getaddrinfo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getUniqueId()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    return v0

    .line 596
    :cond_0
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    return v0
.end method

.method private isNsdEnabled()Z
    .locals 4

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    invoke-interface {v1}, Lcom/android/server/NsdService$NsdSettings;->isEnabled()Z

    move-result v0

    .line 589
    .local v0, "ret":Z
    const-string/jumbo v2, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network service discovery is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    const-string/jumbo v1, "enabled"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return v0

    .line 589
    :cond_0
    const-string/jumbo v1, "disabled"

    goto :goto_0
.end method

.method private notifyEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    if-eqz p1, :cond_0

    const v0, 0x60018

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    .line 576
    return-void

    .line 575
    :cond_0
    const v0, 0x60019

    goto :goto_0
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 779
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 780
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 781
    return-object v0
.end method

.method private registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 9
    .param p1, "regId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    const/4 v8, 0x0

    .line 717
    const-string/jumbo v5, "NsdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v1

    .line 722
    .local v1, "port":I
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecord()[B

    move-result-object v3

    .line 723
    .local v3, "textRecord":[B
    invoke-static {v3, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\n"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "record":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "register"

    aput-object v7, v6, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    const/4 v7, 0x5

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 785
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    return-void

    .line 786
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 787
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 788
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 789
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 792
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    return-void

    .line 793
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 795
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 796
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 797
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 800
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    return-void

    .line 801
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 802
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 803
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 804
    iget-object v1, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 805
    return-void
.end method

.method private resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .locals 6
    .param p1, "resolveId"    # I
    .param p2, "service"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 747
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "resolve"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const-string/jumbo v4, "local."

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private sendNsdStateChangeBroadcast(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 579
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.nsd.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 581
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 582
    .local v1, "nsdState":I
    :goto_0
    const-string/jumbo v2, "nsd_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    iget-object v2, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 584
    return-void

    .line 581
    .end local v1    # "nsdState":I
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "nsdState":I
    goto :goto_0
.end method

.method private stopGetAddrInfo(I)Z
    .locals 4
    .param p1, "resolveId"    # I

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stop-getaddrinfo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private stopResolveService(I)Z
    .locals 4
    .param p1, "resolveId"    # I

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stop-resolve"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private stopServiceDiscovery(I)Z
    .locals 4
    .param p1, "discoveryId"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stop-discover"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5c

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 520
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 521
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 522
    .local v0, "c":C
    if-ne v0, v5, :cond_3

    .line 523
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 524
    const-string/jumbo v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected end of escape sequence in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v0    # "c":C
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 527
    .restart local v0    # "c":C
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 528
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_3

    if-eq v0, v5, :cond_3

    .line 529
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 530
    const-string/jumbo v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected end of escape sequence in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 533
    :cond_2
    add-int/lit8 v3, v0, -0x30

    mul-int/lit8 v3, v3, 0x64

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v3, v4

    int-to-char v0, v3

    .line 534
    add-int/lit8 v1, v1, 0x2

    .line 537
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private unregisterService(I)Z
    .locals 4
    .param p1, "regId"    # I

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "stop-register"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateService(ILandroid/net/nsd/DnsSdTxtRecord;)Z
    .locals 4
    .param p1, "regId"    # I
    .param p2, "t"    # Landroid/net/nsd/DnsSdTxtRecord;

    .prologue
    const/4 v3, 0x0

    .line 732
    if-nez p2, :cond_0

    .line 733
    return v3

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "update"

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->getRawData()[B

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 766
    iget-object v2, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "NsdService"

    invoke-static {v2, v3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 768
    :cond_0
    iget-object v2, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "client$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 769
    .local v0, "client":Lcom/android/server/NsdService$ClientInfo;
    const-string/jumbo v2, "Client Info"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 773
    .end local v0    # "client":Lcom/android/server/NsdService$ClientInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/NsdService$NsdStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERNET"

    const-string/jumbo v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v1}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    .line 569
    const-string/jumbo v2, "NsdService"

    .line 568
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    invoke-interface {v0, p1}, Lcom/android/server/NsdService$NsdSettings;->putEnabledStatus(Z)V

    .line 571
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->notifyEnabled(Z)V

    .line 572
    return-void
.end method
