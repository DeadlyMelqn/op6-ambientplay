.class public Landroid/support/v17/leanback/widget/PagingIndicator;
.super Landroid/view/View;
.source "PagingIndicator.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PagingIndicator$1;,
        Landroid/support/v17/leanback/widget/PagingIndicator$2;,
        Landroid/support/v17/leanback/widget/PagingIndicator$3;,
        Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
    }
.end annotation


# static fields
.field private static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final DOT_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_DIAMETER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/v17/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimator:Landroid/animation/AnimatorSet;

.field mArrow:Landroid/graphics/Bitmap;

.field final mArrowDiameter:I

.field private final mArrowGap:I

.field mArrowPaint:Landroid/graphics/Paint;

.field final mArrowRadius:I

.field final mArrowRect:Landroid/graphics/Rect;

.field final mArrowToBgRatio:F

.field final mBgPaint:Landroid/graphics/Paint;

.field private mCurrentPage:I

.field mDotCenterY:I

.field final mDotDiameter:I

.field mDotFgSelectColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final mDotGap:I

.field final mDotRadius:I

.field private mDotSelectedNextX:[I

.field private mDotSelectedPrevX:[I

.field private mDotSelectedX:[I

.field private mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

.field final mFgPaint:Landroid/graphics/Paint;

.field private final mHideAnimator:Landroid/animation/AnimatorSet;

.field mIsLtr:Z

.field private mPageCount:I

.field private mPreviousPage:I

.field private final mShadowRadius:I

.field private final mShowAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 58
    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "alpha"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroid/util/Property;

    .line 71
    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$2;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "diameter"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 70
    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroid/util/Property;

    .line 84
    new-instance v0, Landroid/support/v17/leanback/widget/PagingIndicator$3;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "translation_x"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 83
    sput-object v0, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroid/util/Property;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    .line 142
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    .local v1, "res":Landroid/content/res/Resources;
    sget-object v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator:[I

    .line 144
    const/4 v6, 0x0

    .line 143
    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 145
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_lbDotRadius:I

    .line 146
    sget v6, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_dot_radius:I

    .line 145
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    .line 147
    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotDiameter:I

    .line 149
    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_arrowRadius:I

    sget v6, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_radius:I

    .line 148
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    .line 150
    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    .line 151
    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_dotToDotGap:I

    .line 152
    sget v6, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_dot_gap:I

    .line 151
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    .line 154
    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_dotToArrowGap:I

    sget v6, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_gap:I

    .line 153
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    .line 156
    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_dotBgColor:I

    .line 157
    sget v6, Landroid/support/v17/leanback/R$color;->lb_page_indicator_dot:I

    .line 156
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getColorFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v0

    .line 158
    .local v0, "dotBgColor":I
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    .line 159
    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_arrowBgColor:I

    .line 162
    sget v6, Landroid/support/v17/leanback/R$color;->lb_page_indicator_arrow_background:I

    .line 160
    invoke-direct {p0, v4, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->getColorFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    .line 163
    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_0

    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_arrowColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    sget v5, Landroid/support/v17/leanback/R$styleable;->PagingIndicator_arrowColor:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/PagingIndicator;->setArrowColor(I)V

    .line 166
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    .line 169
    sget v5, Landroid/support/v17/leanback/R$color;->lb_page_indicator_arrow_shadow:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 170
    .local v2, "shadowColor":I
    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_shadow_radius:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShadowRadius:I

    .line 171
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    .line 172
    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_page_indicator_arrow_shadow_offset:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 173
    .local v3, "shadowOffset":I
    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShadowRadius:I

    int-to-float v6, v6

    int-to-float v7, v3

    int-to-float v8, v3

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 174
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    .line 175
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRect:Landroid/graphics/Rect;

    .line 176
    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    .line 178
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 179
    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0, v7, v8}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotAlphaAnimator(FF)Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 180
    iget v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct {p0, v7, v8}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotDiameterAnimator(FF)Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 181
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 179
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 182
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    .line 183
    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotAlphaAnimator(FF)Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 184
    iget v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct {p0, v7, v8}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotDiameterAnimator(FF)Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 185
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 183
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 186
    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 188
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/support/v17/leanback/widget/PagingIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    .line 189
    return-void

    .line 168
    .end local v2    # "shadowColor":I
    .end local v3    # "shadowOffset":I
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private adjustDotPosition()V
    .locals 6

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    if-ge v0, v1, :cond_1

    .line 429
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->deselect()V

    .line 430
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v4, v1, v0

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPreviousPage:I

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_1
    iput v1, v4, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 431
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    aget v4, v4, v0

    int-to-float v4, v4

    iput v4, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 430
    goto :goto_1

    .line 433
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->select()V

    .line 434
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v1, v1, v4

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPreviousPage:I

    iget v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    if-ge v4, v5, :cond_2

    :goto_2
    iput v2, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 435
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget v2, v2, v4

    int-to-float v2, v2

    iput v2, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 436
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mCurrentPage:I

    add-int/lit8 v0, v1, 0x1

    :goto_3
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_3

    .line 437
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->deselect()V

    .line 438
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iput v3, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 439
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, v1, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move v2, v3

    .line 434
    goto :goto_2

    .line 441
    :cond_3
    return-void
.end method

.method private calculateDotPositions()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 305
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingLeft()I

    move-result v1

    .line 306
    .local v1, "left":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingTop()I

    move-result v7

    .line 307
    .local v7, "top":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingRight()I

    move-result v9

    sub-int v4, v8, v9

    .line 308
    .local v4, "right":I
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v3

    .line 309
    .local v3, "requiredWidth":I
    add-int v8, v1, v4

    div-int/lit8 v2, v8, 0x2

    .line 310
    .local v2, "mid":I
    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    .line 311
    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    .line 312
    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    .line 313
    iget-boolean v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v8, :cond_0

    .line 314
    div-int/lit8 v8, v3, 0x2

    sub-int v5, v2, v8

    .line 316
    .local v5, "startLeft":I
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v9, v10

    aput v9, v8, v11

    .line 317
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v9, v5

    aput v9, v8, v11

    .line 318
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aput v9, v8, v11

    .line 319
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v8, :cond_1

    .line 320
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v9, v10

    aput v9, v8, v0

    .line 321
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v9, v10

    aput v9, v8, v0

    .line 322
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v9, v10

    aput v9, v8, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "i":I
    .end local v5    # "startLeft":I
    :cond_0
    div-int/lit8 v8, v3, 0x2

    add-int v6, v2, v8

    .line 327
    .local v6, "startRight":I
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v9, v6, v9

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v9, v10

    aput v9, v8, v11

    .line 328
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v9, v6, v9

    aput v9, v8, v11

    .line 329
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v9, v6, v9

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    aput v9, v8, v11

    .line 330
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v8, :cond_1

    .line 331
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v9, v10

    aput v9, v8, v0

    .line 332
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    sub-int/2addr v9, v10

    aput v9, v8, v0

    .line 333
    iget-object v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    iget-object v9, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v9, v10

    aput v9, v8, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    .end local v6    # "startRight":I
    :cond_1
    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    .line 337
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->adjustDotPosition()V

    .line 338
    return-void
.end method

.method private createDotAlphaAnimator(FF)Landroid/animation/Animator;
    .locals 4
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 247
    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 248
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 249
    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    return-object v0
.end method

.method private createDotDiameterAnimator(FF)Landroid/animation/Animator;
    .locals 4
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 254
    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 255
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1a1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 256
    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    return-object v0
.end method

.method private createDotTranslationXAnimator()Landroid/animation/Animator;
    .locals 5

    .prologue
    .line 262
    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 263
    iget v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    neg-int v3, v3

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 262
    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 264
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1a1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    sget-object v1, Landroid/support/v17/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    return-object v0
.end method

.method private getColorFromTypedArray(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attr"    # I
    .param p3, "defaultId"    # I

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method private getDesiredHeight()I
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mShadowRadius:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "attr"    # I
    .param p3, "defaultId"    # I

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 192
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method private getRequiredWidth()I
    .locals 3

    .prologue
    .line 404
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    add-int/lit8 v1, v1, -0x3

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private loadArrow()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$drawable;->lb_ic_nav_arrow:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, "arrow":Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v2, :cond_0

    .line 203
    return-object v0

    .line 205
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method getDotSelectedLeftX()[I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    return-object v0
.end method

.method getDotSelectedRightX()[I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    return-object v0
.end method

.method getDotSelectedX()[I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    return-object v0
.end method

.method getPageCount()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 342
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_0

    .line 414
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->draw(Landroid/graphics/Canvas;)V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDesiredHeight()I

    move-result v0

    .line 364
    .local v0, "desiredHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 373
    move v2, v0

    .line 376
    .local v2, "height":I
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->getDesiredWidth()I

    move-result v1

    .line 378
    .local v1, "desiredWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    .line 387
    move v3, v1

    .line 390
    .local v3, "width":I
    :goto_1
    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/PagingIndicator;->setMeasuredDimension(II)V

    .line 391
    return-void

    .line 366
    .end local v1    # "desiredWidth":I
    .end local v2    # "height":I
    .end local v3    # "width":I
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .restart local v2    # "height":I
    goto :goto_0

    .line 369
    .end local v2    # "height":I
    :sswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2    # "height":I
    goto :goto_0

    .line 380
    .restart local v1    # "desiredWidth":I
    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .restart local v3    # "width":I
    goto :goto_1

    .line 383
    .end local v3    # "width":I
    :sswitch_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "width":I
    goto :goto_1

    .line 364
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 378
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 446
    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 447
    .local v1, "isLtr":Z
    :goto_0
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eq v3, v1, :cond_2

    .line 448
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    .line 449
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    .line 450
    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    if-eqz v3, :cond_1

    .line 451
    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDots:[Landroid/support/v17/leanback/widget/PagingIndicator$Dot;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 452
    .local v0, "dot":Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->onRtlPropertiesChanged()V

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 446
    .end local v0    # "dot":Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
    .end local v1    # "isLtr":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isLtr":Z
    goto :goto_0

    .line 455
    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->calculateDotPositions()V

    .line 456
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    .line 458
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 395
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PagingIndicator;->setMeasuredDimension(II)V

    .line 396
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PagingIndicator;->calculateDotPositions()V

    .line 397
    return-void
.end method

.method public setArrowColor(I)V
    .locals 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 223
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 222
    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 224
    return-void
.end method
