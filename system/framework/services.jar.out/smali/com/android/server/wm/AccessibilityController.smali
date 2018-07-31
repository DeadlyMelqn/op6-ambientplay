.class final Lcom/android/server/wm/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;,
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    }
.end annotation


# static fields
.field private static final sTempFloats:[F


# instance fields
.field private mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

.field private mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController;->isRoundScreenWin(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    return-void
.end method

.method private static isRoundScreenWin(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 252
    if-eqz p0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7df

    if-ne v0, v1, :cond_1

    .line 254
    const-string/jumbo v0, "ScreenDecorTop"

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const-string/jumbo v0, "ScreenDecorBottom"

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 252
    :goto_0
    return v0

    .line 254
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 4
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 237
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 238
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 239
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 240
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 241
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 242
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 243
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 244
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 245
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 246
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 247
    return-void
.end method


# virtual methods
.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 214
    :cond_0
    return-void
.end method

.method public getMagnificationRegionLocked(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "outMagnificationRegion"    # Landroid/graphics/Region;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationRegionLocked(Landroid/graphics/Region;)V

    .line 144
    :cond_0
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .locals 2
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    return-object v1
.end method

.method public hasCallbacksLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 176
    :cond_0
    return-void
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    .line 151
    :cond_0
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 169
    :cond_1
    return-void
.end method

.method public onSomeWindowResizedOrMovedLocked()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 206
    :cond_0
    return-void
.end method

.method public onWindowFocusChangedNotLocked()V
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    monitor-exit v1

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked()V

    .line 197
    :cond_0
    return-void

    .line 191
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public onWindowLayersChangedLocked()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowLayersChangedLocked()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 160
    :cond_1
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 1
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 185
    :cond_1
    return-void
.end method

.method public performComputeChangedWindowsNotLocked()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    monitor-exit v1

    .line 126
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked()V

    .line 129
    :cond_0
    return-void

    .line 123
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public setForceShowMagnifiableBoundsLocked(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setForceShowMagnifiableBoundsLocked(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->showMagnificationBoundsIfNeeded()V

    .line 233
    :cond_0
    return-void
.end method

.method public setMagnificationCallbacksLocked(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    .prologue
    const/4 v1, 0x0

    .line 90
    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Magnification callbacks already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Magnification callbacks already cleared!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->destroyLocked()V

    .line 100
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    goto :goto_0
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 138
    :cond_1
    return-void
.end method

.method public setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    const/4 v1, 0x0

    .line 105
    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 108
    const-string/jumbo v1, "Windows for accessibility callback already set!"

    .line 107
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 111
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 110
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 115
    const-string/jumbo v1, "Windows for accessibility callback already cleared!"

    .line 114
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    goto :goto_0
.end method
