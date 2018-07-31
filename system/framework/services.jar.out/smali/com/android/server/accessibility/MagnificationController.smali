.class Lcom/android/server/accessibility/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$1;,
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/MagnificationController$SettingsBridge;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
    }
.end annotation


# static fields
.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final INVALID_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationController"

.field public static final MAX_SCALE:F = 5.0f

.field public static final MIN_SCALE:F = 1.0f

.field private static final MSG_ON_MAGNIFIED_BOUNDS_CHANGED:I = 0x3

.field private static final MSG_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x4

.field private static final MSG_ON_USER_CONTEXT_CHANGED:I = 0x5

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x2

.field private static final MSG_SEND_SPEC_TO_ANIMATION:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mHandler:Landroid/os/Handler;

.field private mIdOfLastServiceToMagnify:I

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private final mMainThreadId:J

.field private mRegistered:Z

.field private final mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

.field private final mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field private mUserId:I

.field private final mWMCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

.field private final mWindowManager:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationController;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$SettingsBridge;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 146
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManagerInternal;

    .line 147
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v7, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;-><init>(Landroid/content/ContentResolver;)V

    .line 146
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/os/Handler;Landroid/view/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SettingsBridge;)V

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/os/Handler;Landroid/view/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SettingsBridge;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "windowManagerInternal"    # Landroid/view/WindowManagerInternal;
    .param p6, "valueAnimator"    # Landroid/animation/ValueAnimator;
    .param p7, "settingsBridge"    # Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 84
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationController$1;-><init>(Lcom/android/server/accessibility/MagnificationController;)V

    .line 98
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWMCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 154
    iput-object p4, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    .line 155
    iput-object p5, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    .line 157
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 158
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    .line 159
    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 161
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    .line 160
    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/view/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 162
    iput-object p7, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    .line 163
    return-void
.end method

.method private getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "outFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentScale()F

    move-result v2

    .line 696
    .local v2, "scale":F
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetX()F

    move-result v0

    .line 697
    .local v0, "offsetX":F
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetY()F

    move-result v1

    .line 698
    .local v1, "offsetY":F
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 699
    neg-float v3, v0

    float-to-int v3, v3

    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 700
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 701
    return-void
.end method

.method private getMinOffsetXLocked()F
    .locals 2

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v0, v1

    .line 646
    .local v0, "viewportWidth":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    return v1
.end method

.method private getMinOffsetYLocked()F
    .locals 2

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v1

    .line 651
    .local v0, "viewportHeight":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    return v1
.end method

.method private getSentOffsetX()F
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method private getSentOffsetY()F
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method private getSentScale()F
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get0(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method private onMagnificationChangedLocked()V
    .locals 5

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    .line 551
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result v4

    .line 550
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(Landroid/graphics/Region;FFF)V

    .line 552
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V

    .line 555
    :cond_0
    return-void
.end method

.method private onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "magnified"    # Landroid/graphics/Region;

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 238
    return-void

    .line 240
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 246
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 245
    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v1

    .line 252
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 758
    return-void
.end method

.method private requestRectangleOnScreen(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 704
    iget-object v7, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 705
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 706
    .local v2, "magnifiedFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 707
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v7

    .line 708
    return-void

    .line 711
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    .line 712
    .local v1, "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 716
    sub-int v6, p3, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v6, v8, :cond_2

    .line 718
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 717
    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 719
    .local v0, "direction":I
    if-nez v0, :cond_1

    .line 720
    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    .line 732
    .end local v0    # "direction":I
    .local v4, "scrollX":F
    :goto_0
    sub-int v6, p4, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v6, v8, :cond_5

    .line 733
    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    .line 742
    .local v5, "scrollY":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v3

    .line 743
    .local v3, "scale":F
    mul-float v6, v4, v3

    mul-float v8, v5, v3

    const/4 v9, -0x1

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegion(FFI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 745
    return-void

    .line 722
    .end local v3    # "scale":F
    .end local v4    # "scrollX":F
    .end local v5    # "scrollY":F
    .restart local v0    # "direction":I
    :cond_1
    :try_start_2
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    .restart local v4    # "scrollX":F
    goto :goto_0

    .line 724
    .end local v0    # "direction":I
    .end local v4    # "scrollX":F
    :cond_2
    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v6, :cond_3

    .line 725
    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    .restart local v4    # "scrollX":F
    goto :goto_0

    .line 726
    .end local v4    # "scrollX":F
    :cond_3
    iget v6, v1, Landroid/graphics/Rect;->right:I

    if-le p3, v6, :cond_4

    .line 727
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    .restart local v4    # "scrollX":F
    goto :goto_0

    .line 729
    .end local v4    # "scrollX":F
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "scrollX":F
    goto :goto_0

    .line 734
    :cond_5
    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-ge p2, v6, :cond_6

    .line 735
    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    .restart local v5    # "scrollY":F
    goto :goto_1

    .line 736
    .end local v5    # "scrollY":F
    :cond_6
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-le p4, v6, :cond_7

    .line 737
    iget v6, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int v6, p4, v6

    int-to-float v5, v6

    .restart local v5    # "scrollY":F
    goto :goto_1

    .line 739
    .end local v5    # "scrollY":F
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "scrollY":F
    goto :goto_1

    .line 704
    .end local v1    # "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    .end local v2    # "magnifiedFrame":Landroid/graphics/Rect;
    .end local v4    # "scrollX":F
    .end local v5    # "scrollY":F
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private resetLocked(Z)Z
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    .line 402
    iget-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v2, :cond_0

    .line 403
    const/4 v2, 0x0

    return v2

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 406
    .local v1, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    .line 407
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    .line 409
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    .line 411
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 412
    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 413
    return v0
.end method

.method private sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V
    .locals 8
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 748
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    .line 754
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    .line 752
    if-eqz p2, :cond_1

    move v0, v1

    .line 751
    :goto_1
    invoke-virtual {v3, v1, v0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 752
    goto :goto_1
.end method

.method private setScaleAndCenterLocked(FFFZI)Z
    .locals 2
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .prologue
    .line 506
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController;->updateMagnificationSpecLocked(FFF)Z

    move-result v0

    .line 507
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v1, p4}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 508
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq p5, v1, :cond_0

    .line 509
    iput p5, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 511
    :cond_0
    return v0
.end method

.method private unregisterInternalLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->unregister()V

    .line 214
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 216
    iput-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    .line 218
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    .line 219
    return-void
.end method

.method private updateCurrentSpecWithOffsetsLocked(FF)Z
    .locals 5
    .param p1, "nonNormOffsetX"    # F
    .param p2, "nonNormOffsetY"    # F

    .prologue
    const/4 v4, 0x0

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetXLocked()F

    move-result v3

    invoke-static {p1, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 632
    .local v1, "offsetX":F
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v3, Landroid/view/MagnificationSpec;->offsetX:F

    .line 634
    const/4 v0, 0x1

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetYLocked()F

    move-result v3

    invoke-static {p2, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    .line 637
    .local v2, "offsetY":F
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    .line 638
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v2, v3, Landroid/view/MagnificationSpec;->offsetY:F

    .line 639
    const/4 v0, 0x1

    .line 641
    :cond_1
    return v0
.end method

.method private updateMagnificationSpecLocked(FFF)Z
    .locals 7
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 597
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result p2

    .line 600
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result p3

    .line 603
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 604
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result p1

    .line 608
    :cond_2
    const/4 v0, 0x0

    .line 610
    .local v0, "changed":Z
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {p1, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    .line 611
    .local v3, "normScale":F
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_3

    .line 612
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v3, v4, Landroid/view/MagnificationSpec;->scale:F

    .line 613
    const/4 v0, 0x1

    .line 616
    :cond_3
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    .line 617
    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 616
    add-float/2addr v4, v5

    .line 617
    mul-float v5, p2, v3

    .line 616
    sub-float v1, v4, v5

    .line 618
    .local v1, "nonNormOffsetX":F
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    .line 619
    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 618
    add-float/2addr v4, v5

    .line 619
    mul-float v5, p3, v3

    .line 618
    sub-float v2, v4, v5

    .line 620
    .local v2, "nonNormOffsetY":F
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v4

    or-int/2addr v0, v4

    .line 622
    .local v0, "changed":Z
    if-eqz v0, :cond_4

    .line 623
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    .line 626
    :cond_4
    return v0
.end method


# virtual methods
.method public getCenterX()F
    .locals 3

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 326
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 325
    add-float/2addr v0, v2

    .line 326
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    move-result v2

    .line 325
    sub-float/2addr v0, v2

    .line 326
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 325
    div-float/2addr v0, v2

    monitor-exit v1

    return v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCenterY()F
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 349
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 348
    add-float/2addr v0, v2

    .line 349
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    move-result v2

    .line 348
    sub-float/2addr v0, v2

    .line 349
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 348
    div-float/2addr v0, v2

    monitor-exit v1

    return v0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getIdOfLastServiceToMagnify()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    return v0
.end method

.method public getMagnificationBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 281
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 294
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method public getPersistedScale()F
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;->getMagnificationScale(I)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    .line 761
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 790
    :goto_0
    return v9

    .line 763
    :pswitch_0
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_0

    const/4 v0, 0x1

    .line 764
    .local v0, "animate":Z
    :goto_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/MagnificationSpec;

    .line 765
    .local v6, "spec":Landroid/view/MagnificationSpec;
    iget-object v8, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v8, v6, v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    goto :goto_0

    .line 763
    .end local v0    # "animate":Z
    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "animate":Z
    goto :goto_1

    .line 768
    .end local v0    # "animate":Z
    :pswitch_1
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    goto :goto_0

    .line 771
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 772
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Region;

    .line 773
    .local v4, "magnifiedBounds":Landroid/graphics/Region;
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    .line 774
    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    .line 775
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 778
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "magnifiedBounds":Landroid/graphics/Region;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 779
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 780
    .local v3, "left":I
    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 781
    .local v7, "top":I
    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 782
    .local v5, "right":I
    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 783
    .local v2, "bottom":I
    invoke-direct {p0, v3, v7, v5, v2}, Lcom/android/server/accessibility/MagnificationController;->requestRectangleOnScreen(IIII)V

    .line 784
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 787
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "bottom":I
    .end local v3    # "left":I
    .end local v5    # "right":I
    .end local v7    # "top":I
    :pswitch_4
    invoke-virtual {p0, v9}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    goto :goto_0

    .line 761
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isMagnifying()Z
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegisteredLocked()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    return v0
.end method

.method public magnificationRegionContains(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->contains(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public offsetMagnifiedRegion(FFI)V
    .locals 5
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "id"    # I

    .prologue
    .line 525
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 526
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    .line 527
    return-void

    .line 530
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v0, v2, p1

    .line 531
    .local v0, "nonNormOffsetX":F
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v1, v2, p2

    .line 532
    .local v1, "nonNormOffsetY":F
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    .line 533
    const/4 v2, -0x1

    if-eq p3, v2, :cond_1

    .line 534
    iput p3, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 536
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 538
    return-void

    .line 525
    .end local v0    # "nonNormOffsetX":F
    .end local v1    # "nonNormOffsetY":F
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public persistScale()V
    .locals 4

    .prologue
    .line 561
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v2, Landroid/view/MagnificationSpec;->scale:F

    .line 562
    .local v0, "scale":F
    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 564
    .local v1, "userId":I
    new-instance v2, Lcom/android/server/accessibility/MagnificationController$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController$2;-><init>(Lcom/android/server/accessibility/MagnificationController;FI)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/MagnificationController$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 571
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->register()V

    .line 176
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mWMCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    .line 177
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/view/WindowManagerInternal;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 184
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset(Z)Z
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 396
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method resetIfNeeded(Z)Z
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 679
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 684
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCenter(FFZI)Z
    .locals 7
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "animate"    # Z
    .param p4, "id"    # I

    .prologue
    .line 470
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 471
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 472
    const/4 v0, 0x0

    monitor-exit v6

    return v0

    .line 474
    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method setForceShowMagnifiableBounds(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerInternal;->setForceShowMagnifiableBounds(Z)V

    .line 692
    :cond_0
    return-void
.end method

.method public setScale(FFFZI)Z
    .locals 18
    .param p1, "scale"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .prologue
    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 432
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 433
    const/4 v2, 0x0

    monitor-exit v17

    return v2

    .line 436
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40a00000    # 5.0f

    :try_start_1
    move/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 439
    .local v16, "viewport":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 440
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 441
    .local v15, "spec":Landroid/view/MagnificationSpec;
    iget v14, v15, Landroid/view/MagnificationSpec;->scale:F

    .line 442
    .local v14, "oldScale":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, v15, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v2, v3

    div-float v12, v2, v14

    .line 443
    .local v12, "oldCenterX":F
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, v15, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v2, v3

    div-float v13, v2, v14

    .line 444
    .local v13, "oldCenterY":F
    iget v2, v15, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v2, p2, v2

    div-float v8, v2, v14

    .line 445
    .local v8, "normPivotX":F
    iget v2, v15, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v2, p3, v2

    div-float v9, v2, v14

    .line 446
    .local v9, "normPivotY":F
    sub-float v2, v12, v8

    div-float v3, v14, p1

    mul-float v10, v2, v3

    .line 447
    .local v10, "offsetX":F
    sub-float v2, v13, v9

    div-float v3, v14, p1

    mul-float v11, v2, v3

    .line 448
    .local v11, "offsetY":F
    add-float v4, v8, v10

    .line 449
    .local v4, "centerX":F
    add-float v5, v9, v11

    .line 450
    .local v5, "centerY":F
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v6, p4

    move/from16 v7, p5

    .line 451
    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v17

    return v2

    .line 431
    .end local v4    # "centerX":F
    .end local v5    # "centerY":F
    .end local v8    # "normPivotX":F
    .end local v9    # "normPivotY":F
    .end local v10    # "offsetX":F
    .end local v11    # "offsetY":F
    .end local v12    # "oldCenterX":F
    .end local v13    # "oldCenterY":F
    .end local v14    # "oldScale":F
    .end local v15    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "viewport":Landroid/graphics/Rect;
    :catchall_0
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method public setScaleAndCenter(FFFZI)Z
    .locals 2
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 500
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUserId(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 660
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    if-eq v0, p1, :cond_1

    .line 661
    iput p1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 663
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 664
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 669
    :cond_1
    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 199
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
