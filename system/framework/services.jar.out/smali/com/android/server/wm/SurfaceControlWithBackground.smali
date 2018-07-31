.class Lcom/android/server/wm/SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "SurfaceControlWithBackground.java"


# instance fields
.field private mBackgroundControl:Landroid/view/SurfaceControl;

.field private mHiddenForCrop:Z

.field private mLastDsDx:F

.field private mLastDsDy:F

.field private mLastHeight:F

.field private mLastWidth:F

.field private mLastX:F

.field private mLastY:F

.field private mTmpContainerRect:Landroid/graphics/Rect;

.field private mVisible:Z

.field private mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIIILcom/android/server/wm/WindowSurfaceController;)V
    .locals 8
    .param p1, "s"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .param p7, "windowType"    # I
    .param p8, "ownerUid"    # I
    .param p9, "windowSurfaceController"    # Lcom/android/server/wm/WindowSurfaceController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct/range {p0 .. p8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIIII)V

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 54
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenForCrop:Z

    .line 75
    const/4 v1, 0x1

    if-eq p7, v1, :cond_1

    const/4 v1, 0x3

    if-eq p7, v1, :cond_1

    .line 77
    :cond_0
    return-void

    .line 76
    :cond_1
    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 75
    if-nez v1, :cond_0

    .line 79
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 80
    int-to-float v1, p3

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastWidth:F

    .line 81
    int-to-float v1, p4

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastHeight:F

    .line 82
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    .line 83
    new-instance v1, Landroid/view/SurfaceControl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Background for - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 85
    const/high16 v2, 0x20000

    or-int v7, p6, v2

    .line 84
    const/4 v6, -0x1

    move-object v2, p1

    .line 83
    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/SurfaceControlWithBackground;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/wm/SurfaceControlWithBackground;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 63
    invoke-direct {p0, p1}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    .line 54
    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    iput v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenForCrop:Z

    .line 64
    iget-object v0, p1, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 65
    iget-boolean v0, p1, Lcom/android/server/wm/SurfaceControlWithBackground;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mVisible:Z

    .line 66
    iget-object v0, p1, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 67
    return-void
.end method

.method private calculateBgCrop(Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const/high16 v10, 0x3f800000    # 1.0f

    .line 172
    iget-object v8, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v8, v8, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v8, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 173
    .local v3, "contentInsets":Landroid/graphics/Rect;
    iget v8, v3, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_0

    const/4 v4, 0x0

    .line 174
    .local v4, "d":F
    :goto_0
    cmpl-float v8, v4, v10

    if-lez v8, :cond_1

    .line 176
    iget-object v8, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 177
    return-void

    .line 173
    .end local v4    # "d":F
    :cond_0
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    div-float v4, v8, v9

    .restart local v4    # "d":F
    goto :goto_0

    .line 187
    :cond_1
    const v8, 0x3ccccccd    # 0.025f

    cmpg-float v8, v4, v8

    if-gez v8, :cond_2

    const/4 v4, 0x0

    .line 188
    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v9, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    .line 189
    const/4 v1, 0x0

    .local v1, "backgroundWidth":I
    const/4 v0, 0x0

    .line 192
    .local v0, "backgroundHeight":I
    iget-object v8, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v8, v8, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v8, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 193
    .local v7, "winFrame":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    mul-float/2addr v8, v9

    float-to-int v5, v8

    .line 194
    .local v5, "offsetX":I
    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 197
    .local v6, "offsetY":I
    iget-object v8, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v8, v8, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getNavBarPosition()I

    move-result v2

    .line 199
    .local v2, "bgPosition":I
    packed-switch v2, :pswitch_data_0

    .line 220
    :goto_1
    :pswitch_0
    iget-object v8, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    add-int v9, v5, v1

    .line 221
    add-int v10, v6, v0

    .line 220
    invoke-virtual {v8, v5, v6, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 222
    return-void

    .line 201
    :pswitch_1
    iget-object v8, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastWidth:F

    sub-float/2addr v8, v9

    sub-float v9, v10, v4

    mul-float/2addr v8, v9

    float-to-double v8, v8

    add-double/2addr v8, v12

    double-to-int v1, v8

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 203
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v1

    add-int/2addr v5, v8

    .line 204
    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    .line 205
    goto :goto_1

    .line 207
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastWidth:F

    sub-float/2addr v8, v9

    sub-float v9, v10, v4

    mul-float/2addr v8, v9

    float-to-double v8, v8

    add-double/2addr v8, v12

    double-to-int v1, v8

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 209
    iget v8, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v8

    .line 210
    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v8

    .line 211
    goto :goto_1

    .line 213
    :pswitch_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 214
    iget-object v8, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastHeight:F

    sub-float/2addr v8, v9

    sub-float v9, v10, v4

    mul-float/2addr v8, v9

    float-to-double v8, v8

    add-double/2addr v8, v12

    double-to-int v0, v8

    .line 216
    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v8

    .line 217
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v8

    .line 218
    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateBackgroundVisibility()V
    .locals 2

    .prologue
    .line 323
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 327
    .local v0, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenForCrop:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mVisible:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    goto :goto_0
.end method

.method private updateBgPosition()V
    .locals 6

    .prologue
    .line 122
    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    .line 123
    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 124
    .local v2, "winFrame":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    mul-float v0, v3, v4

    .line 125
    .local v0, "offsetX":F
    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    mul-float v1, v3, v4

    .line 126
    .local v1, "offsetY":F
    iget-object v3, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastX:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastY:F

    add-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 127
    return-void
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2
    .param p1, "handle"    # Landroid/os/IBinder;
    .param p2, "frame"    # J

    .prologue
    .line 304
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 310
    return-void
.end method

.method public deferTransactionUntil(Landroid/view/Surface;J)V
    .locals 2
    .param p1, "barrier"    # Landroid/view/Surface;
    .param p2, "frame"    # J

    .prologue
    .line 314
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 317
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    .line 320
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 280
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mVisible:Z

    .line 262
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBackgroundVisibility()V

    .line 263
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 290
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 96
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 164
    return-void
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "zorder"    # I

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 107
    return-void
.end method

.method public setLayerStack(I)V
    .locals 1
    .param p1, "layerStack"    # I

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 232
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dtdy"    # F
    .param p4, "dsdy"    # F

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 253
    iput p1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDx:F

    .line 254
    iput p4, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastDsDy:F

    .line 255
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBgPosition()V

    .line 256
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .param p1, "isOpaque"    # Z

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    .line 237
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBackgroundVisibility()V

    .line 238
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iput p1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastX:F

    .line 117
    iput p2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastY:F

    .line 118
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBgPosition()V

    .line 119
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "isSecure"    # Z

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    .line 243
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastWidth:F

    .line 137
    int-to-float v0, p2

    iput v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mLastHeight:F

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mWindowSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->getContainerRect(Landroid/graphics/Rect;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 140
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 297
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 300
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/SurfaceControlWithBackground;->calculateBgCrop(Landroid/graphics/Rect;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mTmpContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mHiddenForCrop:Z

    .line 152
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBackgroundVisibility()V

    .line 153
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceControlWithBackground;->mVisible:Z

    .line 269
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceControlWithBackground;->updateBackgroundVisibility()V

    .line 270
    return-void
.end method
