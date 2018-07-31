.class Lcom/android/server/broadcastradio/Tuner;
.super Landroid/hardware/radio/ITuner$Stub;
.source "Tuner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadioService.Tuner"


# instance fields
.field private final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIsClosed:Z

.field private mIsMuted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNativeContext:J

.field private mRegion:I

.field private final mTunerCallback:Lcom/android/server/broadcastradio/TunerCallback;

.field private final mWithAudio:Z


# direct methods
.method constructor <init>(Landroid/hardware/radio/ITunerCallback;IIZI)V
    .locals 4
    .param p1, "clientCallback"    # Landroid/hardware/radio/ITunerCallback;
    .param p2, "halRev"    # I
    .param p3, "region"    # I
    .param p4, "withAudio"    # Z
    .param p5, "band"    # I

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    .line 41
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    .line 46
    iput-boolean v2, p0, Lcom/android/server/broadcastradio/Tuner;->mIsClosed:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/server/broadcastradio/Tuner;->mIsMuted:Z

    .line 53
    iput-object p1, p0, Lcom/android/server/broadcastradio/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 54
    new-instance v1, Lcom/android/server/broadcastradio/TunerCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/broadcastradio/TunerCallback;-><init>(Lcom/android/server/broadcastradio/Tuner;Landroid/hardware/radio/ITunerCallback;I)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/TunerCallback;

    .line 55
    iput p3, p0, Lcom/android/server/broadcastradio/Tuner;->mRegion:I

    .line 56
    iput-boolean p4, p0, Lcom/android/server/broadcastradio/Tuner;->mWithAudio:Z

    .line 57
    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/broadcastradio/Tuner;->nativeInit(IZI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    .line 58
    new-instance v1, Lcom/android/server/broadcastradio/-$Lambda$B3g7x97xEp_kpgRrmZTNuVQljJA;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/-$Lambda$B3g7x97xEp_kpgRrmZTNuVQljJA;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v1}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/Tuner;->close()V

    goto :goto_0
.end method

.method private checkNotClosedLocked()V
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tuner is closed, no further operations are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    return-void
.end method

.method private native nativeCancel(J)V
.end method

.method private native nativeCancelAnnouncement(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;
.end method

.method private native nativeGetImage(JI)[B
.end method

.method private native nativeGetProgramInformation(J)Landroid/hardware/radio/RadioManager$ProgramInfo;
.end method

.method private native nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeInit(IZI)J
.end method

.method private native nativeIsAnalogForced(J)Z
.end method

.method private native nativeIsAntennaConnected(J)Z
.end method

.method private native nativeScan(JZZ)V
.end method

.method private native nativeSetAnalogForced(JZ)V
.end method

.method private native nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V
.end method

.method private native nativeSetMuted(JZ)V
.end method

.method private native nativeStartBackgroundScan(J)Z
.end method

.method private native nativeStep(JZZ)V
.end method

.method private native nativeTune(JLandroid/hardware/radio/ProgramSelector;)V
.end method


# virtual methods
.method synthetic -com_android_server_broadcastradio_Tuner-mthref-0()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/Tuner;->close()V

    return-void
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 201
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeCancel(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 203
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelAnnouncement()V
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 209
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeCancelAnnouncement(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 211
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsClosed:Z

    .line 106
    iget-object v0, p0, Lcom/android/server/broadcastradio/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/TunerCallback;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/TunerCallback;->detach()V

    .line 107
    iget-object v0, p0, Lcom/android/server/broadcastradio/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/broadcastradio/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 108
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeClose(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 110
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/Tuner;->nativeFinalize(J)V

    .line 69
    invoke-super {p0}, Landroid/hardware/radio/ITuner$Stub;->finalize()V

    .line 70
    return-void
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 139
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    iget v0, p0, Lcom/android/server/broadcastradio/Tuner;->mRegion:I

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/broadcastradio/Tuner;->nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Image ID is missing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 229
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeGetImage(JI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "rawImage":[B
    monitor-exit v2

    .line 231
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 232
    :cond_1
    return-object v6

    .line 228
    .end local v0    # "rawImage":[B
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 235
    .restart local v0    # "rawImage":[B
    :cond_2
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 217
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeGetProgramInformation(J)Landroid/hardware/radio/RadioManager$ProgramInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getProgramList(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .param p1, "vendorFilter"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    move-object v1, p1

    .line 249
    .local v1, "sFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 251
    iget-wide v4, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 252
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    if-nez v0, :cond_0

    .line 253
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Program list is not ready"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioManager$ProgramInfo;>;"
    :cond_0
    monitor-exit v3

    .line 255
    return-object v0
.end method

.method public isAnalogForced()Z
    .locals 4

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 263
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeIsAnalogForced(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isAntennaConnected()Z
    .locals 4

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 279
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeIsAntennaConnected(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsClosed:Z

    return v0
.end method

.method public isMuted()Z
    .locals 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mWithAudio:Z

    if-nez v0, :cond_0

    .line 160
    const-string/jumbo v0, "BroadcastRadioService.Tuner"

    const-string/jumbo v1, "Tuner did not request audio, pretending it was muted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 165
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsMuted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public scan(ZZ)V
    .locals 4
    .param p1, "directionDown"    # Z
    .param p2, "skipSubChannel"    # Z

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 181
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/server/broadcastradio/Tuner;->nativeScan(JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 183
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAnalogForced(Z)V
    .locals 4
    .param p1, "isForced"    # Z

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 271
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeSetAnalogForced(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 273
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 4
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The argument must not be a null pointer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 130
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V

    .line 131
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getRegion()I

    move-result v0

    iput v0, p0, Lcom/android/server/broadcastradio/Tuner;->mRegion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 133
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMuted(Z)V
    .locals 4
    .param p1, "mute"    # Z

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mWithAudio:Z

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t operate on mute - no audio requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 150
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsMuted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    monitor-exit v1

    return-void

    .line 151
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/Tuner;->mIsMuted:Z

    .line 153
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeSetMuted(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 155
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startBackgroundScan()Z
    .locals 4

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 242
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeStartBackgroundScan(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public step(ZZ)V
    .locals 4
    .param p1, "directionDown"    # Z
    .param p2, "skipSubChannel"    # Z

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 173
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/server/broadcastradio/Tuner;->nativeStep(JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 175
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .locals 4
    .param p1, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The argument must not be a null pointer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    const-string/jumbo v0, "BroadcastRadioService.Tuner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tuning to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    .line 193
    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeTune(JLandroid/hardware/radio/ProgramSelector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 195
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
