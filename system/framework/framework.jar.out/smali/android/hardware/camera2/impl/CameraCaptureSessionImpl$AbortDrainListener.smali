.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;
.super Ljava/lang/Object;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbortDrainListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .prologue
    .line 747
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
    .param p2, "-this1"    # Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    return-void
.end method


# virtual methods
.method public onDrained()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get2(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-result-object v0

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get5(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 764
    return-void

    .line 766
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get4(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 768
    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method