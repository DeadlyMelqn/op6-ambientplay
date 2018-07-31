.class Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$3;
.super Ljava/lang/Object;
.source "OemCameraNotchGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->initViews()V
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
    iput-object p1, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$3;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    const-string/jumbo v0, "OemCameraNotchGuide"

    const-string/jumbo v1, "Go Settings."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OemCameraNotchGuide;->mConfirmed:Z

    .line 282
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$3;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    invoke-static {v0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->-get0(Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.settings.action.DISPLAYSIZEADAPTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView$3;->this$1:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    iget-object v0, v0, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->this$0:Lcom/android/server/policy/OemCameraNotchGuide;

    invoke-static {v0}, Lcom/android/server/policy/OemCameraNotchGuide;->-get1(Lcom/android/server/policy/OemCameraNotchGuide;)Lcom/android/server/policy/OemCameraNotchGuide$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemCameraNotchGuide$H;->sendEmptyMessage(I)Z

    .line 284
    return-void
.end method
