.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$CtrlType;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field private static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field static final MIN_ASPECT:F = 1.2f

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field static final SIDE_MARGIN_DIP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mCurrentDimSide:I

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mPreserveOrientation:Z

.field private mResizing:Z

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStartOrientationWasLandscape:Z

.field private mTask:Lcom/android/server/wm/Task;

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/TaskPositioner;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskPositioner;

    .prologue
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskPositioner;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskPositioner;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskPositioner;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskPositioner;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskPositioner;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskPositioner;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/TaskPositioner;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/wm/TaskPositioner;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/TaskPositioner;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskPositioner;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/wm/TaskPositioner;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .line 121
    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 122
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 236
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 237
    return-void
.end method

.method private checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 602
    return-void
.end method

.method private endDragLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 409
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 411
    return-void
.end method

.method private getDimSide(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 652
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v2, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 652
    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_1

    .line 655
    :cond_0
    return v3

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 659
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 660
    const/4 v0, 0x1

    return v0

    .line 662
    :cond_2
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_3

    .line 663
    return v2

    .line 666
    :cond_3
    return v3
.end method

.method private notifyMoveLocked(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 415
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v2, :cond_0

    .line 416
    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyMoveLocked: {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v2, :cond_1

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    .line 421
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 422
    return v5

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 428
    float-to-int v0, p1

    .line 429
    .local v0, "nX":I
    float-to-int v1, p2

    .line 430
    .local v1, "nY":I
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 433
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 434
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 437
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    .line 438
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPositioner;->updateDimLayerVisibility(I)V

    .line 439
    return v5
.end method

.method private showDimLayer()V
    .locals 5

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 671
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 677
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 678
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v1

    .line 679
    const-wide/16 v2, 0x0

    .line 678
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 680
    return-void

    .line 673
    :cond_1
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateDimLayerVisibility(I)V
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPositioner;->getDimSide(I)I

    move-result v0

    .line 628
    .local v0, "dimSide":I
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v0, v1, :cond_0

    .line 629
    return-void

    .line 632
    :cond_0
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    .line 634
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v2, ">>> OPEN TRANSACTION updateDimLayerVisibility"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 636
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-nez v1, :cond_2

    .line 637
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 641
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    .line 642
    return-void

    .line 639
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->showDimLayer()V

    goto :goto_0
.end method

.method private updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 605
    int-to-float v6, p1

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 606
    .local v4, "offsetX":I
    int-to-float v6, p2

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 607
    .local v5, "offsetY":I
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 609
    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v0, v6, v7

    .line 610
    .local v0, "maxLeft":I
    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v2, v6, v7

    .line 614
    .local v2, "minLeft":I
    iget v3, p3, Landroid/graphics/Rect;->top:I

    .line 615
    .local v3, "minTop":I
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v1, v6, v7

    .line 617
    .local v1, "maxTop":I
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 618
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v4

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 619
    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 617
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 621
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    .line 622
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateWindowDragBounds: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 621
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    return-void
.end method


# virtual methods
.method public dimFullscreen()Z
    .locals 1

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 704
    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getWindowDragBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isAttachedToDisplay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 698
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isFullscreen()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method register(Landroid/view/Display;)V
    .locals 12
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const-wide v10, 0x12a05f200L

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 248
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v2, :cond_0

    .line 249
    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Registering task positioner"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_1

    .line 253
    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Task positioner already registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 257
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 258
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 259
    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 260
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 261
    aget-object v2, v0, v8

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 262
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v7}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 264
    new-instance v2, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 265
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 266
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v5

    .line 264
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 268
    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v2, v7}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 269
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 270
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 273
    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 274
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 273
    invoke-direct {v2, v3, v7, v7, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 275
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 277
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 278
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 279
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v3, 0x7e0

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 280
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 282
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 283
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 284
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 285
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 286
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 287
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 288
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 289
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 290
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 293
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 296
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 297
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 298
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 299
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 300
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 301
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 304
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_2

    .line 305
    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Pausing rotation during re-position"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    .line 309
    new-instance v2, Lcom/android/server/wm/DimLayer;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    const-string/jumbo v5, "TaskPositioner"

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 310
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x64

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    .line 311
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x30

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 312
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x20

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 313
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 315
    iput-boolean v6, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 316
    return-void
.end method

.method resizeDrag(FF)V
    .locals 22
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 455
    .local v10, "deltaX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 456
    .local v11, "deltaY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 457
    .local v3, "left":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 458
    .local v4, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 459
    .local v5, "right":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 464
    .local v6, "bottom":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-nez v2, :cond_6

    .line 465
    const/high16 v15, 0x3f800000    # 1.0f

    .line 468
    .local v15, "minAspect":F
    :goto_0
    sub-int v7, v5, v3

    .line 469
    .local v7, "width":I
    sub-int v8, v6, v4

    .line 470
    .local v8, "height":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    .line 471
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v18, v7, v10

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 475
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_9

    .line 476
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v18, v8, v11

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 482
    :cond_1
    :goto_2
    int-to-float v2, v7

    int-to-float v0, v8

    move/from16 v18, v0

    div-float v9, v2, v18

    .line 483
    .local v9, "aspect":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v2, :cond_a

    const v2, 0x3f99999a    # 1.2f

    cmpg-float v2, v9, v2

    if-gez v2, :cond_a

    .line 491
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v2, :cond_b

    .line 493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 494
    .local v16, "width1":I
    move/from16 v0, v16

    int-to-float v2, v0

    const v18, 0x3f99999a    # 1.2f

    div-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 495
    .local v13, "height1":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v13, v2, :cond_2

    .line 497
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 498
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 498
    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 502
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 503
    .local v14, "height2":I
    int-to-float v2, v14

    const v18, 0x3f99999a    # 1.2f

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 504
    .local v17, "width2":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v17, v0

    .line 507
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 507
    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 533
    :cond_3
    :goto_4
    sub-int v2, v5, v3

    if-gt v7, v2, :cond_4

    sub-int v2, v6, v4

    if-le v8, v2, :cond_d

    :cond_4
    const/4 v12, 0x1

    .line 534
    .local v12, "grows":Z
    :goto_5
    mul-int v2, v16, v13

    mul-int v18, v17, v14

    move/from16 v0, v18

    if-le v2, v0, :cond_e

    const/4 v2, 0x1

    :goto_6
    if-ne v12, v2, :cond_f

    .line 535
    move/from16 v7, v16

    .line 536
    move v8, v13

    .end local v12    # "grows":Z
    .end local v13    # "height1":I
    .end local v14    # "height2":I
    .end local v16    # "width1":I
    .end local v17    # "width2":I
    :cond_5
    :goto_7
    move-object/from16 v2, p0

    .line 544
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(IIIIII)V

    .line 545
    return-void

    .line 466
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "aspect":F
    .end local v15    # "minAspect":F
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v2, :cond_7

    const v15, 0x3f99999a    # 1.2f

    .restart local v15    # "minAspect":F
    goto/16 :goto_0

    .end local v15    # "minAspect":F
    :cond_7
    const v15, 0x3f555555

    .restart local v15    # "minAspect":F
    goto/16 :goto_0

    .line 472
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int v18, v7, v10

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto/16 :goto_1

    .line 477
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 478
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    add-int v18, v8, v11

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_2

    .line 484
    .restart local v9    # "aspect":F
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-nez v2, :cond_5

    float-to-double v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v2, v18, v20

    if-lez v2, :cond_5

    goto/16 :goto_3

    .line 512
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 513
    .restart local v16    # "width1":I
    move/from16 v0, v16

    int-to-float v2, v0

    const v18, 0x3f99999a    # 1.2f

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 514
    .restart local v13    # "height1":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v13, v2, :cond_c

    .line 516
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 517
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    int-to-float v0, v13

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 517
    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 521
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 522
    .restart local v14    # "height2":I
    int-to-float v2, v14

    const v18, 0x3f99999a    # 1.2f

    div-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 523
    .restart local v17    # "width2":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    move/from16 v17, v0

    .line 526
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f99999a    # 1.2f

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 526
    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto/16 :goto_4

    .line 533
    :cond_d
    const/4 v12, 0x0

    .restart local v12    # "grows":Z
    goto/16 :goto_5

    .line 534
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 538
    :cond_f
    move/from16 v7, v17

    .line 539
    move v8, v14

    goto/16 :goto_7
.end method

.method startDrag(Lcom/android/server/wm/WindowState;ZZFF)V
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "resize"    # Z
    .param p3, "preserveOrientation"    # Z
    .param p4, "startX"    # F
    .param p5, "startY"    # F

    .prologue
    .line 357
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDrag: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", resize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    const-string/jumbo v2, ", preserveOrientation="

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    const-string/jumbo v2, ", {"

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    const-string/jumbo v2, ", "

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    const-string/jumbo v2, "}"

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 369
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskPositioner;->startDrag(ZZFFLandroid/graphics/Rect;)V

    .line 370
    return-void
.end method

.method startDrag(ZZFFLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "resize"    # Z
    .param p2, "preserveOrientation"    # Z
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "startBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 376
    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 377
    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 378
    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    .line 380
    if-eqz p1, :cond_4

    .line 381
    iget v0, p5, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 382
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 384
    :cond_0
    iget v0, p5, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 385
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 387
    :cond_1
    iget v0, p5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    .line 388
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 390
    :cond_2
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_3

    .line 391
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 393
    :cond_3
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 400
    :cond_4
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v0, v3, :cond_6

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 406
    return-void

    :cond_5
    move v0, v2

    .line 393
    goto :goto_0

    :cond_6
    move v1, v2

    .line 400
    goto :goto_1
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method unregister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unregistering task positioner"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_1

    .line 324
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Task positioner not registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    .line 331
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 334
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 335
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 337
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 338
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 339
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 343
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 345
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 349
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_3

    .line 350
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Resuming rotation after re-position"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    .line 353
    return-void
.end method

.method updateDraggedBounds(IIIIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "newWidth"    # I
    .param p6, "newHeight"    # I

    .prologue
    .line 560
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 561
    sub-int p1, p3, p5

    .line 565
    :goto_0
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 566
    sub-int p2, p4, p6

    .line 571
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    .line 574
    return-void

    .line 563
    :cond_0
    add-int p3, p1, p5

    goto :goto_0

    .line 568
    :cond_1
    add-int p4, p2, p6

    goto :goto_1
.end method
