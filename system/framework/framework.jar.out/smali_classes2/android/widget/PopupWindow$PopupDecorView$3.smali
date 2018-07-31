.class Landroid/widget/PopupWindow$PopupDecorView$3;
.super Landroid/transition/TransitionListenerAdapter;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindow$PopupDecorView;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/PopupWindow$PopupDecorView;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    .line 2510
    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "t"    # Landroid/transition/Transition;

    .prologue
    .line 2513
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 2517
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/widget/PopupWindow$PopupDecorView;->-get0(Landroid/widget/PopupWindow$PopupDecorView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2518
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupDecorView$3;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/widget/PopupWindow$PopupDecorView;->-get0(Landroid/widget/PopupWindow$PopupDecorView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2520
    :cond_0
    return-void
.end method
