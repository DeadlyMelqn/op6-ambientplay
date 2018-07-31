.class final Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateViewportDraggingHandler"
.end annotation


# instance fields
.field private mLastMoveOutsideMagnifiedRegion:Z

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p2, "-this1"    # Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    .line 562
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 515
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 557
    :goto_0
    :pswitch_0
    return-void

    .line 517
    :pswitch_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unexpected event type: ACTION_DOWN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 520
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->clear()V

    .line 521
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    goto :goto_0

    .line 525
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 526
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Should have one pointer down."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 528
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 529
    .local v1, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 530
    .local v2, "eventY":F
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    iget-boolean v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    if-eqz v3, :cond_1

    .line 532
    iput-boolean v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    .line 533
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5, v4}, Lcom/android/server/accessibility/MagnificationController;->setCenter(FFZI)Z

    goto :goto_0

    .line 536
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4, v4}, Lcom/android/server/accessibility/MagnificationController;->setCenter(FFZI)Z

    goto :goto_0

    .line 540
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->mLastMoveOutsideMagnifiedRegion:Z

    goto :goto_0

    .line 545
    .end local v1    # "eventX":F
    .end local v2    # "eventY":F
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get5(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 546
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    .line 548
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->clear()V

    .line 549
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    goto :goto_0

    .line 553
    :pswitch_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 554
    const-string/jumbo v4, "Unexpected event type: ACTION_POINTER_UP"

    .line 553
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
