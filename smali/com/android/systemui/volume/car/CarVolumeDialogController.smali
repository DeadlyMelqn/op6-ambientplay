.class public Lcom/android/systemui/volume/car/CarVolumeDialogController;
.super Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.source "CarVolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/car/CarVolumeDialogController$1;
    }
.end annotation


# instance fields
.field private final mCar:Landroid/car/Car;

.field private mCarAudioManager:Landroid/car/media/CarAudioManager;

.field private final mConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/car/CarVolumeDialogController;)Landroid/car/Car;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/car/CarVolumeDialogController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/car/CarVolumeDialogController;Landroid/car/media/CarAudioManager;)Landroid/car/media/CarAudioManager;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/car/CarVolumeDialogController;
    .param p1, "-value"    # Landroid/car/media/CarAudioManager;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/systemui/volume/car/CarVolumeDialogController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/car/CarVolumeDialogController$1;-><init>(Lcom/android/systemui/volume/car/CarVolumeDialogController;)V

    iput-object v0, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mConnection:Landroid/content/ServiceConnection;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCar:Landroid/car/Car;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    .line 64
    return-void
.end method


# virtual methods
.method protected getAudioManagerStreamMaxVolume(I)I
    .locals 4
    .param p1, "stream"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-nez v1, :cond_0

    .line 97
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car audio manager is not initialized yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v3

    .line 102
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v1, p1}, Landroid/car/media/CarAudioManager;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return v3
.end method

.method protected getAudioManagerStreamMinVolume(I)I
    .locals 4
    .param p1, "stream"    # I

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-nez v1, :cond_0

    .line 112
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car audio manager is not initialized yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v3

    .line 117
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v1, p1}, Landroid/car/media/CarAudioManager;->getStreamMinVolume(I)I
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    return v3
.end method

.method protected getAudioManagerStreamVolume(I)I
    .locals 4
    .param p1, "stream"    # I

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-nez v1, :cond_0

    .line 82
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car audio manager is not initialized yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v3

    .line 87
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v1, p1}, Landroid/car/media/CarAudioManager;->getStreamVolume(I)I
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    return v3
.end method

.method protected setAudioManagerStreamVolume(III)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "level"    # I
    .param p3, "flag"    # I

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-nez v1, :cond_0

    .line 69
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car audio manager is not initialized yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 73
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/car/media/CarAudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVolumeController()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-nez v1, :cond_0

    .line 127
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car audio manager is not initialized yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void

    .line 131
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    iget-object v2, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-virtual {v1, v2}, Landroid/car/media/CarAudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
