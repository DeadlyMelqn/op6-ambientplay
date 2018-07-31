.class Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;
    .param p2, "-this1"    # Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    return-void
.end method


# virtual methods
.method public onPipDismiss()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get0(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x336

    .line 167
    const/4 v2, 0x0

    .line 166
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 168
    return-void
.end method

.method public onPipExpand()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get4(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    .line 155
    :cond_0
    return-void
.end method

.method public onPipMenuStateChanged(IZ)V
    .locals 1
    .param p1, "menuState"    # I
    .param p2, "resize"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-wrap2(Lcom/android/systemui/pip/phone/PipTouchHandler;IZ)V

    .line 148
    return-void
.end method

.method public onPipMinimize()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-wrap3(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestMinimizedState(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;

    .line 161
    return-void
.end method

.method public onPipShowMenu()V
    .locals 6

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 173
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-wrap0(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v5

    .line 172
    const/4 v1, 0x2

    .line 173
    const/4 v4, 0x1

    .line 172
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 174
    return-void
.end method
