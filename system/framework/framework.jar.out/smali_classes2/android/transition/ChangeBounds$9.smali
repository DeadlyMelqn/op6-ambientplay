.class Landroid/transition/ChangeBounds$9;
.super Landroid/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroid/transition/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "this$0"    # Landroid/transition/ChangeBounds;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/transition/ChangeBounds$9;->this$0:Landroid/transition/ChangeBounds;

    iput-object p2, p0, Landroid/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    .line 404
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$9;->mCanceled:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 409
    iget-object v0, p0, Landroid/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeBounds$9;->mCanceled:Z

    .line 411
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 415
    iget-boolean v0, p0, Landroid/transition/ChangeBounds$9;->mCanceled:Z

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 418
    :cond_0
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 419
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 423
    iget-object v0, p0, Landroid/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 424
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 428
    iget-object v0, p0, Landroid/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 429
    return-void
.end method
