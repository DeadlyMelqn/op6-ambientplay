.class Lcom/android/systemui/volume/car/CarVolumeDialogController$1;
.super Ljava/lang/Object;
.source "CarVolumeDialogController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/car/CarVolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/car/CarVolumeDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/car/CarVolumeDialogController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/car/CarVolumeDialogController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController$1;->this$0:Lcom/android/systemui/volume/car/CarVolumeDialogController;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController$1;->this$0:Lcom/android/systemui/volume/car/CarVolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController$1;->this$0:Lcom/android/systemui/volume/car/CarVolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/car/CarVolumeDialogController;->-get0(Lcom/android/systemui/volume/car/CarVolumeDialogController;)Landroid/car/Car;

    move-result-object v1

    const-string/jumbo v3, "audio"

    invoke-virtual {v1, v3}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/media/CarAudioManager;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/car/CarVolumeDialogController;->-set0(Lcom/android/systemui/volume/car/CarVolumeDialogController;Landroid/car/media/CarAudioManager;)Landroid/car/media/CarAudioManager;

    .line 47
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController$1;->this$0:Lcom/android/systemui/volume/car/CarVolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/car/CarVolumeDialogController;->setVolumeController()V

    .line 48
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController$1;->this$0:Lcom/android/systemui/volume/car/CarVolumeDialogController;

    invoke-virtual {v1}, Lcom/android/systemui/volume/car/CarVolumeDialogController;->getState()V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 56
    const-string/jumbo v0, "CarVolumeDialogController"

    const-string/jumbo v1, "Car service is disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method
