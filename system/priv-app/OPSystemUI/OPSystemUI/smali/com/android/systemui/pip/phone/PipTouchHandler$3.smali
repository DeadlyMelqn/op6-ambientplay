.class Lcom/android/systemui/pip/phone/PipTouchHandler$3;
.super Lcom/android/systemui/pip/phone/PipTouchGesture;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mDelta:Landroid/graphics/PointF;

.field private final mStartPosition:Landroid/graphics/Point;

.field private mStartedOnLeft:Z

.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 555
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchGesture;-><init>()V

    .line 558
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    .line 559
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    .line 1
    return-void
.end method


# virtual methods
.method public onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V
    .locals 6
    .param p1, "touchState"    # Lcom/android/systemui/pip/phone/PipTouchState;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 563
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    return-void

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 568
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    invoke-virtual {v1, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 569
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 570
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    if-ge v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    .line 571
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-set1(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 572
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getDownTouchPosition()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    :goto_1
    invoke-static {v1, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-set0(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 576
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get6(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get4(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->pokeMenu()V

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get1(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipDismissViewController;->createDismissTarget()V

    .line 582
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get3(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get11(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xe1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    return-void

    :cond_2
    move v1, v3

    .line 570
    goto :goto_0

    :cond_3
    move v2, v3

    .line 572
    goto :goto_1
.end method

.method onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 12
    .param p1, "touchState"    # Lcom/android/systemui/pip/phone/PipTouchState;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 588
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 589
    return v8

    .line 592
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->startedDragging()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 593
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/high16 v9, -0x40800000    # -1.0f

    invoke-static {v6, v9}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-set2(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F

    .line 596
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get3(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v9}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get11(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 597
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get1(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/pip/phone/PipDismissViewController;->showDismissTarget()V

    .line 601
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 603
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchDelta()Landroid/graphics/PointF;

    move-result-object v1

    .line 604
    .local v1, "lastDelta":Landroid/graphics/PointF;
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float v2, v6, v9

    .line 605
    .local v2, "lastX":F
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    add-float v3, v6, v9

    .line 606
    .local v3, "lastY":F
    iget v6, v1, Landroid/graphics/PointF;->x:F

    add-float v4, v2, v6

    .line 607
    .local v4, "left":F
    iget v6, v1, Landroid/graphics/PointF;->y:F

    add-float v5, v3, v6

    .line 608
    .local v5, "top":F
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->allowDraggingOffscreen()Z

    move-result v6

    .line 609
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v9}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 613
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 619
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v9, v6, Landroid/graphics/PointF;->x:F

    sub-float v10, v4, v2

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/PointF;->x:F

    .line 620
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mDelta:Landroid/graphics/PointF;

    iget v9, v6, Landroid/graphics/PointF;->y:F

    sub-float v10, v5, v3

    add-float/2addr v9, v10

    iput v9, v6, Landroid/graphics/PointF;->y:F

    .line 622
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v9}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 623
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v6

    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 624
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v9}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    .line 627
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-wrap4(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 630
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getLastTouchPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 631
    .local v0, "curPos":Landroid/graphics/PointF;
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get10(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 633
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-boolean v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    if-eqz v6, :cond_6

    .line 634
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v10}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v11}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_5

    move v6, v7

    .line 633
    :goto_0
    invoke-static {v9, v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-set1(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 637
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get9(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 639
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v10}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_3

    move v8, v7

    :cond_3
    invoke-static {v6, v8}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-set0(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z

    .line 641
    :cond_4
    return v7

    :cond_5
    move v6, v8

    .line 634
    goto :goto_0

    .line 635
    :cond_6
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v10}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_7

    move v6, v7

    goto :goto_0

    :cond_7
    move v6, v8

    goto :goto_0

    .line 643
    .end local v0    # "curPos":Landroid/graphics/PointF;
    .end local v1    # "lastDelta":Landroid/graphics/PointF;
    .end local v2    # "lastX":F
    .end local v3    # "lastY":F
    .end local v4    # "left":F
    .end local v5    # "top":F
    :cond_8
    return v8
.end method

.method public onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z
    .locals 14
    .param p1, "touchState"    # Lcom/android/systemui/pip/phone/PipTouchState;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-wrap1(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    .line 654
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    const/4 v0, 0x0

    return v0

    .line 658
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->getVelocity()Landroid/graphics/PointF;

    move-result-object v12

    .line 659
    .local v12, "vel":Landroid/graphics/PointF;
    iget v0, v12, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v10, 0x1

    .line 660
    .local v10, "isHorizontal":Z
    :goto_0
    iget v0, v12, Landroid/graphics/PointF;->x:F

    iget v1, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v13

    .line 661
    .local v13, "velocity":F
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get2(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_3

    const/4 v8, 0x1

    .line 662
    .local v8, "isFling":Z
    :goto_1
    const/4 v11, 0x0

    .line 666
    .local v11, "isUpWithinDimiss":Z
    if-eqz v8, :cond_5

    iget v0, v12, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    xor-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_5

    .line 667
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get9(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-nez v0, :cond_4

    move v9, v11

    .line 670
    .local v9, "isFlingToBot":Z
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->shouldDismissPip()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v9, :cond_6

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v12, Landroid/graphics/PointF;->x:F

    .line 672
    iget v3, v12, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get14(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v4

    .line 671
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateDismiss(Landroid/graphics/Rect;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;

    .line 673
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get0(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;

    move-result-object v0

    .line 674
    const/16 v1, 0x336

    .line 675
    const/4 v2, 0x1

    .line 673
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 676
    const/4 v0, 0x1

    return v0

    .line 659
    .end local v8    # "isFling":Z
    .end local v9    # "isFlingToBot":Z
    .end local v10    # "isHorizontal":Z
    .end local v11    # "isUpWithinDimiss":Z
    .end local v13    # "velocity":F
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "isHorizontal":Z
    goto :goto_0

    .line 661
    .restart local v13    # "velocity":F
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "isFling":Z
    goto :goto_1

    .line 667
    .restart local v11    # "isUpWithinDimiss":Z
    :cond_4
    const/4 v9, 0x1

    .restart local v9    # "isFlingToBot":Z
    goto :goto_2

    .line 666
    .end local v9    # "isFlingToBot":Z
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "isFlingToBot":Z
    goto :goto_2

    .line 680
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 681
    if-eqz v8, :cond_7

    if-eqz v10, :cond_7

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get10(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 682
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartedOnLeft:Z

    if-eqz v0, :cond_9

    iget v0, v12, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    .line 698
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get4(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 701
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-wrap3(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V

    .line 704
    :cond_8
    const/4 v6, 0x0

    .line 705
    .local v6, "postAnimationCallback":Landroid/animation/AnimatorListenerAdapter;
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get6(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 708
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get6(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 709
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-wrap0(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v5

    const/4 v4, 0x1

    .line 708
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 721
    .end local v6    # "postAnimationCallback":Landroid/animation/AnimatorListenerAdapter;
    :goto_4
    if-eqz v8, :cond_b

    .line 722
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget v2, v12, Landroid/graphics/PointF;->x:F

    iget v3, v12, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v4

    .line 723
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get14(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v5

    .line 724
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->mStartPosition:Landroid/graphics/Point;

    move v1, v13

    .line 722
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->flingToSnapTarget(FFFLandroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;Landroid/graphics/Point;)Landroid/graphics/Rect;

    .line 753
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 682
    :cond_9
    iget v0, v12, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    goto :goto_3

    .line 713
    .restart local v6    # "postAnimationCallback":Landroid/animation/AnimatorListenerAdapter;
    :cond_a
    new-instance v6, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;

    .end local v6    # "postAnimationCallback":Landroid/animation/AnimatorListenerAdapter;
    invoke-direct {v6, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$3$1;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler$3;)V

    .local v6, "postAnimationCallback":Landroid/animation/AnimatorListenerAdapter;
    goto :goto_4

    .line 726
    .end local v6    # "postAnimationCallback":Landroid/animation/AnimatorListenerAdapter;
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get14(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    goto :goto_5

    .line 729
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get4(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 731
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    .line 732
    const/4 v3, 0x0

    .line 731
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;

    .line 733
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-wrap3(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V

    goto :goto_5

    .line 734
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get6(Lcom/android/systemui/pip/phone/PipTouchHandler;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 735
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get13(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 737
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    goto :goto_5

    .line 738
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get13(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isWaitingForDoubleTap()Z

    move-result v0

    if-nez v0, :cond_f

    .line 741
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 742
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-wrap0(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v5

    .line 741
    const/4 v1, 0x2

    .line 742
    const/4 v4, 0x1

    .line 741
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    goto/16 :goto_5

    .line 747
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get13(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->scheduleDoubleTapTimeoutCallback()V

    goto/16 :goto_5

    .line 750
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    .line 751
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    goto/16 :goto_5
.end method
