.class Landroid/widget/PopupWindow$PopupDecorView$2;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PopupWindow$PopupDecorView;

.field final synthetic val$enterTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/PopupWindow$PopupDecorView;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object p2, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->val$enterTransition:Landroid/transition/Transition;

    .line 2435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 2438
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v2}, Landroid/widget/PopupWindow$PopupDecorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2439
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_0

    .line 2440
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2443
    :cond_0
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v2, v2, Landroid/widget/PopupWindow$PopupDecorView;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v0

    .line 2444
    .local v0, "epicenter":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->val$enterTransition:Landroid/transition/Transition;

    new-instance v3, Landroid/widget/PopupWindow$PopupDecorView$2$1;

    invoke-direct {v3, p0, v0}, Landroid/widget/PopupWindow$PopupDecorView$2$1;-><init>(Landroid/widget/PopupWindow$PopupDecorView$2;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 2450
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->this$1:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow$PopupDecorView$2;->val$enterTransition:Landroid/transition/Transition;

    invoke-static {v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->-wrap0(Landroid/widget/PopupWindow$PopupDecorView;Landroid/transition/Transition;)V

    .line 2451
    return-void
.end method
