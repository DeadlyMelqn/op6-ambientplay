.class Lcom/android/systemui/statusbar/phone/DozeScrimController$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DozeScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;

.field final synthetic val$inFront:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$8;->val$inFront:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$8;->val$endRunnable:Ljava/lang/Runnable;

    .line 242
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$8;->val$inFront:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->-wrap2(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLandroid/animation/Animator;)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$8;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$8;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 249
    :cond_0
    return-void
.end method
