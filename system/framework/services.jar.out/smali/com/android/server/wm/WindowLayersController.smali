.class Lcom/android/server/wm/WindowLayersController;
.super Ljava/lang/Object;
.source "WindowLayersController.java"


# instance fields
.field private mAboveImeTarget:Z

.field private mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mAnyLayerChanged:Z

.field private final mAssignWindowLayersConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mAssistantWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCurBaseLayer:I

.field private mCurLayer:I

.field private mDockDivider:Lcom/android/server/wm/WindowState;

.field private mDockedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHighestApplicationLayer:I

.field private mHighestDockedAffectedLayer:I

.field private mHighestLayerInImeTargetBaseLayer:I

.field private mImeTarget:Lcom/android/server/wm/WindowState;

.field private mInputMethodWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mReplacingWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    .line 63
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    .line 64
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 66
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    .line 75
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    .line 77
    new-instance v0, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/-$Lambda$8dosZ88K2njKdKmPBAkNw12yKMw;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssignWindowLayersConsumer:Ljava/util/function/Consumer;

    .line 58
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 59
    return-void
.end method

.method private adjustSpecialWindows()V
    .locals 4

    .prologue
    .line 202
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    add-int/lit16 v0, v2, 0x3e8

    .line 207
    .local v0, "layer":I
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    if-lez v2, :cond_2

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 210
    .local v1, "window":Lcom/android/server/wm/WindowState;
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_0

    .line 213
    .end local v1    # "window":Lcom/android/server/wm/WindowState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    .line 215
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 217
    .restart local v1    # "window":Lcom/android/server/wm/WindowState;
    iget v2, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v3, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    if-le v2, v3, :cond_1

    .line 218
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_1

    .line 224
    .end local v1    # "window":Lcom/android/server/wm/WindowState;
    :cond_2
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    add-int/lit8 v2, v2, 0x5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 229
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 230
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_2

    .line 233
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 234
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_3

    .line 238
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_7

    .line 239
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_5

    .line 242
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    add-int/lit8 v0, v2, 0x5

    .line 245
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 246
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_4

    .line 251
    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 252
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_5

    .line 256
    :cond_7
    return-void
.end method

.method private assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "layer"    # I

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    .line 262
    add-int/lit8 p2, p2, 0x5

    .line 264
    :cond_0
    return p2
.end method

.method private assignAnimLayer(Lcom/android/server/wm/WindowState;I)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "layer"    # I

    .prologue
    .line 268
    iput p2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 269
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    move-result v2

    .line 270
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSpecialWindowAnimLayerAdjustment()I

    move-result v3

    .line 269
    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 271
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v1, :cond_1

    .line 272
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-le v1, v2, :cond_0

    .line 273
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    .line 277
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayer()I

    move-result v0

    .line 278
    .local v0, "highestLayer":I
    if-lez v0, :cond_1

    .line 279
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-eq v1, v0, :cond_1

    .line 281
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iput v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    .line 282
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 286
    .end local v0    # "highestLayer":I
    :cond_1
    return-void
.end method

.method private collectSpecialWindows(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 165
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f2

    if-ne v1, v2, :cond_0

    .line 166
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 167
    return-void

    .line 169
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 174
    return-void

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_4

    .line 177
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-ne v1, v2, :cond_6

    iget v1, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-lez v1, :cond_6

    .line 180
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_4

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTarget:Z

    .line 190
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v0

    .line 191
    .local v0, "stackId":I
    :goto_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 192
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_5
    :goto_2
    return-void

    .line 181
    .end local v0    # "stackId":I
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTarget:Z

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_7
    const/4 v0, -0x1

    .restart local v0    # "stackId":I
    goto :goto_1

    .line 193
    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 195
    :cond_9
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic lambda$-com_android_server_wm_WindowLayersController_5844(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 137
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const-string/jumbo v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Assign layer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "mBase="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    const-string/jumbo v3, " mLayer="

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 138
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_0

    .line 139
    const-string/jumbo v1, ""

    .line 137
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    const-string/jumbo v3, " =mAnimLayer="

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mAppLayer="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getAnimLayerAdjustment()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private logDebugLayers(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    sget-object v0, Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;->$INST$6:Lcom/android/server/wm/-$Lambda$hCYoJeHmvymNpgtwuNPQ6z-HGjQ;

    .line 141
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 142
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssistantWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 150
    iput-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 152
    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mCurBaseLayer:I

    .line 153
    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    .line 154
    iput-boolean v1, p0, Lcom/android/server/wm/WindowLayersController;->mAnyLayerChanged:Z

    .line 156
    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 157
    iput v1, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    :goto_0
    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    .line 160
    iput-boolean v1, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTarget:Z

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAboveImeTargetAppWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 162
    return-void

    :cond_0
    move v0, v1

    .line 158
    goto :goto_0
.end method


# virtual methods
.method final assignWindowLayers(Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v4, 0x0

    .line 117
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Assigning layers based"

    .line 118
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    .line 117
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->reset()V

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mAssignWindowLayersConsumer:Ljava/util/function/Consumer;

    invoke-virtual {p1, v0, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 123
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->adjustSpecialWindows()V

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowLayersController;->mAnyLayerChanged:Z

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onWindowLayersChangedLocked()V

    .line 131
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowLayersController;->logDebugLayers(Lcom/android/server/wm/DisplayContent;)V

    .line 132
    :cond_2
    return-void
.end method

.method synthetic lambda$-com_android_server_wm_WindowLayersController_3664(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "layerChanged":Z
    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 81
    .local v1, "oldLayer":I
    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget v3, p0, Lcom/android/server/wm/WindowLayersController;->mCurBaseLayer:I

    if-ne v2, v3, :cond_6

    .line 82
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    .line 86
    :goto_0
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    .line 91
    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ne v2, v1, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v2, v1, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x1

    .line 93
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowLayersController;->mAnyLayerChanged:Z

    .line 96
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_2

    .line 97
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 98
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget-object v3, p0, Lcom/android/server/wm/WindowLayersController;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ne v2, v3, :cond_3

    .line 101
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    .line 102
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestLayerInImeTargetBaseLayer:I

    .line 104
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    .line 106
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestDockedAffectedLayer:I

    .line 109
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowLayersController;->collectSpecialWindows(Lcom/android/server/wm/WindowState;)V

    .line 111
    if-eqz v0, :cond_5

    .line 112
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->scheduleAnimationIfDimming()V

    :cond_5
    return-void

    .line 84
    :cond_6
    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowLayersController;->mCurBaseLayer:I

    goto :goto_0
.end method
