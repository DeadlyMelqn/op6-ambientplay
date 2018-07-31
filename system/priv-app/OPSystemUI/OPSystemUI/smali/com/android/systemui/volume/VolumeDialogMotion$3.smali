.class Lcom/android/systemui/volume/VolumeDialogMotion$3;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V
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
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get3(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->-wrap0(Lcom/android/systemui/volume/VolumeDialogMotion;)I

    move-result v0

    .line 153
    .local v0, "posY":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get2(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v1

    int-to-float v2, v0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get6(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 154
    return-void
.end method
