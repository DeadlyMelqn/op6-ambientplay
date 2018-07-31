.class public Lcom/android/systemui/HardwareUiLayout;
.super Landroid/widget/FrameLayout;
.source "HardwareUiLayout.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mBackground:Lcom/android/systemui/HardwareBgDrawable;

.field private mChild:Landroid/view/View;

.field private mCollapse:Z

.field private mDivision:Landroid/view/View;

.field private mEdgeBleed:Z

.field private mEndPoint:I

.field private mHasOutsideTouch:Z

.field private final mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mOldHeight:I

.field private mRotatedBackground:Z

.field private mRotation:I

.field private mRoundedDivider:Z

.field private final mTmp2:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    .line 421
    new-instance v0, Lcom/android/systemui/-$Lambda$LNq66TT8jS0-kRjuflAuQa45E9s$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$Lambda$LNq66TT8jS0-kRjuflAuQa45E9s$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 65
    return-void
.end method

.method private animateChild(II)V
    .locals 0
    .param p1, "oldHeight"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 326
    return-void
.end method

.method public static get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 414
    instance-of v0, p0, Lcom/android/systemui/HardwareUiLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/HardwareUiLayout;

    .end local p0    # "v":Landroid/view/View;
    return-object p0

    .line 415
    .restart local p0    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/HardwareUiLayout;->get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;

    move-result-object v0

    return-object v0

    .line 418
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEdgePadding()I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_HardwareUiLayout_7360(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "linearLayout"    # Landroid/widget/LinearLayout;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private rotate(II)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 159
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 160
    invoke-direct {p0, v2, p2}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 161
    return-void

    .line 163
    :cond_0
    if-eq p1, v3, :cond_1

    if-ne p2, v4, :cond_4

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight()V

    .line 168
    :goto_0
    if-eqz p2, :cond_5

    .line 169
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 170
    iput-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    .line 171
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, v3}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 173
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    if-ne p2, v4, :cond_2

    .line 174
    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->swapOrder(Landroid/widget/LinearLayout;)V

    .line 176
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 191
    .end local v0    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_3
    :goto_1
    return-void

    .line 166
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft()V

    goto :goto_0

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 181
    iput-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    .line 182
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 184
    .restart local v0    # "linearLayout":Landroid/widget/LinearLayout;
    if-ne p1, v4, :cond_6

    .line 185
    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->swapOrder(Landroid/widget/LinearLayout;)V

    .line 187
    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    goto :goto_1
.end method

.method private rotateGravityLeft(I)I
    .locals 5
    .param p1, "gravity"    # I

    .prologue
    .line 265
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 266
    const p1, 0x800033

    .line 268
    :cond_0
    const/4 v2, 0x0

    .line 269
    .local v2, "retGravity":I
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getLayoutDirection()I

    move-result v1

    .line 270
    .local v1, "layoutDirection":I
    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 271
    .local v0, "absoluteGravity":I
    and-int/lit8 v3, p1, 0x70

    .line 273
    .local v3, "verticalGravity":I
    and-int/lit8 v4, v0, 0x7

    sparse-switch v4, :sswitch_data_0

    .line 282
    const/16 v2, 0x50

    .line 286
    :goto_0
    sparse-switch v3, :sswitch_data_1

    .line 295
    or-int/lit8 v2, v2, 0x3

    .line 298
    :goto_1
    return v2

    .line 275
    :sswitch_0
    const/16 v2, 0x10

    .line 276
    goto :goto_0

    .line 278
    :sswitch_1
    const/16 v2, 0x30

    .line 279
    goto :goto_0

    .line 288
    :sswitch_2
    or-int/lit8 v2, v2, 0x1

    .line 289
    goto :goto_1

    .line 291
    :sswitch_3
    or-int/lit8 v2, v2, 0x5

    .line 292
    goto :goto_1

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 286
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method private rotateGravityRight(I)I
    .locals 5
    .param p1, "gravity"    # I

    .prologue
    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "retGravity":I
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getLayoutDirection()I

    move-result v1

    .line 223
    .local v1, "layoutDirection":I
    invoke-static {p1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 224
    .local v0, "absoluteGravity":I
    and-int/lit8 v3, p1, 0x70

    .line 226
    .local v3, "verticalGravity":I
    and-int/lit8 v4, v0, 0x7

    sparse-switch v4, :sswitch_data_0

    .line 235
    const/16 v2, 0x30

    .line 239
    :goto_0
    sparse-switch v3, :sswitch_data_1

    .line 248
    or-int/lit8 v2, v2, 0x5

    .line 251
    :goto_1
    return v2

    .line 228
    :sswitch_0
    const/16 v2, 0x10

    .line 229
    goto :goto_0

    .line 231
    :sswitch_1
    const/16 v2, 0x50

    .line 232
    goto :goto_0

    .line 241
    :sswitch_2
    or-int/lit8 v2, v2, 0x1

    .line 242
    goto :goto_1

    .line 244
    :sswitch_3
    or-int/lit8 v2, v2, 0x3

    .line 245
    goto :goto_1

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 239
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method private rotateLeft()V
    .locals 2

    .prologue
    .line 255
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    .line 257
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    .local v0, "p":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityLeft(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 261
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void
.end method

.method private rotateLeft(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 302
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 305
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 306
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 305
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    return-void
.end method

.method private rotateRight()V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    .line 205
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 207
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 208
    .local v0, "p":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityRight(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 209
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    return-void
.end method

.method private rotateRight(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 311
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 314
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 315
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 314
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    return-void
.end method

.method private setCutPoint(I)V
    .locals 6
    .param p1, "point"    # I

    .prologue
    const/4 v5, 0x0

    .line 375
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/HardwareBgDrawable;->getCutPoint()I

    move-result v0

    .line 376
    .local v0, "curPoint":I
    if-ne v0, p1, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, p1}, Lcom/android/systemui/HardwareBgDrawable;->setCutPoint(I)V

    .line 379
    return-void

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    .line 382
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mEndPoint:I

    if-ne v1, p1, :cond_3

    .line 383
    return-void

    .line 385
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 387
    :cond_4
    iput p1, p0, Lcom/android/systemui/HardwareUiLayout;->mEndPoint:I

    .line 388
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    const-string/jumbo v2, "cutPoint"

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v5

    const/4 v4, 0x1

    aput p1, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    .line 389
    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mCollapse:Z

    if-eqz v1, :cond_5

    .line 390
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 391
    iput-boolean v5, p0, Lcom/android/systemui/HardwareUiLayout;->mCollapse:Z

    .line 393
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 394
    return-void
.end method

.method private swapDimens(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 214
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 215
    .local v0, "h":I
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 217
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    return-void
.end method

.method private swapOrder(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "linearLayout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v3, 0x0

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 196
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 197
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    new-instance v2, Lcom/android/systemui/-$Lambda$9BMLTOSZV5pQ9eCsGCsjeue721Q;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Lcom/android/systemui/-$Lambda$9BMLTOSZV5pQ9eCsGCsjeue721Q;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 200
    return-void
.end method

.method private updateEdgeMargin(I)V
    .locals 3
    .param p1, "edge"    # I

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 103
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 104
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void

    .line 105
    .restart local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 106
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 108
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 5

    .prologue
    .line 359
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-nez v3, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 361
    iget-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 362
    .local v0, "index":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 363
    iget-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 365
    .local v1, "trans":F
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    aget v3, v3, v0

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v2, v3

    .line 366
    .local v2, "viewTop":I
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 367
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    .line 368
    invoke-direct {p0, v2}, Lcom/android/systemui/HardwareUiLayout;->setCutPoint(I)V

    .line 372
    .end local v0    # "index":I
    .end local v1    # "trans":F
    .end local v2    # "viewTop":I
    :goto_2
    return-void

    .line 361
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_0

    .line 364
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .restart local v1    # "trans":F
    goto :goto_1

    .line 370
    .end local v0    # "index":I
    .end local v1    # "trans":F
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/HardwareUiLayout;->setCutPoint(I)V

    goto :goto_2
.end method

.method private updateRotation()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 150
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    if-eq v0, v1, :cond_0

    .line 151
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 152
    iput v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotation:I

    .line 154
    :cond_0
    return-void
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    const-string/jumbo v3, "sysui_hwui_edge_bleed"

    .line 88
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    const-string/jumbo v3, "sysui_hwui_rounded_divider"

    .line 90
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/systemui/HardwareUiLayout;->updateEdgeMargin(I)V

    .line 93
    new-instance v0, Lcom/android/systemui/HardwareBgDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    iget-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/HardwareBgDrawable;-><init>(ZZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->requestLayout()V

    .line 98
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 88
    goto :goto_0

    :cond_2
    move v1, v2

    .line 90
    goto :goto_1

    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getEdgePadding()I

    move-result v2

    goto :goto_2
.end method


# virtual methods
.method public getOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    .prologue
    .line 398
    invoke-super {p0}, Landroid/widget/FrameLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_HardwareUiLayout_11521()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_HardwareUiLayout_12643(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_HardwareUiLayout_14855(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    const/4 v5, 0x0

    .line 422
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mHasOutsideTouch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-nez v0, :cond_1

    .line 423
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 425
    return-void

    .line 428
    :cond_1
    const/4 v0, 0x1

    .line 427
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 429
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 429
    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_HardwareUiLayout_4828(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_HardwareUiLayout_5216()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 71
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_hwui_edge_bleed"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysui_hwui_rounded_divider"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 73
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateRotation()V

    .line 146
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 79
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 80
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 321
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 322
    new-instance v0, Lcom/android/systemui/-$Lambda$CBJXSLeEZ81IqvchDh4LhUGU2j4;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/-$Lambda$CBJXSLeEZ81IqvchDh4LhUGU2j4;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    invoke-virtual {p0, v2}, Lcom/android/systemui/HardwareUiLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    .line 124
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->updateEdgeMargin(I)V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    .line 127
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    .line 128
    new-instance v3, Lcom/android/systemui/-$Lambda$LNq66TT8jS0-kRjuflAuQa45E9s;

    invoke-direct {v3, v2, p0}, Lcom/android/systemui/-$Lambda$LNq66TT8jS0-kRjuflAuQa45E9s;-><init>(BLjava/lang/Object;)V

    .line 127
    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateRotation()V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 136
    .local v0, "newHeight":I
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    if-eq v0, v1, :cond_1

    .line 137
    iget v1, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/HardwareUiLayout;->animateChild(II)V

    .line 139
    :cond_1
    new-instance v1, Lcom/android/systemui/-$Lambda$CBJXSLeEZ81IqvchDh4LhUGU2j4;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/-$Lambda$CBJXSLeEZ81IqvchDh4LhUGU2j4;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void

    .line 125
    .end local v0    # "newHeight":I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getEdgePadding()I

    move-result v1

    goto :goto_0

    .line 132
    :cond_3
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 85
    return-void
.end method

.method public setDivisionView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    .line 350
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    .line 352
    new-instance v1, Lcom/android/systemui/-$Lambda$LNq66TT8jS0-kRjuflAuQa45E9s;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/-$Lambda$LNq66TT8jS0-kRjuflAuQa45E9s;-><init>(BLjava/lang/Object;)V

    .line 351
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    .line 356
    return-void
.end method

.method public setOutsideTouchListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v0, 0x1

    .line 402
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mHasOutsideTouch:Z

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->requestLayout()V

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->setClickable(Z)V

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->setFocusable(Z)V

    .line 407
    return-void
.end method
