.class Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$1;
.super Ljava/lang/Object;
.source "OemCameraNotchGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$1;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$1;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    iget-object v0, v0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v0}, Lcom/android/server/policy/OemCameraNotchGuide;->-get0(Lcom/android/server/policy/OemCameraNotchGuide;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$1;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    iget-object v0, v0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v0}, Lcom/android/server/policy/OemCameraNotchGuide;->-get0(Lcom/android/server/policy/OemCameraNotchGuide;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$1;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    invoke-static {v0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->-wrap0(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;)V

    .line 305
    :cond_0
    return-void
.end method
