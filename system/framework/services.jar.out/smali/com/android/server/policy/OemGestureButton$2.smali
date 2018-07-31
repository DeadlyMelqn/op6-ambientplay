.class Lcom/android/server/policy/OemGestureButton$2;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "OemGestureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
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
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 211
    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "openToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 239
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/WindowManagerInternal;->overridePendingAppTransition(ZLandroid/view/animation/Animation;)V

    .line 241
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    .line 243
    :cond_0
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const-string/jumbo v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerAppTransitionListener finished: openToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    const-string/jumbo v2, " mLastKeyCode="

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->-get7(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_1
    return-void
.end method

.method public onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)I
    .locals 5
    .param p1, "transit"    # I
    .param p2, "openToken"    # Landroid/os/IBinder;
    .param p3, "closeToken"    # Landroid/os/IBinder;
    .param p4, "openAnimation"    # Landroid/view/animation/Animation;
    .param p5, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x3

    .line 217
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string/jumbo v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerAppTransitionListener: start transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    const-string/jumbo v2, " openToken="

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    const-string/jumbo v2, " closeToken="

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string/jumbo v2, " mLastKeyCode="

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->-get7(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v0}, Lcom/android/server/policy/OemGestureButton;->-get7(Lcom/android/server/policy/OemGestureButton;)I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 227
    const-wide/16 v2, 0x28

    .line 226
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    const/4 v0, 0x5

    return v0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$2;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 231
    const/16 v1, 0x8

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 234
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
