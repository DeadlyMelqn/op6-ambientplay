.class Lcom/android/systemui/volume/VolumeDialogMotion$2;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogMotion;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$2;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 70
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mDialog.onShow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$2;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get5(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 72
    .local v0, "h":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$2;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get5(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$2;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->-wrap3(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    .line 74
    return-void
.end method
