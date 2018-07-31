.class public final Landroid/media/soundtrigger/SoundTriggerManager;
.super Ljava/lang/Object;
.source "SoundTriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/SoundTriggerManager$Model;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final EXTRA_MESSAGE_TYPE:Ljava/lang/String; = "android.media.soundtrigger.MESSAGE_TYPE"

.field public static final EXTRA_RECOGNITION_EVENT:Ljava/lang/String; = "android.media.soundtrigger.RECOGNITION_EVENT"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "android.media.soundtrigger.STATUS"

.field public static final FLAG_MESSAGE_TYPE_RECOGNITION_ERROR:I = 0x1

.field public static final FLAG_MESSAGE_TYPE_RECOGNITION_EVENT:I = 0x0

.field public static final FLAG_MESSAGE_TYPE_RECOGNITION_PAUSED:I = 0x2

.field public static final FLAG_MESSAGE_TYPE_RECOGNITION_RESUMED:I = 0x3

.field public static final FLAG_MESSAGE_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SoundTriggerManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReceiverInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Landroid/media/soundtrigger/SoundTriggerDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soundTriggerService"    # Lcom/android/internal/app/ISoundTriggerService;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 70
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    .line 72
    return-void
.end method


# virtual methods
.method public createSoundTriggerDetector(Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)Landroid/media/soundtrigger/SoundTriggerDetector;
    .locals 3
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 128
    if-nez p1, :cond_0

    .line 129
    return-object v2

    .line 132
    :cond_0
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 136
    .local v1, "oldInstance":Landroid/media/soundtrigger/SoundTriggerDetector;
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    invoke-direct {v0, v2, p1, p2, p3}, Landroid/media/soundtrigger/SoundTriggerDetector;-><init>(Lcom/android/internal/app/ISoundTriggerService;Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)V

    .line 138
    .local v0, "newInstance":Landroid/media/soundtrigger/SoundTriggerDetector;
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-object v0
.end method

.method public deleteModel(Ljava/util/UUID;)V
    .locals 3
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Lcom/android/internal/app/ISoundTriggerService;->deleteSoundModel(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getModel(Ljava/util/UUID;)Landroid/media/soundtrigger/SoundTriggerManager$Model;
    .locals 4
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerManager$Model;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 94
    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 93
    invoke-interface {v2, v3}, Lcom/android/internal/app/ISoundTriggerService;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/soundtrigger/SoundTriggerManager$Model;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isRecognitionActive(Ljava/util/UUID;)Z
    .locals 3
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    const/4 v1, 0x0

    return v1

    .line 321
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 322
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 321
    invoke-interface {v1, v2}, Lcom/android/internal/app/ISoundTriggerService;->isRecognitionActive(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)I
    .locals 4
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .prologue
    const/high16 v3, -0x80000000

    .line 238
    if-nez p1, :cond_0

    .line 239
    return v3

    .line 243
    :cond_0
    :try_start_0
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    packed-switch v1, :pswitch_data_0

    .line 251
    const-string/jumbo v1, "SoundTriggerManager"

    const-string/jumbo v2, "Unkown model type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v3

    .line 245
    :pswitch_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 246
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 245
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    invoke-interface {v1, p1}, Lcom/android/internal/app/ISoundTriggerService;->loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I

    move-result v1

    return v1

    .line 248
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    :pswitch_1
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 249
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 248
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    invoke-interface {v1, p1}, Lcom/android/internal/app/ISoundTriggerService;->loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startRecognition(Ljava/util/UUID;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 3
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p3, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 268
    :cond_0
    const/high16 v1, -0x80000000

    return v1

    .line 267
    :cond_1
    if-eqz p3, :cond_0

    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/app/ISoundTriggerService;->startRecognitionForIntent(Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopRecognition(Ljava/util/UUID;)I
    .locals 3
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    const/high16 v1, -0x80000000

    return v1

    .line 288
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Lcom/android/internal/app/ISoundTriggerService;->stopRecognitionForIntent(Landroid/os/ParcelUuid;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unloadSoundModel(Ljava/util/UUID;)I
    .locals 3
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const/high16 v1, -0x80000000

    return v1

    .line 304
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 305
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 304
    invoke-interface {v1, v2}, Lcom/android/internal/app/ISoundTriggerService;->unloadSoundModel(Landroid/os/ParcelUuid;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateModel(Landroid/media/soundtrigger/SoundTriggerManager$Model;)V
    .locals 3
    .param p1, "model"    # Landroid/media/soundtrigger/SoundTriggerManager$Model;

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    invoke-virtual {p1}, Landroid/media/soundtrigger/SoundTriggerManager$Model;->getGenericSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/ISoundTriggerService;->updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
