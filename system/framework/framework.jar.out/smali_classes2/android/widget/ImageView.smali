.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ImageDrawableCallback;,
        Landroid/widget/ImageView$ScaleType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageView"

.field private static sCompatAdjustViewBounds:Z

.field private static sCompatDone:Z

.field private static sCompatDrawableVisibilityDispatch:Z

.field private static sCompatUseCorrectStreamDensity:Z

.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mAdjustViewBounds:Z

.field private mAlpha:I

.field private mBaseline:I

.field private mBaselineAlignBottom:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableTintList:Landroid/content/res/ColorStateList;

.field private mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mDrawableWidth:I

.field private mHasColorFilter:Z

.field private mHasDrawableTint:Z

.field private mHasDrawableTintMode:Z

.field private mHaveFrame:Z

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private final mTempDst:Landroid/graphics/RectF;

.field private final mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private final mViewAlphaScale:I

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static synthetic -set0(Landroid/widget/ImageView;I)I
    .locals 0
    .param p0, "-this"    # Landroid/widget/ImageView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/ImageView;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "-this"    # Landroid/widget/ImageView;
    .param p1, "-value"    # Landroid/net/Uri;

    .prologue
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 151
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v3

    .line 152
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v4

    .line 153
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v5

    .line 154
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v6

    .line 155
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v7

    .line 156
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 157
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 158
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 150
    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 1057
    new-array v0, v7, [Landroid/graphics/Matrix$ScaleToFit;

    .line 1058
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    .line 1059
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    .line 1060
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    .line 1061
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v6

    .line 1057
    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    iput v1, p0, Landroid/widget/ImageView;->mResource:I

    .line 102
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 103
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 104
    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 105
    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 108
    iput-object v2, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 109
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 111
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 112
    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 113
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 115
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    iput-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 118
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 119
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 120
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 122
    iput-object v2, p0, Landroid/widget/ImageView;->mState:[I

    .line 123
    iput-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 124
    iput v1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 127
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 131
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 136
    iput-boolean v1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 163
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v9, 0x7fffffff

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    .line 102
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 103
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 104
    iput v9, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 105
    iput v9, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 108
    iput-object v5, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 109
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 111
    const/16 v4, 0xff

    iput v4, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 112
    const/16 v4, 0x100

    iput v4, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    .line 113
    iput-boolean v6, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 115
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    iput-object v5, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 118
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 119
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 120
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 122
    iput-object v5, p0, Landroid/widget/ImageView;->mState:[I

    .line 123
    iput-boolean v6, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 124
    iput v6, p0, Landroid/widget/ImageView;->mLevel:I

    .line 127
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 131
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 135
    iput v7, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 136
    iput-boolean v6, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 178
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    .line 181
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImportantForAutofill()I

    move-result v4

    if-nez v4, :cond_0

    .line 182
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImportantForAutofill(I)V

    .line 186
    :cond_0
    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    .line 185
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 188
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 189
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_1
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 194
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 196
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 197
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 198
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 200
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 201
    .local v3, "index":I
    if-ltz v3, :cond_2

    .line 202
    sget-object v4, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    :cond_2
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 206
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 207
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 211
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 212
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 215
    :cond_3
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 217
    const/16 v4, 0x9

    .line 216
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 217
    iget-object v5, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 216
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 218
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 221
    :cond_4
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 223
    const/16 v4, 0xa

    const/16 v5, 0xff

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 224
    .local v1, "alpha":I
    const/16 v4, 0xff

    if-eq v1, v4, :cond_5

    .line 225
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 229
    :cond_5
    const/4 v4, 0x7

    .line 228
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    return-void
.end method

.method private applyColorMod()V
    .locals 2

    .prologue
    .line 1563
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    if-eqz v0, :cond_1

    .line 1564
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1565
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1568
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 1569
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v1, v1, 0x100

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1571
    :cond_1
    return-void
.end method

.method private applyImageTint()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    if-eqz v0, :cond_3

    .line 679
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 681
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 685
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 691
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 692
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 695
    :cond_3
    return-void
.end method

.method private configureBounds()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    .line 1223
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 1224
    :cond_0
    return-void

    .line 1227
    :cond_1
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1228
    .local v1, "dwidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1230
    .local v0, "dheight":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int v7, v8, v9

    .line 1231
    .local v7, "vwidth":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int v6, v8, v9

    .line 1233
    .local v6, "vheight":I
    if-ltz v1, :cond_2

    if-ne v7, v1, :cond_6

    .line 1234
    :cond_2
    if-ltz v0, :cond_3

    if-ne v6, v0, :cond_5

    :cond_3
    const/4 v4, 0x1

    .line 1236
    .local v4, "fits":Z
    :goto_0
    if-lez v1, :cond_4

    if-gtz v0, :cond_7

    .line 1240
    :cond_4
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10, v10, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1241
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1305
    :goto_1
    return-void

    .line 1234
    .end local v4    # "fits":Z
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "fits":Z
    goto :goto_0

    .line 1233
    .end local v4    # "fits":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "fits":Z
    goto :goto_0

    .line 1236
    :cond_7
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v9, :cond_4

    .line 1245
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1247
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_9

    .line 1249
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1250
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 1252
    :cond_8
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 1254
    :cond_9
    if-eqz v4, :cond_a

    .line 1256
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 1257
    :cond_a
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_b

    .line 1259
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1260
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v9, v7, v1

    int-to-float v9, v9

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    .line 1261
    sub-int v10, v6, v0

    int-to-float v10, v10

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    .line 1260
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1

    .line 1262
    :cond_b
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_d

    .line 1263
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1266
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 1268
    .local v3, "dy":F
    mul-int v8, v1, v6

    mul-int v9, v7, v0

    if-le v8, v9, :cond_c

    .line 1269
    int-to-float v8, v6

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 1270
    .local v5, "scale":F
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v2, v8, v11

    .line 1276
    :goto_2
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1277
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 1272
    .end local v5    # "scale":F
    :cond_c
    int-to-float v8, v7

    int-to-float v9, v1

    div-float v5, v8, v9

    .line 1273
    .restart local v5    # "scale":F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v3, v8, v11

    goto :goto_2

    .line 1278
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "scale":F
    :cond_d
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_f

    .line 1279
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1284
    if-gt v1, v7, :cond_e

    if-gt v0, v6, :cond_e

    .line 1285
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1291
    .restart local v5    # "scale":F
    :goto_3
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v2, v8

    .line 1292
    .restart local v2    # "dx":F
    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v3, v8

    .line 1294
    .restart local v3    # "dy":F
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1295
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 1287
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "scale":F
    :cond_e
    int-to-float v8, v7

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 1288
    int-to-float v9, v6

    int-to-float v10, v0

    div-float/2addr v9, v10

    .line 1287
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .restart local v5    # "scale":F
    goto :goto_3

    .line 1298
    .end local v5    # "scale":F
    :cond_f
    iget-object v8, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v0

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1299
    iget-object v8, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v9, v7

    int-to-float v10, v6

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1301
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1302
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v10, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iget-object v11, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v11}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1
.end method

.method private getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 945
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 946
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "android.resource"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 950
    :try_start_0
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v2

    .line 951
    .local v2, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v5, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v8, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 952
    .end local v2    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :catch_0
    move-exception v1

    .line 953
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to open content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    :cond_0
    :goto_0
    return-object v6

    .line 955
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v5, "content"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 956
    const-string/jumbo v5, "file"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 955
    if-eqz v5, :cond_6

    .line 957
    :cond_2
    const/4 v4, 0x0

    .line 959
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_1
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 960
    .local v4, "stream":Ljava/io/InputStream;
    sget-boolean v5, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    if-eqz v5, :cond_4

    .line 961
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 960
    invoke-static {v5, v7, v4, v8}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 965
    if-eqz v4, :cond_3

    .line 967
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 960
    :cond_3
    :goto_2
    return-object v5

    :cond_4
    move-object v5, v6

    .line 961
    goto :goto_1

    .line 968
    :catch_1
    move-exception v0

    .line 969
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to close content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 962
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 963
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to open content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 965
    if-eqz v4, :cond_0

    .line 967
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 968
    :catch_3
    move-exception v0

    .line 969
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to close content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 964
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 965
    if-eqz v4, :cond_5

    .line 967
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 964
    :cond_5
    :goto_3
    throw v5

    .line 968
    :catch_4
    move-exception v0

    .line 969
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to close content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 974
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5
.end method

.method private initImageView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 237
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 238
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 240
    sget-boolean v1, Landroid/widget/ImageView;->sCompatDone:Z

    if-nez v1, :cond_1

    .line 241
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 242
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-gt v0, v1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    .line 243
    const/16 v1, 0x17

    if-le v0, v1, :cond_3

    move v1, v2

    :goto_1
    sput-boolean v1, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    .line 244
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    move v3, v2

    :cond_0
    sput-boolean v3, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    .line 245
    sput-boolean v2, Landroid/widget/ImageView;->sCompatDone:Z

    .line 247
    .end local v0    # "targetSdkVersion":I
    :cond_1
    return-void

    .restart local v0    # "targetSdkVersion":I
    :cond_2
    move v1, v3

    .line 242
    goto :goto_0

    :cond_3
    move v1, v3

    .line 243
    goto :goto_1
.end method

.method private isFilledByImage()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1582
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 1583
    return v5

    .line 1586
    :cond_0
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1587
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1588
    .local v3, "matrix":Landroid/graphics/Matrix;
    if-nez v3, :cond_3

    .line 1589
    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-gtz v6, :cond_2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-gtz v6, :cond_2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 1590
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 1589
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 1590
    goto :goto_0

    :cond_2
    move v4, v5

    .line 1589
    goto :goto_0

    .line 1591
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1592
    iget-object v2, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    .line 1593
    .local v2, "boundsSrc":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    .line 1594
    .local v1, "boundsDst":Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1595
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1596
    iget v6, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    iget v6, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    .line 1597
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    .line 1596
    :goto_1
    return v4

    :cond_4
    move v4, v5

    .line 1597
    goto :goto_1

    :cond_5
    move v4, v5

    .line 1596
    goto :goto_1

    .line 1600
    .end local v1    # "boundsDst":Landroid/graphics/RectF;
    .end local v2    # "boundsSrc":Landroid/graphics/RectF;
    :cond_6
    return v5
.end method

.method private resizeFromDrawable()V
    .locals 4

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1035
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 1036
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1037
    .local v2, "w":I
    if-gez v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1038
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1039
    .local v1, "h":I
    if-gez v1, :cond_1

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1040
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v3, :cond_3

    .line 1041
    :cond_2
    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1042
    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1043
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1046
    .end local v1    # "h":I
    .end local v2    # "w":I
    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .param p1, "desiredSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1190
    move v0, p1

    .line 1191
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1192
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1193
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 1211
    :goto_0
    return v0

    .line 1198
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1204
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1208
    :sswitch_2
    move v0, v2

    .line 1209
    goto :goto_0

    .line 1193
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveUri()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 911
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 912
    return-void

    .line 915
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_1

    .line 916
    return-void

    .line 919
    :cond_1
    const/4 v0, 0x0

    .line 921
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    if-eqz v2, :cond_3

    .line 923
    :try_start_0
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 941
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 942
    return-void

    .line 924
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 925
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    goto :goto_0

    .line 929
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 930
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 932
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 933
    const-string/jumbo v2, "ImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iput-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 938
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-void
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 2
    .param p0, "st"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 1066
    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 992
    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 993
    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 996
    :cond_0
    const/4 v0, 0x0

    .line 998
    .local v0, "sameDrawable":Z
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 999
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, p1, :cond_5

    const/4 v0, 0x1

    .line 1000
    :goto_0
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1001
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1002
    sget-boolean v2, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-nez v2, :cond_1

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1007
    :cond_1
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1009
    if-eqz p1, :cond_9

    .line 1010
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1011
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1012
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1013
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1015
    :cond_2
    if-eqz v0, :cond_3

    sget-boolean v2, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v2, :cond_4

    .line 1016
    :cond_3
    sget-boolean v2, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v2, :cond_7

    .line 1017
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, 0x1

    .line 1019
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1021
    :cond_4
    iget v2, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1022
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1023
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1024
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 1025
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1027
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 1031
    :goto_2
    return-void

    .line 999
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 1017
    :cond_6
    const/4 v1, 0x0

    .local v1, "visible":Z
    goto :goto_1

    .line 1018
    .end local v1    # "visible":Z
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    .local v1, "visible":Z
    goto :goto_1

    .end local v1    # "visible":Z
    :cond_8
    const/4 v1, 0x0

    .local v1, "visible":Z
    goto :goto_1

    .line 1029
    .end local v1    # "visible":Z
    :cond_9
    iput v5, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    iput v5, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    goto :goto_2
.end method


# virtual methods
.method public animateTransform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 1329
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1330
    return-void

    .line 1332
    :cond_0
    if-nez p1, :cond_1

    .line 1333
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1341
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1342
    return-void

    .line 1335
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1336
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 1337
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 1339
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public final clearColorFilter()V
    .locals 1

    .prologue
    .line 1471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1472
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1320
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1322
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1325
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1309
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1311
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1312
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1313
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    .line 1312
    if-eqz v1, :cond_0

    .line 1314
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1316
    :cond_0
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1649
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1650
    const-string/jumbo v0, "layout:baseline"

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBaseline()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1651
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1643
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdjustViewBounds()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    return v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 1390
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 1393
    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    return v0
.end method

.method public getBaselineAlignBottom()Z
    .locals 1

    .prologue
    .line 1436
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getCropToPadding()Z
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-ne v0, v1, :cond_0

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageAlpha()I
    .locals 1

    .prologue
    .line 1524
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 853
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0

    .line 855
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 262
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_2

    .line 263
    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 266
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 267
    .local v0, "h":I
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1

    .line 268
    :cond_0
    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 269
    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 271
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 281
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foreground"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1657
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 1658
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 1659
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v0

    .line 1657
    :cond_0
    const/4 v0, 0x1

    .local v0, "lackFocusState":Z
    goto :goto_0

    .line 1659
    .end local v0    # "lackFocusState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 1575
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-nez v0, :cond_1

    .line 1576
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1577
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v0, v0, 0x100

    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 1578
    invoke-direct {p0}, Landroid/widget/ImageView;->isFilledByImage()Z

    move-result v0

    .line 1575
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 257
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 258
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1625
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1627
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_0

    .line 1628
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1630
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1628
    goto :goto_0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 981
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_0

    .line 982
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    .line 983
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v0, :cond_1

    .line 984
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    return-object v0

    .line 987
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mState:[I

    .line 986
    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1634
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1636
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1639
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1346
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1348
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 1349
    return-void

    .line 1352
    :cond_0
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-nez v3, :cond_2

    .line 1353
    :cond_1
    return-void

    .line 1356
    :cond_2
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    if-nez v3, :cond_3

    .line 1357
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1378
    :goto_0
    return-void

    .line 1359
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1360
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1362
    iget-boolean v3, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v3, :cond_4

    .line 1363
    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    .line 1364
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    .line 1365
    .local v2, "scrollY":I
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    add-int/2addr v4, v2

    .line 1366
    iget v5, p0, Landroid/widget/ImageView;->mRight:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/ImageView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v5, v6

    .line 1367
    iget v6, p0, Landroid/widget/ImageView;->mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/ImageView;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    .line 1365
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1370
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_4
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1372
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_5

    .line 1373
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1375
    :cond_5
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1376
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1071
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 1076
    const/4 v5, 0x0

    .line 1079
    .local v5, "desiredAspect":F
    const/16 v17, 0x0

    .line 1082
    .local v17, "resizeWidth":Z
    const/16 v16, 0x0

    .line 1084
    .local v16, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 1085
    .local v20, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1087
    .local v9, "heightSpecMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 1089
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 1090
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1091
    const/4 v7, 0x0

    .local v7, "h":I
    const/16 v18, 0x0

    .line 1108
    .local v18, "w":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    .line 1109
    .local v13, "pleft":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ImageView;->mPaddingRight:I

    .line 1110
    .local v14, "pright":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ImageView;->mPaddingTop:I

    .line 1111
    .local v15, "ptop":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    .line 1116
    .local v12, "pbottom":I
    if-nez v17, :cond_1

    if-eqz v16, :cond_b

    .line 1123
    :cond_1
    add-int v21, v18, v13

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v19

    .line 1126
    .local v19, "widthSize":I
    add-int v21, v7, v15

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 1128
    .local v8, "heightSize":I
    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_5

    .line 1130
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    .line 1131
    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1130
    div-float v4, v21, v22

    .line 1133
    .local v4, "actualAspect":F
    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v21, v22, v24

    if-lez v21, :cond_5

    .line 1135
    const/4 v6, 0x0

    .line 1138
    .local v6, "done":Z
    if-eqz v17, :cond_3

    .line 1139
    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    .line 1143
    .local v11, "newWidth":I
    if-nez v16, :cond_2

    sget-boolean v21, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_2

    .line 1144
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v11, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v19

    .line 1147
    :cond_2
    move/from16 v0, v19

    if-gt v11, v0, :cond_3

    .line 1148
    move/from16 v19, v11

    .line 1149
    const/4 v6, 0x1

    .line 1154
    .end local v11    # "newWidth":I
    :cond_3
    if-nez v6, :cond_5

    if-eqz v16, :cond_5

    .line 1155
    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    .line 1159
    .local v10, "newHeight":I
    if-nez v17, :cond_4

    sget-boolean v21, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_4

    .line 1160
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v10, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v8

    .line 1164
    :cond_4
    if-gt v10, v8, :cond_5

    .line 1165
    move v8, v10

    .line 1185
    .end local v4    # "actualAspect":F
    .end local v6    # "done":Z
    .end local v10    # "newHeight":I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 1186
    return-void

    .line 1093
    .end local v7    # "h":I
    .end local v8    # "heightSize":I
    .end local v12    # "pbottom":I
    .end local v13    # "pleft":I
    .end local v14    # "pright":I
    .end local v15    # "ptop":I
    .end local v18    # "w":I
    .end local v19    # "widthSize":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    move/from16 v18, v0

    .line 1094
    .restart local v18    # "w":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 1095
    .restart local v7    # "h":I
    if-gtz v18, :cond_7

    const/16 v18, 0x1

    .line 1096
    :cond_7
    if-gtz v7, :cond_8

    const/4 v7, 0x1

    .line 1100
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1101
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    const/16 v17, 0x1

    .line 1102
    :goto_2
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v9, v0, :cond_a

    const/16 v16, 0x1

    .line 1104
    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_0

    .line 1101
    :cond_9
    const/16 v17, 0x0

    goto :goto_2

    .line 1102
    :cond_a
    const/16 v16, 0x0

    goto :goto_3

    .line 1175
    .restart local v12    # "pbottom":I
    .restart local v13    # "pleft":I
    .restart local v14    # "pright":I
    .restart local v15    # "ptop":I
    :cond_b
    add-int v21, v13, v14

    add-int v18, v18, v21

    .line 1176
    add-int v21, v15, v12

    add-int v7, v7, v21

    .line 1178
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1179
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1181
    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v19

    .line 1182
    .restart local v19    # "widthSize":I
    const/16 v21, 0x0

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v7, v0, v1}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v8

    .restart local v8    # "heightSize":I
    goto :goto_1
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 297
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 298
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1050
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 1052
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1055
    :cond_0
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 1606
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 1608
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1611
    :cond_0
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .param p1, "adjustViewBounds"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 337
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    .line 338
    if-eqz p1, :cond_0

    .line 339
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1550
    and-int/lit16 p1, p1, 0xff

    .line 1551
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 1552
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    .line 1553
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1554
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1555
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1557
    :cond_0
    return-void
.end method

.method public setBaseline(I)V
    .locals 1
    .param p1, "baseline"    # I

    .prologue
    .line 1408
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    if-eq v0, p1, :cond_0

    .line 1409
    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    .line 1410
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1412
    :cond_0
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .locals 1
    .param p1, "aligned"    # Z

    .prologue
    .line 1423
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_0

    .line 1424
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    .line 1425
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 1427
    :cond_0
    return-void
.end method

.method public final setColorFilter(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1461
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1462
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1449
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1450
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v1, 0x1

    .line 1505
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1506
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1507
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    .line 1508
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1509
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1510
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1512
    :cond_0
    return-void
.end method

.method public setCropToPadding(Z)V
    .locals 1
    .param p1, "cropToPadding"    # Z

    .prologue
    .line 903
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eq v0, p1, :cond_0

    .line 904
    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    .line 905
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 906
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 908
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1216
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 1217
    .local v0, "changed":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    .line 1218
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 1219
    return v0
.end method

.method public setImageAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1537
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1538
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 706
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 707
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 712
    :goto_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 560
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_3

    .line 561
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/ImageView;->mResource:I

    .line 562
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 564
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 565
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 567
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 572
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 573
    check-cast v2, Landroid/view/View;

    .end local v2    # "parent":Landroid/view/ViewParent;
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v4, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->adjustLayerType(II)V

    .line 577
    :cond_0
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v3, :cond_2

    .line 578
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 580
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 582
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_3
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 599
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v1, 0x0

    .line 604
    new-instance v2, Landroid/widget/ImageView$ImageDrawableCallback;

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v2

    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setImageLevel(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 745
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    .line 746
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 748
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 750
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 867
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    const/4 p1, 0x0

    .line 872
    .end local p1    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 873
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 872
    if-eqz v0, :cond_3

    .line 874
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 875
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    .line 876
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 878
    :cond_3
    return-void
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 470
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 471
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 473
    .local v0, "oldHeight":I
    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    .line 475
    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 477
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 479
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1

    .line 480
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 482
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 483
    return-void
.end method

.method public setImageResourceAsync(I)Ljava/lang/Runnable;
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 490
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 496
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3, p1}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v2

    .line 491
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setImageState([IZ)V
    .locals 1
    .param p1, "state"    # [I
    .param p2, "merge"    # Z

    .prologue
    .line 723
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    .line 724
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    .line 725
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 727
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 729
    :cond_0
    return-void
.end method

.method public setImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 629
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    .line 632
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 633
    return-void
.end method

.method public setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 660
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    .line 663
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    .line 664
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 523
    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v2, p1, :cond_3

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_4

    .line 524
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    iput v4, p0, Landroid/widget/ImageView;->mResource:I

    .line 526
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    .line 528
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    .line 529
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    .line 531
    .local v0, "oldHeight":I
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    .line 533
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_2

    .line 534
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 536
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 538
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_3
    return-void

    .line 523
    :cond_4
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 542
    iget v1, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v1, p1, :cond_3

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 543
    :cond_0
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 544
    :goto_0
    if-nez v0, :cond_1

    .line 546
    const/4 p1, 0x0

    .line 548
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v1, Landroid/widget/ImageView$ImageDrawableCallback;

    invoke-direct {v1, p0, v0, p1, v3}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v1

    .line 542
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 550
    :cond_3
    return-object v2

    .line 543
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 416
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    .line 417
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 378
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    .line 379
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 820
    if-nez p1, :cond_0

    .line 821
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 824
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 825
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 827
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    .line 829
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 830
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 832
    :cond_1
    return-void

    .line 827
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 733
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 734
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    .line 735
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1616
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1618
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_0

    .line 1619
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1621
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1619
    goto :goto_0
.end method

.method public final setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-eq v0, p1, :cond_0

    .line 1479
    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    .line 1480
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    .line 1481
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    .line 1482
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 1484
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 251
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
