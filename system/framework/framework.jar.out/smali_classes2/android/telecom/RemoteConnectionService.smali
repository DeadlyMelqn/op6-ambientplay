.class final Landroid/telecom/RemoteConnectionService;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnectionService$1;,
        Landroid/telecom/RemoteConnectionService$2;
    }
.end annotation


# static fields
.field private static final NULL_CONFERENCE:Landroid/telecom/RemoteConference;

.field private static final NULL_CONNECTION:Landroid/telecom/RemoteConnection;


# instance fields
.field private final mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/RemoteConference;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

.field private final mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

.field private final mPendingConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mServant:Landroid/telecom/ConnectionServiceAdapterServant;

.field private final mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;


# direct methods
.method static synthetic -get0()Landroid/telecom/RemoteConference;
    .locals 1

    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method static synthetic -get1()Landroid/telecom/RemoteConnection;
    .locals 1

    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/RemoteConnectionService;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/RemoteConnectionService;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Landroid/telecom/RemoteConnectionService;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/RemoteConnectionService;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get5(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/RemoteConnectionService;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    return-object v0
.end method

.method static synthetic -get6(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/RemoteConnectionService;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    return-object v0
.end method

.method static synthetic -get7(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/RemoteConnectionService;

    .prologue
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/RemoteConnectionService;
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    .locals 1
    .param p0, "-this"    # Landroid/telecom/RemoteConnectionService;
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "-this"    # Landroid/telecom/RemoteConnectionService;
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/RemoteConnectionService;->hasConnection(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/telecom/RemoteConnectionService;)V
    .locals 0
    .param p0, "-this"    # Landroid/telecom/RemoteConnectionService;

    .prologue
    invoke-direct {p0}, Landroid/telecom/RemoteConnectionService;->maybeDisconnectAdapter()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v2, Landroid/telecom/RemoteConnection;

    const-string/jumbo v3, "NULL"

    move-object v0, v1

    check-cast v0, Landroid/telecom/ConnectionRequest;

    invoke-direct {v2, v3, v1, v0}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V

    .line 47
    sput-object v2, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    .line 51
    new-instance v0, Landroid/telecom/RemoteConference;

    const-string/jumbo v2, "NULL"

    invoke-direct {v0, v2, v1}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    .line 50
    sput-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "outgoingConnectionServiceRpc"    # Lcom/android/internal/telecom/IConnectionService;
    .param p2, "ourConnectionServiceImpl"    # Landroid/telecom/ConnectionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/telecom/RemoteConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionService$1;-><init>(Landroid/telecom/RemoteConnectionService;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 463
    new-instance v0, Landroid/telecom/ConnectionServiceAdapterServant;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionServiceAdapterServant;-><init>(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 462
    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 465
    new-instance v0, Landroid/telecom/RemoteConnectionService$2;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionService$2;-><init>(Landroid/telecom/RemoteConnectionService;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    .line 485
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    .line 490
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    .line 491
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 492
    iput-object p2, p0, Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    .line 493
    return-void
.end method

.method private findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 558
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference;

    return-object v0

    .line 561
    :cond_0
    const-string/jumbo v0, "%s - Cannot find Conference %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method private findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 549
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection;

    return-object v0

    .line 552
    :cond_0
    const-string/jumbo v0, "%s - Cannot find Connection %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    return-object v0
.end method

.method private hasConnection(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 544
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private maybeDisconnectAdapter()V
    .locals 4

    .prologue
    .line 566
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-virtual {v2}, Landroid/telecom/ConnectionServiceAdapterServant;->getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v2

    .line 569
    const/4 v3, 0x0

    .line 568
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method final createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;
    .locals 9
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "isIncoming"    # Z

    .prologue
    .line 504
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "id":Ljava/lang/String;
    new-instance v0, Landroid/telecom/ConnectionRequest$Builder;

    invoke-direct {v0}, Landroid/telecom/ConnectionRequest$Builder;-><init>()V

    .line 506
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 508
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 509
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v1

    .line 505
    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setVideoState(I)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getRttPipeFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setRttPipeFromInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 511
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getRttPipeToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionRequest$Builder;->setRttPipeToInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionRequest$Builder;->build()Landroid/telecom/ConnectionRequest;

    move-result-object v3

    .line 514
    .local v3, "newRequest":Landroid/telecom/ConnectionRequest;
    :try_start_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-virtual {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    .line 516
    const/4 v4, 0x0

    .line 515
    invoke-interface {v0, v1, v4}, Lcom/android/internal/telecom/IConnectionService;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 519
    :cond_0
    new-instance v7, Landroid/telecom/RemoteConnection;

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-direct {v7, v2, v0, v3}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V

    .line 520
    .local v7, "connection":Landroid/telecom/RemoteConnection;
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    .line 527
    const/4 v5, 0x0

    .line 528
    const/4 v6, 0x0

    move-object v1, p1

    move v4, p3

    .line 522
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telecom/IConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 529
    new-instance v0, Landroid/telecom/RemoteConnectionService$3;

    invoke-direct {v0, p0, v2}, Landroid/telecom/RemoteConnectionService$3;-><init>(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    return-object v7

    .line 537
    .end local v7    # "connection":Landroid/telecom/RemoteConnection;
    :catch_0
    move-exception v8

    .line 539
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    .line 538
    invoke-static {v0}, Landroid/telecom/RemoteConnection;->failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[RemoteCS - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
