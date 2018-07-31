.class public Landroid/telephony/MbmsStreamingSession;
.super Ljava/lang/Object;
.source "MbmsStreamingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MbmsStreamingSession$1;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MbmsStreamingSession"

.field public static final MBMS_STREAMING_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsStreaming"

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

.field private mKnownActiveStreamingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telephony/mbms/StreamingService;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/telephony/mbms/vendor/IMbmsStreamingService;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionId:I


# direct methods
.method static synthetic -get0(Landroid/telephony/MbmsStreamingSession;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "-this"    # Landroid/telephony/MbmsStreamingSession;

    .prologue
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telephony/MbmsStreamingSession;)Landroid/telephony/mbms/InternalStreamingSessionCallback;
    .locals 1
    .param p0, "-this"    # Landroid/telephony/MbmsStreamingSession;

    .prologue
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "-this"    # Landroid/telephony/MbmsStreamingSession;

    .prologue
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telephony/MbmsStreamingSession;)I
    .locals 1
    .param p0, "-this"    # Landroid/telephony/MbmsStreamingSession;

    .prologue
    iget v0, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    return v0
.end method

.method static synthetic -get4()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Landroid/telephony/MbmsStreamingSession;
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/telephony/mbms/MbmsStreamingSessionCallback;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .param p3, "subscriptionId"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    new-instance v0, Landroid/telephony/MbmsStreamingSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsStreamingSession$1;-><init>(Landroid/telephony/MbmsStreamingSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 86
    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    .line 87
    iput p3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 88
    if-nez p4, :cond_0

    .line 89
    new-instance p4, Landroid/os/Handler;

    .end local p4    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    .restart local p4    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-direct {v0, p2, p4}, Landroid/telephony/mbms/InternalStreamingSessionCallback;-><init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    .line 92
    return-void
.end method

.method private bindAndInitialize()I
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.telephony.action.EmbmsStreaming"

    .line 276
    new-instance v2, Landroid/telephony/MbmsStreamingSession$3;

    invoke-direct {v2, p0}, Landroid/telephony/MbmsStreamingSession$3;-><init>(Landroid/telephony/MbmsStreamingSession;)V

    .line 275
    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/telephony/mbms/MbmsStreamingSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsStreamingSession;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .param p2, "subscriptionId"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 121
    sget-object v2, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot create two instances of MbmsStreamingSession"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_0
    new-instance v1, Landroid/telephony/MbmsStreamingSession;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/telephony/MbmsStreamingSession;-><init>(Landroid/content/Context;Landroid/telephony/mbms/MbmsStreamingSessionCallback;ILandroid/os/Handler;)V

    .line 127
    .local v1, "session":Landroid/telephony/MbmsStreamingSession;
    invoke-direct {v1}, Landroid/telephony/MbmsStreamingSession;->bindAndInitialize()I

    move-result v0

    .line 128
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 129
    sget-object v2, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    new-instance v2, Landroid/telephony/MbmsStreamingSession$2;

    invoke-direct {v2, p1, v0}, Landroid/telephony/MbmsStreamingSession$2;-><init>(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    const/4 v2, 0x0

    return-object v2

    .line 138
    :cond_1
    return-object v1
.end method

.method public static create(Landroid/content/Context;Landroid/telephony/mbms/MbmsStreamingSessionCallback;Landroid/os/Handler;)Landroid/telephony/MbmsStreamingSession;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 147
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsStreamingSession;->create(Landroid/content/Context;Landroid/telephony/mbms/MbmsStreamingSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsStreamingSession;

    move-result-object v0

    return-object v0
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 166
    :try_start_0
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .local v3, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-nez v3, :cond_0

    .line 179
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 180
    sget-object v4, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v4}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 169
    return-void

    .line 171
    :cond_0
    :try_start_1
    iget v4, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-interface {v3, v4}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->dispose(I)V

    .line 172
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/StreamingService;

    .line 173
    .local v1, "s":Landroid/telephony/mbms/StreamingService;
    invoke-virtual {v1}, Landroid/telephony/mbms/StreamingService;->getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->stop()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    .end local v1    # "s":Landroid/telephony/mbms/StreamingService;
    .end local v2    # "s$iterator":Ljava/util/Iterator;
    .end local v3    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 180
    sget-object v4, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v4}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 175
    .restart local v2    # "s$iterator":Ljava/util/Iterator;
    .restart local v3    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    :cond_1
    :try_start_2
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 180
    sget-object v4, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v4}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    goto :goto_1

    .line 178
    .end local v2    # "s$iterator":Ljava/util/Iterator;
    .end local v3    # "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    :catchall_0
    move-exception v4

    .line 179
    iget-object v5, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 180
    sget-object v5, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    iget-object v5, p0, Landroid/telephony/MbmsStreamingSession;->mInternalCallback:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-virtual {v5}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->stop()V

    .line 178
    throw v4
.end method

.method public onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V
    .locals 1
    .param p1, "service"    # Landroid/telephony/mbms/StreamingService;

    .prologue
    .line 271
    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public requestUpdateStreamingServices(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "serviceClassList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 200
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 201
    .local v2, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-nez v2, :cond_0

    .line 202
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Middleware not yet bound"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_0
    :try_start_0
    iget v3, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    .line 205
    invoke-interface {v2, v3, p1}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->requestUpdateStreamingServices(ILjava/util/List;)I

    move-result v1

    .line 207
    .local v1, "returnCode":I
    if-eqz v1, :cond_1

    .line 208
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "returnCode":I
    :cond_1
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MbmsStreamingSession"

    const-string/jumbo v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v3, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 213
    sget-object v3, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    const/4 v3, 0x3

    invoke-direct {p0, v3, v5}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public startStreaming(Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/StreamingServiceCallback;Landroid/os/Handler;)Landroid/telephony/mbms/StreamingService;
    .locals 10
    .param p1, "serviceInfo"    # Landroid/telephony/mbms/StreamingServiceInfo;
    .param p2, "callback"    # Landroid/telephony/mbms/StreamingServiceCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 239
    iget-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 240
    .local v2, "streamingService":Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    if-nez v2, :cond_0

    .line 241
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Middleware not yet bound"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    new-instance v5, Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-direct {v5, p2, p3}, Landroid/telephony/mbms/InternalStreamingServiceCallback;-><init>(Landroid/telephony/mbms/StreamingServiceCallback;Landroid/os/Handler;)V

    .line 247
    .local v5, "serviceCallback":Landroid/telephony/mbms/InternalStreamingServiceCallback;
    new-instance v0, Landroid/telephony/mbms/StreamingService;

    .line 248
    iget v1, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    move-object v3, p0

    move-object v4, p1

    .line 247
    invoke-direct/range {v0 .. v5}, Landroid/telephony/mbms/StreamingService;-><init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V

    .line 249
    .local v0, "serviceForApp":Landroid/telephony/mbms/StreamingService;
    iget-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mKnownActiveStreamingServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    :try_start_0
    iget v1, p0, Landroid/telephony/MbmsStreamingSession;->mSubscriptionId:I

    invoke-virtual {p1}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-interface {v2, v1, v3, v5}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I

    move-result v7

    .line 254
    .local v7, "returnCode":I
    if-eqz v7, :cond_1

    .line 255
    const/4 v1, 0x0

    invoke-direct {p0, v7, v1}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-object v8

    .line 258
    .end local v7    # "returnCode":I
    :catch_0
    move-exception v6

    .line 259
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MbmsStreamingSession"

    const-string/jumbo v3, "Remote process died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Landroid/telephony/MbmsStreamingSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 261
    sget-object v1, Landroid/telephony/MbmsStreamingSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 262
    const/4 v1, 0x3

    invoke-direct {p0, v1, v8}, Landroid/telephony/MbmsStreamingSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 263
    return-object v8

    .line 266
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v7    # "returnCode":I
    :cond_1
    return-object v0
.end method
