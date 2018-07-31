.class public Lcom/android/systemui/pip/phone/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMenuActivity$1;,
        Lcom/android/systemui/pip/phone/PipMenuActivity$2;,
        Lcom/android/systemui/pip/phone/PipMenuActivity$3;
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActionsGroup:Landroid/widget/LinearLayout;

.field private mAllowMenuTimeout:Z

.field private mAllowTouches:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBetweenActionPaddingLand:I

.field private mDismissButton:Landroid/view/View;

.field private mDownDelta:Landroid/graphics/PointF;

.field private mDownPosition:Landroid/graphics/PointF;

.field private mExpandButton:Landroid/widget/ImageView;

.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mMenuContainer:Landroid/view/View;

.field private mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mToControllerMessenger:Landroid/os/Messenger;

.field private mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

.field private mViewConfig:Landroid/view/ViewConfiguration;

.field private mViewRoot:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipMenuActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/phone/PipMenuActivity;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/pip/phone/PipMenuActivity;J)V
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "actions"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setActions(Landroid/graphics/Rect;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/pip/phone/PipMenuActivity;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z
    .param p5, "resizeMenuOnShow"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/pip/phone/PipMenuActivity;F)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "fraction"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateDismissFraction(F)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    .line 115
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    .line 114
    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 124
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    .line 125
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/pip/phone/PipMenuActivity$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    .line 168
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$3;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method private cancelDelayedFinish()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method

.method private dismissPip()V
    .locals 2

    .prologue
    .line 579
    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;-><init>(BLjava/lang/Object;)V

    .line 582
    const/4 v1, 0x0

    .line 579
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    .line 583
    return-void
.end method

.method private expandPip()V
    .locals 2

    .prologue
    .line 565
    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;-><init>(BLjava/lang/Object;)V

    .line 568
    const/4 v1, 0x0

    .line 565
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    .line 569
    return-void
.end method

.method private hideMenu()V
    .locals 2

    .prologue
    .line 384
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    .line 385
    return-void
.end method

.method private hideMenu(Ljava/lang/Runnable;Z)V
    .locals 10
    .param p1, "animationFinishedRunnable"    # Ljava/lang/Runnable;
    .param p2, "notifyMenuVisibility"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 388
    iget v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v2, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 390
    if-eqz p2, :cond_0

    .line 391
    invoke-direct {p0, v6}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(I)V

    .line 393
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 394
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    .line 395
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    .line 394
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 396
    .local v1, "menuAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 397
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    .line 398
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    .line 397
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 399
    .local v0, "dismissAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 400
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x7d

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 402
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/pip/phone/PipMenuActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity$5;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 416
    .end local v0    # "dismissAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "menuAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_12814(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 1
    .param p0, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_18581(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_20235(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "actionView"    # Landroid/widget/ImageView;
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 489
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 490
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_20566(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 3
    .param p0, "action"    # Landroid/app/RemoteAction;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 496
    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "PipMenuActivity"

    const-string/jumbo v2, "Failed to send action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyActivityCallback(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Messenger;

    .prologue
    .line 592
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 593
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 594
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 595
    const-string/jumbo v1, "Could not notify controller of activity finished"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method private notifyMenuStateChange(I)V
    .locals 2
    .param p1, "menuState"    # I

    .prologue
    .line 555
    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    .line 556
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 558
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 559
    const-string/jumbo v1, "Could not notify controller of PIP menu visibility"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method private notifyRegisterInputConsumer()V
    .locals 2

    .prologue
    .line 543
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 544
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 545
    const-string/jumbo v1, "Could not notify controller to register input consumer"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private notifyUnregisterInputConsumer()V
    .locals 2

    .prologue
    .line 549
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 550
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 551
    const-string/jumbo v1, "Could not notify controller to unregister input consumer"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method private repostDelayedFinish(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 621
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    return-void
.end method

.method private sendEmptyMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 600
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 601
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private sendMessage(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 606
    return-void

    .line 609
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PipMenuActivity"

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setActions(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 1
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 448
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    .line 450
    return-void
.end method

.method private showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 8
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z
    .param p5, "resizeMenuOnShow"    # Z

    .prologue
    .line 338
    iput-boolean p4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    .line 339
    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eq v3, p1, :cond_6

    .line 342
    if-eqz p5, :cond_4

    .line 343
    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 344
    .local v0, "disallowTouchesUntilAnimationEnd":Z
    :goto_0
    xor-int/lit8 v3, v0, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    .line 345
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 346
    invoke-direct {p0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    .line 347
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    .line 348
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 350
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(I)V

    .line 351
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 352
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 353
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 352
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 354
    .local v2, "menuAnim":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 356
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 355
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 357
    .local v1, "dismissAnim":Landroid/animation/ObjectAnimator;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    .line 358
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 362
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 363
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 364
    if-eqz p4, :cond_2

    .line 365
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/pip/phone/PipMenuActivity$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$4;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 372
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 381
    .end local v0    # "disallowTouchesUntilAnimationEnd":Z
    .end local v1    # "dismissAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "menuAnim":Landroid/animation/ObjectAnimator;
    :goto_2
    return-void

    .line 343
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "disallowTouchesUntilAnimationEnd":Z
    goto/16 :goto_0

    .line 342
    .end local v0    # "disallowTouchesUntilAnimationEnd":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "disallowTouchesUntilAnimationEnd":Z
    goto/16 :goto_0

    .line 360
    .restart local v1    # "dismissAnim":Landroid/animation/ObjectAnimator;
    .restart local v2    # "menuAnim":Landroid/animation/ObjectAnimator;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 376
    .end local v0    # "disallowTouchesUntilAnimationEnd":Z
    .end local v1    # "dismissAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "menuAnim":Landroid/animation/ObjectAnimator;
    :cond_6
    if-eqz p4, :cond_7

    .line 377
    const-wide/16 v4, 0x7d0

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    .line 379
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyUnregisterInputConsumer()V

    goto :goto_2
.end method

.method private showPipMenu()V
    .locals 2

    .prologue
    .line 586
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 587
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 588
    const-string/jumbo v1, "Could not notify controller to show PIP menu"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method private updateActionViews(Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 453
    const v9, 0x7f0a00e3

    invoke-virtual {p0, v9}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 454
    .local v3, "expandContainer":Landroid/view/ViewGroup;
    const v9, 0x7f0a002c

    invoke-virtual {p0, v9}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "actionsContainer":Landroid/view/ViewGroup;
    sget-object v9, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk;->$INST$0:Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk;

    .line 455
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 460
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    iget v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-ne v9, v13, :cond_1

    .line 461
    :cond_0
    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 522
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 464
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_a

    .line 466
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 467
    .local v6, "inflater":Landroid/view/LayoutInflater;
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    iget-object v11, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_2

    .line 469
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    const v11, 0x7f0d00d9

    .line 468
    invoke-virtual {v6, v11, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 470
    .local v1, "actionView":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 474
    .end local v1    # "actionView":Landroid/widget/ImageView;
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 475
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    move v9, v10

    :goto_3
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 474
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 477
    :cond_3
    const/16 v9, 0x8

    goto :goto_3

    .line 481
    :cond_4
    if-eqz p1, :cond_7

    .line 482
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v9, v11, :cond_6

    const/4 v7, 0x1

    .line 483
    .local v7, "isLandscapePip":Z
    :goto_4
    const/4 v5, 0x0

    :goto_5
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_a

    .line 484
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    .line 485
    .local v0, "action":Landroid/app/RemoteAction;
    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 488
    .restart local v1    # "actionView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    new-instance v11, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$1;

    invoke-direct {v11, v1}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$1;-><init>(Ljava/lang/Object;)V

    .line 491
    iget-object v12, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    .line 488
    invoke-virtual {v9, p0, v11, v12}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 492
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 493
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 494
    new-instance v9, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;

    invoke-direct {v9, v13, v0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    :cond_5
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 503
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_6
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 507
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 506
    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 508
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v7, :cond_9

    if-lez v5, :cond_9

    iget v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    :goto_7
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 483
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 482
    .end local v0    # "action":Landroid/app/RemoteAction;
    .end local v1    # "actionView":Landroid/widget/ImageView;
    .end local v7    # "isLandscapePip":Z
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "isLandscapePip":Z
    goto :goto_4

    .line 481
    .end local v7    # "isLandscapePip":Z
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "isLandscapePip":Z
    goto :goto_4

    .line 503
    .restart local v0    # "action":Landroid/app/RemoteAction;
    .restart local v1    # "actionView":Landroid/widget/ImageView;
    :cond_8
    const v9, 0x3f0a3d71    # 0.54f

    goto :goto_6

    .restart local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    move v9, v10

    .line 508
    goto :goto_7

    .line 515
    .end local v0    # "action":Landroid/app/RemoteAction;
    .end local v1    # "actionView":Landroid/widget/ImageView;
    .end local v5    # "i":I
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    .end local v7    # "isLandscapePip":Z
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 516
    .local v4, "expandedLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 517
    const v10, 0x7f07032a

    .line 516
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 518
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 519
    const v10, 0x7f07032f

    .line 518
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 520
    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    goto/16 :goto_0
.end method

.method private updateDismissFraction(F)V
    .locals 7
    .param p1, "fraction"    # F

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    const v5, 0x3f19999a    # 0.6f

    .line 526
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, p1

    .line 527
    .local v2, "menuAlpha":F
    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 528
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 529
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 531
    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v2

    mul-float v4, v5, p1

    add-float v1, v3, v4

    .line 532
    .local v1, "interpolatedAlpha":F
    mul-float v3, v1, v6

    float-to-int v0, v3

    .line 539
    .end local v1    # "interpolatedAlpha":F
    .local v0, "alpha":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 540
    return-void

    .line 534
    .end local v0    # "alpha":I
    :cond_0
    iget v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 535
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 537
    :cond_1
    mul-float v3, p1, v5

    mul-float/2addr v3, v6

    float-to-int v0, v3

    .restart local v0    # "alpha":I
    goto :goto_0
.end method

.method private updateFromIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 419
    const-string/jumbo v0, "messenger"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    .line 420
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 421
    const-string/jumbo v0, "PipMenuActivity"

    const-string/jumbo v7, "Controller messenger is null. Stopping."

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    .line 423
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 428
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 430
    const-string/jumbo v0, "actions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ParceledListSlice;

    .line 431
    .local v6, "actions":Landroid/content/pm/ParceledListSlice;
    if-eqz v6, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 436
    :cond_1
    const-string/jumbo v0, "menu_state"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 437
    .local v1, "menuState":I
    if-eqz v1, :cond_2

    .line 438
    const-string/jumbo v0, "stack_bounds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 439
    .local v2, "stackBounds":Landroid/graphics/Rect;
    const-string/jumbo v0, "movement_bounds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 440
    .local v3, "movementBounds":Landroid/graphics/Rect;
    const-string/jumbo v0, "allow_timeout"

    const/4 v7, 0x1

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 441
    .local v4, "allowMenuTimeout":Z
    const-string/jumbo v0, "resize_menu_on_show"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, "willResizeMenu":Z
    move-object v0, p0

    .line 442
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 444
    .end local v2    # "stackBounds":Landroid/graphics/Rect;
    .end local v3    # "movementBounds":Landroid/graphics/Rect;
    .end local v4    # "allowMenuTimeout":Z
    .end local v5    # "willResizeMenu":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    if-nez v0, :cond_0

    .line 285
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 307
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 291
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 300
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyRegisterInputConsumer()V

    .line 303
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 315
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->overridePendingTransition(II)V

    .line 316
    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_12776(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_23692()V
    .locals 2

    .prologue
    .line 567
    const-string/jumbo v0, "Could not notify controller to expand PIP"

    .line 566
    const/16 v1, 0x65

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_24250()V
    .locals 2

    .prologue
    .line 581
    const-string/jumbo v0, "Could not notify controller to dismiss PIP"

    .line 580
    const/16 v1, 0x67

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_7407()V
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showPipMenu()V

    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->expandPip()V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_8114(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return v2

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isDoubleTap()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->expandPip()V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isWaitingForDoubleTap()Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-ne v0, v2, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showPipMenu()V

    goto :goto_0

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->scheduleDoubleTapTimeoutCallback()V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivity_9412(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->dismissPip()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .prologue
    .line 324
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 328
    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$cKgf7Q4SVSxRDB6DeNId7iYTams;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 332
    const/4 v1, 0x1

    .line 328
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;Z)V

    .line 334
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 179
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 180
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchState;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewConfig:Landroid/view/ViewConfiguration;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0}, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;-><init>(BLjava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/pip/phone/PipTouchState;-><init>(Landroid/view/ViewConfiguration;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20040000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 190
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setContentView(I)V

    .line 192
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 194
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    const v0, 0x7f0a01b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;

    invoke-direct {v1, v6, p0}, Lcom/android/systemui/pip/phone/-$Lambda$zhGzj57RCvU7cfDWUs39QAoQ-gk$2;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 228
    const v1, 0x7f07032c

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    .line 229
    const v0, 0x7f0a00e2

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    .line 232
    const v0, 0x7f1103dc

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setTitle(I)V

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setDisablePreviewScreenshots(Z)V

    .line 234
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 273
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    .line 280
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 263
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_0

    .line 245
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    .line 247
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    .line 256
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 321
    return-void
.end method
