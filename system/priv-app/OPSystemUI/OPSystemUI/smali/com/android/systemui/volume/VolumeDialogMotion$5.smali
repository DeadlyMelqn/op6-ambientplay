.class Lcom/android/systemui/volume/VolumeDialogMotion$5;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$5;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 179
    .local v0, "v":F
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$5;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get4(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$5;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->-get6(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    neg-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 180
    return-void
.end method
