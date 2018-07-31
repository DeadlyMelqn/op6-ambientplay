.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final HIDE:I = 0x1

.field static final LONG_DURATION_TIMEOUT:J = 0x1b58L

.field static final SHORT_DURATION_TIMEOUT:J = 0xfa0L

.field private static final SHOW:I


# instance fields
.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field mPackageName:Ljava/lang/String;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method static synthetic -get0(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "-this"    # Landroid/widget/Toast$TN;

    .prologue
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 370
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 346
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 373
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 374
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 375
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 376
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 377
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 381
    const-string/jumbo v1, "com.oneplus.screenshot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    const/16 v1, 0x8ff

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 388
    :goto_0
    const-string/jumbo v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 393
    iput-object p1, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    .line 395
    if-nez p2, :cond_1

    .line 397
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    .line 398
    if-nez p2, :cond_1

    .line 399
    new-instance v1, Ljava/lang/RuntimeException;

    .line 400
    const-string/jumbo v2, "Can\'t toast on a thread that has not called Looper.prepare()"

    .line 399
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_0
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 403
    :cond_1
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0, p2, v2}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 433
    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 515
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 516
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    return-void

    .line 522
    :cond_0
    const/16 v2, 0x40

    .line 521
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 523
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 526
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 527
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 456
    return-void
.end method

.method public handleHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 531
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 540
    :cond_0
    iput-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 542
    :cond_1
    return-void
.end method

.method public handleShow(Landroid/os/IBinder;)V
    .locals 9
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 463
    iget-object v5, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 464
    :cond_0
    return-void

    .line 466
    :cond_1
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v5, v6, :cond_6

    .line 468
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 469
    iget-object v5, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 470
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 471
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "packageName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 473
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 475
    :cond_2
    const-string/jumbo v5, "window"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    .line 478
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 479
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    .line 480
    .local v3, "gravity":I
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 481
    and-int/lit8 v5, v3, 0x7

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3

    .line 482
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 484
    :cond_3
    and-int/lit8 v5, v3, 0x70

    const/16 v6, 0x70

    if-ne v5, v6, :cond_4

    .line 485
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 487
    :cond_4
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mX:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 488
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mY:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 489
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 490
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 491
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v4, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 492
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mDuration:I

    if-ne v6, v8, :cond_7

    .line 493
    const-wide/16 v6, 0x1b58

    .line 492
    :goto_0
    iput-wide v6, v5, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 494
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 495
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 497
    iget-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 505
    :cond_5
    :try_start_0
    iget-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "gravity":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_6
    :goto_1
    return-void

    .line 493
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "gravity":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_7
    const-wide/16 v6, 0xfa0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    goto :goto_1
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 451
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 441
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 442
    return-void
.end method
