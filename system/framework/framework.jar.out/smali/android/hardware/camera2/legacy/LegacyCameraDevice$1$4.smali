.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->onRequestQueueEmpty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;->this$1:Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;

    iget-object v1, v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraDeviceCallbacks;->onRequestQueueEmpty()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 237
    const-string/jumbo v2, "Received remote exception during onRequestQueueEmpty callback: "

    .line 236
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method