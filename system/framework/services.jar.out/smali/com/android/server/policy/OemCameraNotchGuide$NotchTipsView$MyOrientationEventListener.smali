.class Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OemCameraNotchGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rate"    # I

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    .line 325
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 326
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 329
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    iget-object v1, v1, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v1}, Lcom/android/server/policy/OemCameraNotchGuide;->-get2(Lcom/android/server/policy/OemCameraNotchGuide;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 331
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    iget-object v1, v1, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    iget v1, v1, Lcom/android/server/policy/OemCameraNotchGuide;->mRotation:I

    if-eq v1, v0, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    iget-object v2, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$MyOrientationEventListener;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    invoke-static {v2}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->-get1(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->post(Ljava/lang/Runnable;)Z

    .line 334
    :cond_1
    return-void
.end method
