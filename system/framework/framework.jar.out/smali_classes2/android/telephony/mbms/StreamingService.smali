.class public Landroid/telephony/mbms/StreamingService;
.super Ljava/lang/Object;
.source "StreamingService.java"


# static fields
.field public static final BROADCAST_METHOD:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MbmsStreamingService"

.field public static final REASON_BY_USER_REQUEST:I = 0x1

.field public static final REASON_END_OF_SESSION:I = 0x2

.field public static final REASON_FREQUENCY_CONFLICT:I = 0x3

.field public static final REASON_LEFT_MBMS_BROADCAST_AREA:I = 0x6

.field public static final REASON_NONE:I = 0x0

.field public static final REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE:I = 0x5

.field public static final REASON_OUT_OF_MEMORY:I = 0x4

.field public static final STATE_STALLED:I = 0x3

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field public static final UNICAST_METHOD:I = 0x2


# instance fields
.field private final mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field private final mParentSession:Landroid/telephony/MbmsStreamingSession;

.field private mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

.field private final mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

.field private final mSubscriptionId:I


# direct methods
.method public constructor <init>(ILandroid/telephony/mbms/vendor/IMbmsStreamingService;Landroid/telephony/MbmsStreamingSession;Landroid/telephony/mbms/StreamingServiceInfo;Landroid/telephony/mbms/InternalStreamingServiceCallback;)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .param p2, "service"    # Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .param p3, "session"    # Landroid/telephony/MbmsStreamingSession;
    .param p4, "streamingServiceInfo"    # Landroid/telephony/mbms/StreamingServiceInfo;
    .param p5, "callback"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    .line 122
    iput-object p3, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    .line 123
    iput-object p2, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 124
    iput-object p4, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    .line 125
    iput-object p5, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .line 126
    return-void
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public getCallback()Landroid/telephony/mbms/InternalStreamingServiceCallback;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mCallback:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    return-object v0
.end method

.method public getInfo()Landroid/telephony/mbms/StreamingServiceInfo;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    return-object v0
.end method

.method public getPlaybackUri()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No streaming service attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget v2, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iget-object v3, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    invoke-virtual {v3}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MbmsStreamingService"

    const-string/jumbo v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object v4, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 146
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 147
    const/4 v1, 0x3

    invoke-direct {p0, v1, v4}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V

    .line 148
    return-object v4
.end method

.method public stopStreaming()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No streaming service attached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    iget v2, p0, Landroid/telephony/mbms/StreamingService;->mSubscriptionId:I

    iget-object v3, p0, Landroid/telephony/mbms/StreamingService;->mServiceInfo:Landroid/telephony/mbms/StreamingServiceInfo;

    invoke-virtual {v3}, Landroid/telephony/mbms/StreamingServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->stopStreaming(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 179
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MbmsStreamingService"

    const-string/jumbo v2, "Remote process died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/mbms/StreamingService;->mService:Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    .line 175
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/telephony/mbms/StreamingService;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    iget-object v1, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v1, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    goto :goto_0

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 177
    iget-object v2, p0, Landroid/telephony/mbms/StreamingService;->mParentSession:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v2, p0}, Landroid/telephony/MbmsStreamingSession;->onStreamingServiceStopped(Landroid/telephony/mbms/StreamingService;)V

    .line 176
    throw v1
.end method
