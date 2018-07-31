.class public Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;
.super Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;
.source "MbmsStreamingServiceBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose(I)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    return-void
.end method

.method public getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public final initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I
    .locals 4
    .param p1, "callback"    # Landroid/telephony/mbms/IMbmsStreamingSessionCallback;
    .param p2, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 69
    .local v0, "uid":I
    invoke-interface {p1}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;

    invoke-direct {v2, p0, v0, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$1;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;II)V

    .line 74
    const/4 v3, 0x0

    .line 69
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 76
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$2;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IMbmsStreamingSessionCallback;II)V

    invoke-virtual {p0, v1, p2}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->initialize(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)I

    move-result v1

    return v1
.end method

.method public initialize(Landroid/telephony/mbms/MbmsStreamingSessionCallback;I)I
    .locals 1
    .param p1, "callback"    # Landroid/telephony/mbms/MbmsStreamingSessionCallback;
    .param p2, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onAppCallbackDied(II)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "subscriptionId"    # I

    .prologue
    .line 268
    return-void
.end method

.method public requestUpdateStreamingServices(ILjava/util/List;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "serviceClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
    .locals 4
    .param p1, "subscriptionId"    # I
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/telephony/mbms/IStreamingServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 156
    .local v0, "uid":I
    invoke-interface {p3}, Landroid/telephony/mbms/IStreamingServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;

    invoke-direct {v2, p0, v0, p1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$3;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;II)V

    .line 161
    const/4 v3, 0x0

    .line 156
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 163
    new-instance v1, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;

    invoke-direct {v1, p0, p3, v0, p1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase$4;-><init>(Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;Landroid/telephony/mbms/IStreamingServiceCallback;II)V

    invoke-virtual {p0, p1, p2, v1}, Landroid/telephony/mbms/vendor/MbmsStreamingServiceBase;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/StreamingServiceCallback;)I

    move-result v1

    return v1
.end method

.method public startStreaming(ILjava/lang/String;Landroid/telephony/mbms/StreamingServiceCallback;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/telephony/mbms/StreamingServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public stopStreaming(ILjava/lang/String;)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .param p2, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    return-void
.end method
