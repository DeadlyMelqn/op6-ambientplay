.class Lcom/oneplus/doze/ScrimView$1;
.super Ljava/lang/Object;
.source "ScrimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/ScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/ScrimView;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/ScrimView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/doze/ScrimView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/doze/ScrimView$1;->this$0:Lcom/oneplus/doze/ScrimView;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/oneplus/doze/ScrimView$1;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/oneplus/doze/ScrimView;->setAlpha(F)V

    .line 48
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView$1;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-virtual {v0}, Lcom/oneplus/doze/ScrimView;->invalidate()V

    .line 49
    return-void
.end method