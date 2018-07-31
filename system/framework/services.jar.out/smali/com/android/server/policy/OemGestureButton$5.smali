.class Lcom/android/server/policy/OemGestureButton$5;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;->handleTouch(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$5;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 627
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->-get1()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$5;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, v1, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$5;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v1}, Lcom/android/server/policy/OemGestureButton;->-wrap1(Lcom/android/server/policy/OemGestureButton;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 629
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$5;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, v1, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerInternal;->overridePendingAppTransition(ZLandroid/view/animation/Animation;)V

    .line 630
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    .line 631
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGoingHome:Z

    .line 632
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton$5;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v1, v1, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 634
    return-void

    .line 628
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":Landroid/view/animation/Animation;
    goto :goto_0
.end method
