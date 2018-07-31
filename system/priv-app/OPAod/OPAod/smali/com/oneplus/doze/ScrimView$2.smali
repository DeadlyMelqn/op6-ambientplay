.class Lcom/oneplus/doze/ScrimView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrimView.java"


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
    iput-object p1, p0, Lcom/oneplus/doze/ScrimView$2;->this$0:Lcom/oneplus/doze/ScrimView;

    .line 51
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView$2;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-static {v0, v1}, Lcom/oneplus/doze/ScrimView;->-set0(Lcom/oneplus/doze/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 55
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView$2;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-static {v0}, Lcom/oneplus/doze/ScrimView;->-get0(Lcom/oneplus/doze/ScrimView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/oneplus/doze/ScrimView$2;->this$0:Lcom/oneplus/doze/ScrimView;

    invoke-static {v0}, Lcom/oneplus/doze/ScrimView;->-get0(Lcom/oneplus/doze/ScrimView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 58
    :cond_0
    return-void
.end method
