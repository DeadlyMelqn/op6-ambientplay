.class Landroid/app/ExitTransitionCoordinator$8;
.super Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;

.field final synthetic val$transitioningViews:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;
    .param p2, "this$0_1"    # Landroid/app/ActivityTransitionCoordinator;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    iput-object p3, p0, Landroid/app/ExitTransitionCoordinator$8;->val$transitioningViews:Ljava/util/ArrayList;

    .line 333
    invoke-direct {p0, p2}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v2, 0x1

    .line 336
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->viewsTransitionComplete()V

    .line 337
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get2(Landroid/app/ExitTransitionCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->val$transitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$8;->val$transitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    .line 339
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    .line 341
    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get3(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$8;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap1(Landroid/app/ExitTransitionCoordinator;)V

    .line 344
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 345
    return-void
.end method
