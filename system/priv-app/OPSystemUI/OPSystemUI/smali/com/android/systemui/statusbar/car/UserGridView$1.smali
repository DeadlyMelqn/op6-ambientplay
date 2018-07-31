.class Lcom/android/systemui/statusbar/car/UserGridView$1;
.super Ljava/lang/Object;
.source "UserGridView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/car/UserGridView;->animateHeightChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/UserGridView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/UserGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/UserGridView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 170
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/UserGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 164
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/UserGridView;->requestLayout()V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/car/UserGridView;->-set0(Lcom/android/systemui/statusbar/car/UserGridView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 167
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 173
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 156
    return-void
.end method
