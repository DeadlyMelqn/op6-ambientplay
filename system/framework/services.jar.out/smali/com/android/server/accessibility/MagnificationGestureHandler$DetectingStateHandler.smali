.class final Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;
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
    name = "DetectingStateHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;
    }
.end annotation


# static fields
.field private static final ACTION_TAP_COUNT:I = 0x3

.field private static final MESSAGE_ON_ACTION_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private mLastTapUpEvent:Landroid/view/MotionEvent;

.field private final mMultiTapDistanceSlop:I

.field private final mMultiTapTimeSlop:I

.field private mTapCount:I

.field private final mTapDistanceSlop:I

.field private final mTapTimeSlop:I

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->onActionTapAndHold(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->sendDelayedMotionEvents()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapTimeSlop:I

    .line 601
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler$1;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    .line 594
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 595
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 596
    const v2, 0x10e0086

    .line 595
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 594
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    .line 597
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapDistanceSlop:I

    .line 598
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapDistanceSlop:I

    .line 599
    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 768
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v0

    .line 770
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-nez v2, :cond_0

    .line 771
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 779
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 774
    .local v1, "tail":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :goto_1
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 775
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    goto :goto_1

    .line 777
    :cond_1
    invoke-static {v1, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-set0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    goto :goto_0
.end method

.method private clearDelayedMotionEvents()V
    .locals 2

    .prologue
    .line 792
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-eqz v1, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 794
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 795
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 797
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :cond_0
    return-void
.end method

.method private clearLastDownEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 760
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 762
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 764
    :cond_0
    return-void
.end method

.method private clearLastTapUpEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 753
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 755
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    .line 757
    :cond_0
    return-void
.end method

.method private clearTapDetectionState()V
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    .line 748
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastTapUpEvent()V

    .line 749
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastDownEvent()V

    .line 750
    return-void
.end method

.method private onActionTap(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "up"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    .line 812
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getPersistedScale()F

    move-result v6

    .line 814
    .local v6, "targetScale":F
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v6, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 815
    .local v1, "scale":F
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 816
    const/4 v5, 0x0

    .line 815
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(FFFZI)Z

    .line 820
    .end local v1    # "scale":F
    .end local v6    # "targetScale":F
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    goto :goto_0
.end method

.method private onActionTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    .line 828
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-set0(Lcom/android/server/accessibility/MagnificationGestureHandler;Z)Z

    .line 830
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getPersistedScale()F

    move-result v6

    .line 831
    .local v6, "targetScale":F
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v6, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 832
    .local v1, "scale":F
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    .line 833
    const/4 v5, 0x0

    .line 832
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(FFFZI)Z

    .line 835
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    .line 836
    return-void
.end method

.method private sendDelayedMotionEvents()V
    .locals 5

    .prologue
    .line 782
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-eqz v1, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 784
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 785
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iget-object v3, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    .line 786
    iget v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mPolicyFlags:I

    .line 785
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 787
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 789
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :cond_0
    return-void
.end method

.method private transitionToDelegatingState(Z)V
    .locals 2
    .param p1, "andClear"    # Z

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    .line 801
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->sendDelayedMotionEvents()V

    .line 802
    if-eqz p1, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    .line 805
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;Z)V

    .line 740
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 741
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 742
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearTapDetectionState()V

    .line 743
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearDelayedMotionEvents()V

    .line 744
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 627
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 629
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 735
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 631
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 632
    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v4

    if-nez v4, :cond_1

    .line 634
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get4(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingState(Z)V

    .line 635
    return-void

    .line 637
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get4(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 638
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 640
    .local v1, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    .line 641
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v6, v5

    .line 640
    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 642
    return-void

    .line 644
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 645
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    if-ne v4, v9, :cond_4

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_4

    .line 646
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    .line 647
    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapDistanceSlop:I

    .line 646
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    .line 645
    if-eqz v4, :cond_4

    .line 648
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 650
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    .line 651
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v6, v5

    .line 650
    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 657
    .end local v1    # "message":Landroid/os/Message;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastDownEvent()V

    .line 658
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 652
    :cond_4
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    if-ge v4, v10, :cond_3

    .line 653
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 655
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    int-to-long v6, v5

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 659
    .end local v1    # "message":Landroid/os/Message;
    :cond_5
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 662
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 664
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    int-to-long v6, v5

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 665
    return-void

    .line 667
    .end local v1    # "message":Landroid/os/Message;
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingState(Z)V

    .line 668
    return-void

    .line 673
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 674
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V

    .line 676
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    goto/16 :goto_0

    .line 678
    :cond_7
    invoke-direct {p0, v8}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingState(Z)V

    goto/16 :goto_0

    .line 683
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    if-ge v4, v9, :cond_0

    .line 684
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-static {v4, p1, v7}, Lcom/android/server/accessibility/GestureUtils;->computeDistance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)D

    move-result-wide v2

    .line 686
    .local v2, "distance":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapDistanceSlop:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 687
    invoke-direct {p0, v8}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingState(Z)V

    goto/16 :goto_0

    .line 693
    .end local v2    # "distance":D
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    .line 695
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 694
    invoke-virtual {v4, v5, v6}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v4

    if-nez v4, :cond_8

    .line 696
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get4(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingState(Z)V

    .line 697
    return-void

    .line 699
    :cond_8
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->-get4(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 700
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    .line 701
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->onActionTap(Landroid/view/MotionEvent;I)V

    .line 702
    return-void

    .line 704
    :cond_9
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_a

    .line 705
    return-void

    .line 707
    :cond_a
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastDownEvent:Landroid/view/MotionEvent;

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapTimeSlop:I

    .line 708
    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapDistanceSlop:I

    .line 707
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    if-nez v4, :cond_b

    .line 709
    invoke-direct {p0, v8}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingState(Z)V

    .line 710
    return-void

    .line 712
    :cond_b
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_c

    .line 713
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    iget v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapTimeSlop:I

    iget v6, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mMultiTapDistanceSlop:I

    .line 712
    invoke-static {v4, p1, v5, v6, v7}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c

    .line 714
    invoke-direct {p0, v8}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->transitionToDelegatingState(Z)V

    .line 715
    return-void

    .line 717
    :cond_c
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    .line 721
    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mTapCount:I

    if-ne v4, v10, :cond_d

    .line 722
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    .line 723
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->onActionTap(Landroid/view/MotionEvent;I)V

    .line 724
    return-void

    .line 726
    :cond_d
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clearLastTapUpEvent()V

    .line 727
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->mLastTapUpEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
