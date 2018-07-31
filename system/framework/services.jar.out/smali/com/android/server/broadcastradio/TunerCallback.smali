.class Lcom/android/server/broadcastradio/TunerCallback;
.super Ljava/lang/Object;
.source "TunerCallback.java"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadioService.TunerCallback"


# instance fields
.field private final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field private final mNativeContext:J

.field private final mTuner:Lcom/android/server/broadcastradio/Tuner;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/Tuner;Landroid/hardware/radio/ITunerCallback;I)V
    .locals 2
    .param p1, "tuner"    # Lcom/android/server/broadcastradio/Tuner;
    .param p2, "clientCallback"    # Landroid/hardware/radio/ITunerCallback;
    .param p3, "halRev"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/broadcastradio/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/Tuner;

    .line 42
    iput-object p2, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/android/server/broadcastradio/TunerCallback;->nativeInit(Lcom/android/server/broadcastradio/Tuner;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mNativeContext:J

    .line 44
    return-void
.end method

.method private dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V
    .locals 3
    .param p1, "func"    # Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;

    .prologue
    .line 66
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BroadcastRadioService.TunerCallback"

    const-string/jumbo v2, "client died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleHwFailure()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->onError(I)V

    .line 75
    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/Tuner;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/Tuner;->close()V

    .line 76
    return-void
.end method

.method private native nativeDetach(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit(Lcom/android/server/broadcastradio/Tuner;I)J
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not a binder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/TunerCallback;->nativeDetach(J)V

    .line 58
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/TunerCallback;->nativeFinalize(J)V

    .line 49
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 50
    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_2499(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_2650(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_2820(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_2972(Z)V
    .locals 1
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onTrafficAnnouncement(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_3122(Z)V
    .locals 1
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onEmergencyAnnouncement(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_3268(Z)V
    .locals 1
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_3430(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanAvailabilityChange(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_3585()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method

.method synthetic lambda$-com_android_server_broadcastradio_TunerCallback_3715()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/broadcastradio/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->onProgramListChanged()V

    return-void
.end method

.method public onAntennaState(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 105
    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;-><init>(BZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    .line 106
    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .locals 2
    .param p1, "isAvailable"    # Z

    .prologue
    .line 110
    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;-><init>(BZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    .line 111
    return-void
.end method

.method public onBackgroundScanComplete()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    .line 116
    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 2
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .prologue
    .line 85
    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    .line 86
    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .prologue
    .line 90
    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    .line 91
    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 100
    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;-><init>(BZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    .line 101
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 80
    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$2;

    invoke-direct {v0, p1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$2;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    .line 81
    return-void
.end method

.method public onProgramListChanged()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;-><init>(BLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    .line 121
    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 95
    new-instance v0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;-><init>(BZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/broadcastradio/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;)V

    .line 96
    return-void
.end method
