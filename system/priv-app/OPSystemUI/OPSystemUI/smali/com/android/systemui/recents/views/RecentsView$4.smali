.class Lcom/android/systemui/recents/views/RecentsView$4;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->showStackActionButton(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$duration:I

.field final synthetic val$translate:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$4;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/RecentsView$4;->val$translate:Z

    iput p3, p0, Lcom/android/systemui/recents/views/RecentsView$4;->val$duration:I

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$4;->val$translate:Z

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$4;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 864
    const/4 v1, 0x0

    .line 863
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$4;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->-get0(Lcom/android/systemui/recents/views/RecentsView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 867
    const/high16 v1, 0x3f800000    # 1.0f

    .line 866
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 868
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsView$4;->val$duration:I

    int-to-long v2, v1

    .line 866
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 869
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 866
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 871
    return-void
.end method
