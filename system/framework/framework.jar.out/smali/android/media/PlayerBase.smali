.class public abstract Landroid/media/PlayerBase;
.super Ljava/lang/Object;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerBase$IAppOpsCallbackWrapper;,
        Landroid/media/PlayerBase$IPlayerWrapper;,
        Landroid/media/PlayerBase$PlayerIdCard;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_APP_OPS:Z = false

.field private static final TAG:Ljava/lang/String; = "PlayerBase"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field protected mAttributes:Landroid/media/AudioAttributes;

.field protected mAuxEffectSendLevel:F

.field private mHasAppOpsPlayAudio:Z

.field private final mImplType:I

.field protected mLeftVolume:F

.field private final mLock:Ljava/lang/Object;

.field private mPanMultiplierL:F

.field private mPanMultiplierR:F

.field private mPlayerIId:I

.field protected mRightVolume:F

.field private mStartDelayMs:I

.field private mState:I


# direct methods
.method static synthetic -wrap0(Landroid/media/PlayerBase;)V
    .locals 0
    .param p0, "-this"    # Landroid/media/PlayerBase;

    .prologue
    invoke-direct {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio()V

    return-void
.end method

.method constructor <init>(Landroid/media/AudioAttributes;I)V
    .locals 3
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .param p2, "implType"    # I

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 58
    iput v1, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 64
    iput-boolean v2, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    .line 73
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 74
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 86
    iput p2, p0, Landroid/media/PlayerBase;->mImplType:I

    .line 87
    iput v2, p0, Landroid/media/PlayerBase;->mState:I

    .line 88
    return-void
.end method

.method public static deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "streamType"    # I
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "opName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 578
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use of STREAM_ACCESSIBILITY is reserved for volume control"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_0
    const-string/jumbo v0, "Use of stream types is deprecated for operations other than volume control"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "See the documentation of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for what to use instead with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 585
    const-string/jumbo v1, "android.media.AudioAttributes to qualify your playback use case"

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 337
    sget-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_0

    .line 338
    sget-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    return-object v1

    .line 340
    :cond_0
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 341
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    .line 342
    sget-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private updateAppOpsPlayAudio()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 253
    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method basePause()V
    .locals 5

    .prologue
    .line 168
    :try_start_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    const/4 v1, 0x3

    :try_start_1
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 170
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v3, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget v4, p0, Landroid/media/PlayerBase;->mState:I

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->playerEvent(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 175
    :goto_0
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PlayerBase"

    const-string/jumbo v2, "Error talking to audio service, PAUSED state will not be tracked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected baseRegisterPlayer()V
    .locals 8

    .prologue
    .line 94
    const/4 v2, -0x1

    .line 95
    .local v2, "newPiid":I
    const-string/jumbo v3, "appops"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 96
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    iput-object v3, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 98
    invoke-direct {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio()V

    .line 100
    new-instance v3, Landroid/media/PlayerBase$IAppOpsCallbackWrapper;

    invoke-direct {v3, p0}, Landroid/media/PlayerBase$IAppOpsCallbackWrapper;-><init>(Landroid/media/PlayerBase;)V

    iput-object v3, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 102
    :try_start_0
    iget-object v3, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 103
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 102
    const/16 v6, 0x1c

    invoke-interface {v3, v6, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v3

    .line 109
    new-instance v4, Landroid/media/PlayerBase$PlayerIdCard;

    iget v5, p0, Landroid/media/PlayerBase;->mImplType:I

    iget-object v6, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    new-instance v7, Landroid/media/PlayerBase$IPlayerWrapper;

    invoke-direct {v7, p0}, Landroid/media/PlayerBase$IPlayerWrapper;-><init>(Landroid/media/PlayerBase;)V

    invoke-direct {v4, v5, v6, v7}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;)V

    .line 108
    invoke-interface {v3, v4}, Landroid/media/IAudioService;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 113
    :goto_1
    iput v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    .line 114
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    goto :goto_0

    .line 110
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 111
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PlayerBase"

    const-string/jumbo v4, "Error talking to audio service, player will not be tracked"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method baseRelease()V
    .locals 5

    .prologue
    .line 231
    :try_start_0
    iget-object v3, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :try_start_1
    iget v2, p0, Landroid/media/PlayerBase;->mState:I

    if-eqz v2, :cond_0

    .line 233
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v2

    iget v4, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v2, v4}, Landroid/media/IAudioService;->releasePlayer(I)V

    .line 234
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 241
    :goto_0
    :try_start_3
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 247
    :cond_1
    :goto_1
    return-void

    .line 231
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerBase"

    const-string/jumbo v3, "Error talking to audio service, the player will still be tracked"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 244
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method baseSetAuxEffectSendLevel(F)I
    .locals 3
    .param p1, "level"    # F

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    .line 217
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 218
    return v2

    :cond_0
    monitor-exit v1

    .line 221
    invoke-virtual {p0, v2, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I

    move-result v0

    return v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method baseSetPan(F)V
    .locals 4
    .param p1, "pan"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 190
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 191
    .local v0, "p":F
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 192
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 193
    sub-float v1, v3, v0

    :try_start_0
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 194
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 200
    iget v1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    iget v2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    invoke-virtual {p0, v1, v2}, Landroid/media/PlayerBase;->baseSetVolume(FF)V

    .line 201
    return-void

    .line 196
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_1
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    .line 197
    add-float v1, v3, v0

    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method baseSetStartDelayMs(I)V
    .locals 2
    .param p1, "delayMs"    # I

    .prologue
    .line 154
    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/PlayerBase;->mStartDelayMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 157
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method baseSetVolume(FF)V
    .locals 3
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 205
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 206
    :try_start_0
    iput p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    .line 207
    iput p2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    .line 208
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "isRestricted":Z
    monitor-exit v2

    .line 211
    iget v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    mul-float/2addr v2, p2

    .line 210
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 212
    return-void

    .line 205
    .end local v0    # "isRestricted":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method baseStart()V
    .locals 5

    .prologue
    .line 139
    :try_start_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const/4 v1, 0x2

    :try_start_1
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 141
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v3, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget v4, p0, Landroid/media/PlayerBase;->mState:I

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->playerEvent(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    :goto_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_3
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v1, v3}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    monitor-exit v2

    .line 151
    return-void

    .line 139
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PlayerBase"

    const-string/jumbo v2, "Error talking to audio service, STARTED state will not be tracked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method baseStop()V
    .locals 5

    .prologue
    .line 180
    :try_start_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    const/4 v1, 0x4

    :try_start_1
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    .line 182
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v3, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget v4, p0, Landroid/media/PlayerBase;->mState:I

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->playerEvent(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 187
    :goto_0
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PlayerBase"

    const-string/jumbo v2, "Error talking to audio service, STOPPED state will not be tracked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 4
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal null AudioAttributes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v2

    iget v3, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v2, v3, p1}, Landroid/media/IAudioService;->playerAttributes(ILandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    iget-object v3, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 130
    :try_start_1
    iget-object v2, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    if-eq v2, p1, :cond_1

    const/4 v0, 0x1

    .line 131
    .local v0, "attributesChanged":Z
    :goto_1
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    .line 132
    invoke-virtual {p0, v0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 134
    return-void

    .line 126
    .end local v0    # "attributesChanged":Z
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PlayerBase"

    const-string/jumbo v3, "Error talking to audio service, STARTED state will not be tracked"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "attributesChanged":Z
    goto :goto_1

    .line 129
    .end local v0    # "attributesChanged":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected getStartDelayMs()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isRestricted_sync()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 310
    iget-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    if-eqz v3, :cond_0

    .line 311
    return v5

    .line 314
    :cond_0
    iget-object v3, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    .line 315
    return v5

    .line 318
    :cond_1
    iget-object v3, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 319
    iget-object v3, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 320
    const/4 v0, 0x0

    .line 322
    .local v0, "cameraSoundForced":Z
    :try_start_0
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 328
    .end local v0    # "cameraSoundForced":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 329
    return v5

    .line 325
    .restart local v0    # "cameraSoundForced":Z
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "PlayerBase"

    const-string/jumbo v4, "Null AudioService in isRestricted_sync()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 324
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PlayerBase"

    const-string/jumbo v4, "Cannot access AudioService in isRestricted_sync()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .end local v0    # "cameraSoundForced":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method abstract playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method abstract playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method abstract playerPause()V
.end method

.method abstract playerSetAuxEffectSendLevel(ZF)I
.end method

.method abstract playerSetVolume(ZFF)V
.end method

.method abstract playerStart()V
.end method

.method abstract playerStop()V
.end method

.method public setStartDelayMs(I)V
    .locals 0
    .param p1, "delayMs"    # I

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 351
    return-void
.end method

.method updateAppOpsPlayAudio_sync(Z)V
    .locals 11
    .param p1, "attributesChanged"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 260
    iget-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    .line 262
    .local v3, "oldHasAppOpsPlayAudio":Z
    const/4 v2, 0x1

    .line 263
    .local v2, "mode":I
    :try_start_0
    iget-object v6, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v6, :cond_0

    .line 264
    iget-object v6, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 265
    iget-object v7, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v7

    .line 266
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v9

    .line 264
    const/16 v10, 0x1c

    invoke-interface {v6, v10, v7, v8, v9}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v2

    .line 268
    :cond_0
    if-nez v2, :cond_3

    :goto_0
    iput-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_2

    .line 278
    :cond_1
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v4

    iget v5, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget-boolean v6, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    invoke-interface {v4, v5, v6}, Landroid/media/IAudioService;->playerHasOpPlayAudio(IZ)V

    .line 279
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    move-result v4

    if-nez v4, :cond_4

    .line 285
    iget v4, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    iget v5, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/media/PlayerBase;->mRightVolume:F

    iget v6, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    mul-float/2addr v5, v6

    .line 284
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4, v5}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 286
    iget v4, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v4, v5

    .line 268
    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v5, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    goto :goto_1

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p0, v4, v5, v6}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    .line 292
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 295
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_2
.end method
