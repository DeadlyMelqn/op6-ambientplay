.class final Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CamereAvailabilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 1191
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 1192
    const-string/jumbo v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCameraAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v1}, Lcom/android/server/OverHeatingDiagnosis;->-get2(Lcom/android/server/OverHeatingDiagnosis;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 1195
    .local v0, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    if-eqz v0, :cond_0

    .line 1196
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->update(Z)V

    .line 1198
    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 1202
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 1203
    const-string/jumbo v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCameraUnavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v1}, Lcom/android/server/OverHeatingDiagnosis;->-get2(Lcom/android/server/OverHeatingDiagnosis;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 1206
    .local v0, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    if-eqz v0, :cond_0

    .line 1207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->update(Z)V

    .line 1209
    :cond_0
    return-void
.end method
