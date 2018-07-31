.class Lcom/android/server/camera/CameraServiceProxy$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/camera/CameraServiceProxy;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 163
    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public notifyCameraState(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I
    .param p3, "facing"    # I
    .param p4, "clientName"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p2}, Lcom/android/server/camera/CameraServiceProxy;->-wrap1(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "state":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/camera/CameraServiceProxy;->-wrap0(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "facingStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/camera/CameraServiceProxy;->-wrap4(Lcom/android/server/camera/CameraServiceProxy;Ljava/lang/String;IILjava/lang/String;)V

    .line 178
    return-void
.end method

.method public pingForUserUpdate()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/android/server/camera/CameraServiceProxy;->-wrap2(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 167
    return-void
.end method
