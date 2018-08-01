.class public Lcom/android/systemui/statusbar/phone/SignalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SignalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SignalDrawable$1;,
        Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;
    }
.end annotation


# static fields
.field private static final FIT:[F

.field private static final INV_TAN:F

.field private static X_PATH:[[F


# instance fields
.field private mAnimating:Z

.field private final mAppliedCornerInset:F

.field private final mChangeDot:Ljava/lang/Runnable;

.field private mCurrentDot:I

.field private final mCutPath:Landroid/graphics/Path;

.field private final mDarkModeBackgroundColor:I

.field private final mDarkModeFillColor:I

.field private final mForegroundPaint:Landroid/graphics/Paint;

.field private final mForegroundPath:Landroid/graphics/Path;

.field private final mFullPath:Landroid/graphics/Path;

.field private final mHandler:Landroid/os/Handler;

.field private mIntrinsicSize:I

.field private mLevel:I

.field private final mLightModeBackgroundColor:I

.field private final mLightModeFillColor:I

.field private mNumLevels:F

.field private mOldDarkIntensity:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

.field private mState:I

.field private final mVirtualLeft:Landroid/graphics/PointF;

.field private final mVirtualTop:Landroid/graphics/PointF;

.field private mVisible:Z

.field private final mXPath:Landroid/graphics/Path;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/SignalDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/SignalDrawable;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/SignalDrawable;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/SignalDrawable;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/SignalDrawable;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/SignalDrawable;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/SignalDrawable;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/SignalDrawable;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 56
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    .line 73
    const/16 v0, 0xc

    new-array v0, v0, [[F

    .line 74
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 75
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 76
    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    .line 77
    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    .line 78
    new-array v1, v3, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 79
    new-array v1, v3, [F

    fill-array-data v1, :array_6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 80
    new-array v1, v3, [F

    fill-array-data v1, :array_7

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 81
    new-array v1, v3, [F

    fill-array-data v1, :array_8

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 82
    new-array v1, v3, [F

    fill-array-data v1, :array_9

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 83
    new-array v1, v3, [F

    fill-array-data v1, :array_a

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 84
    new-array v1, v3, [F

    fill-array-data v1, :array_b

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 85
    new-array v1, v3, [F

    fill-array-data v1, :array_c

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 73
    sput-object v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    .line 104
    const-wide v0, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sput v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->INV_TAN:F

    .line 41
    return-void

    .line 56
    :array_0
    .array-data 4
        0x4010a3d7    # 2.26f
        -0x3fbeb852    # -3.02f
        0x3fe147ae    # 1.76f
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x3f699999    # 0.91249996f
        0x3f355555
    .end array-data

    .line 75
    :array_2
    .array-data 4
        -0x42c44444
        -0x42c44444
    .end array-data

    .line 76
    :array_3
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    .line 77
    :array_4
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data

    .line 78
    :array_5
    .array-data 4
        -0x42c44444
        0x3d3bbbbc
    .end array-data

    .line 79
    :array_6
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    .line 80
    :array_7
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    .line 81
    :array_8
    .array-data 4
        0x3d3bbbbc
        0x3d3bbbbc
    .end array-data

    .line 82
    :array_9
    .array-data 4
        0x3da22222
        -0x425dddde
    .end array-data

    .line 83
    :array_a
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    .line 84
    :array_b
    .array-data 4
        0x3d3bbbbc
        -0x42c44444
    .end array-data

    .line 85
    :array_c
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 134
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 108
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    .line 109
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    .line 119
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    .line 121
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;-><init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    .line 125
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    .line 126
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    .line 419
    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;-><init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    .line 136
    const v0, 0x7f060035

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 135
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeBackgroundColor:I

    .line 138
    const v0, 0x7f060036

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 137
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeFillColor:I

    .line 140
    const v0, 0x7f060084

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 139
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeBackgroundColor:I

    .line 142
    const v0, 0x7f060085

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 141
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeFillColor:I

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    const v1, 0x7f0702d5

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAppliedCornerInset:F

    .line 150
    return-void
.end method

.method private calcFit(F)F
    .locals 4
    .param p1, "v"    # F

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "ret":F
    move v2, p1

    .line 383
    .local v2, "t":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 384
    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    aget v3, v3, v0

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 385
    mul-float/2addr v2, p1

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    return v1
.end method

.method private drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V
    .locals 6
    .param p1, "fullPath"    # Landroid/graphics/Path;
    .param p2, "foregroundPath"    # Landroid/graphics/Path;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "dotSize"    # F
    .param p6, "i"    # I

    .prologue
    .line 370
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    if-ne p6, v1, :cond_0

    move-object v0, p2

    .line 371
    .local v0, "p":Landroid/graphics/Path;
    :goto_0
    add-float v3, p3, p5

    add-float v4, p4, p5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 372
    return-void

    .line 370
    .end local v0    # "p":Landroid/graphics/Path;
    :cond_0
    move-object v0, p1

    .restart local v0    # "p":Landroid/graphics/Path;
    goto :goto_0
.end method

.method public static getAirplaneModeState(I)I
    .locals 2
    .param p0, "numLevels"    # I

    .prologue
    .line 457
    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    return v0
.end method

.method private getBackgroundColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 224
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeBackgroundColor:I

    .line 223
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method public static getCarrierChangeState(I)I
    .locals 2
    .param p0, "numLevels"    # I

    .prologue
    .line 449
    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x30000

    or-int/2addr v0, v1

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    .line 228
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getEmptyState(I)I
    .locals 2
    .param p0, "numLevels"    # I

    .prologue
    .line 453
    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    return v0
.end method

.method private getFillColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 219
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeFillColor:I

    .line 218
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method public static getLevel(I)I
    .locals 1
    .param p0, "fullState"    # I

    .prologue
    .line 431
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getNumLevels(I)I
    .locals 1
    .param p0, "fullState"    # I

    .prologue
    .line 439
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getState(I)I
    .locals 1
    .param p0, "fullState"    # I

    .prologue
    .line 435
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static getState(IIZ)I
    .locals 2
    .param p0, "level"    # I
    .param p1, "numLevels"    # I
    .param p2, "cutOut"    # Z

    .prologue
    .line 443
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    shl-int/lit8 v0, v0, 0x10

    .line 444
    shl-int/lit8 v1, p1, 0x8

    .line 443
    or-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSignalState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 174
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->updateAnimation()V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 177
    return-void
.end method

.method private updateAnimation()V
    .locals 3

    .prologue
    .line 180
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVisible:Z

    .line 181
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAnimating:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    .local v0, "shouldAnimate":Z
    goto :goto_0

    .line 182
    .end local v0    # "shouldAnimate":Z
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAnimating:Z

    .line 183
    if-eqz v0, :cond_2

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 188
    :goto_1
    return-void

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v0, v2

    move/from16 v28, v0

    .line 240
    .local v28, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v0, v2

    move/from16 v23, v0

    .line 242
    .local v23, "height":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/16 v25, 0x1

    .line 243
    .local v25, "isRtl":Z
    :goto_0
    if-eqz v25, :cond_0

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 246
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 247
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 252
    const v2, 0x3daaaaab

    mul-float v2, v2, v28

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v2

    move/from16 v26, v0

    .line 253
    .local v26, "padding":F
    const v2, 0x3d34b4b5

    mul-float v15, v2, v23

    .line 255
    .local v15, "cornerRadius":F
    const v2, 0x3f3504f7

    mul-float v20, v2, v15

    .line 258
    .local v20, "diagOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v3, v28, v26

    sub-float v4, v23, v26

    sub-float/2addr v4, v15

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v3, v28, v26

    add-float v4, v26, v15

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    .line 263
    sub-float v3, v28, v26

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v15

    sub-float/2addr v3, v4

    .line 264
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAppliedCornerInset:F

    add-float v4, v4, v26

    .line 265
    sub-float v5, v28, v26

    .line 266
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAppliedCornerInset:F

    add-float v8, v8, v26

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v15

    add-float v6, v8, v9

    .line 267
    const/4 v7, 0x0

    const/high16 v8, -0x3cf90000    # -135.0f

    const/4 v9, 0x0

    .line 262
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAppliedCornerInset:F

    add-float v3, v3, v26

    add-float/2addr v3, v15

    sub-float v3, v3, v20

    .line 271
    sub-float v4, v23, v26

    sub-float/2addr v4, v15

    sub-float v4, v4, v20

    .line 270
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    .line 274
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAppliedCornerInset:F

    add-float v3, v3, v26

    .line 275
    sub-float v4, v23, v26

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v15

    sub-float/2addr v4, v8

    .line 276
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAppliedCornerInset:F

    add-float v8, v8, v26

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v15

    add-float v5, v8, v9

    .line 277
    sub-float v6, v23, v26

    .line 278
    const/high16 v7, -0x3cf90000    # -135.0f

    const/high16 v8, -0x3cf90000    # -135.0f

    const/4 v9, 0x0

    .line 273
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v3, v28, v26

    sub-float/2addr v3, v15

    sub-float v4, v23, v26

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    .line 284
    sub-float v3, v28, v26

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v15

    sub-float/2addr v3, v4

    .line 285
    sub-float v4, v23, v26

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v15

    sub-float/2addr v4, v8

    .line 286
    sub-float v5, v28, v26

    .line 287
    sub-float v6, v23, v26

    .line 288
    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/4 v9, 0x0

    .line 283
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 291
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 292
    const v2, 0x3f155556

    mul-float v19, v2, v28

    .line 293
    .local v19, "cutWidth":F
    const v2, 0x3e2aaaab

    mul-float v18, v2, v28

    .line 294
    .local v18, "cutHeight":F
    const/high16 v2, 0x3e000000    # 0.125f

    mul-float v7, v2, v23

    .line 295
    .local v7, "dotSize":F
    const v2, 0x3d2aaaab

    mul-float v21, v2, v23

    .line 297
    .local v21, "dotPadding":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v3, v28, v26

    sub-float v4, v23, v26

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move/from16 v0, v19

    neg-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v18

    neg-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 302
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v21

    add-float v22, v2, v7

    .line 303
    .local v22, "dotSpacing":F
    sub-float v2, v28, v26

    sub-float v5, v2, v7

    .line 304
    .local v5, "x":F
    sub-float v2, v23, v26

    sub-float v6, v2, v7

    .line 305
    .local v6, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/4 v8, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 307
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    sub-float v11, v5, v22

    const/4 v14, 0x1

    move-object/from16 v8, p0

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 308
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v22

    sub-float v11, v5, v2

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 318
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "dotSize":F
    .end local v18    # "cutHeight":F
    .end local v19    # "cutWidth":F
    .end local v21    # "dotPadding":F
    .end local v22    # "dotSpacing":F
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    .line 321
    sub-float v3, v28, v26

    .line 322
    add-float v4, v26, v15

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v4, v8

    sget v8, Lcom/android/systemui/statusbar/phone/SignalDrawable;->INV_TAN:F

    mul-float/2addr v8, v15

    sub-float/2addr v4, v8

    .line 320
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    .line 324
    add-float v3, v26, v15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v3, v4

    sget v4, Lcom/android/systemui/statusbar/phone/SignalDrawable;->INV_TAN:F

    mul-float/2addr v4, v15

    sub-float/2addr v3, v4

    .line 325
    sub-float v4, v23, v26

    .line 323
    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 327
    const v2, 0x3daaaaab

    mul-float v19, v2, v23

    .line 328
    .restart local v19    # "cutWidth":F
    sget v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;->INV_TAN:F

    mul-float v17, v19, v2

    .line 331
    .local v17, "cutDiagInset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v3, v28, v26

    sub-float v3, v3, v19

    sub-float v4, v23, v26

    sub-float v4, v4, v19

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v3, v28, v26

    sub-float v3, v3, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float v4, v4, v17

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float v3, v3, v17

    sub-float v4, v23, v26

    sub-float v4, v4, v19

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v3, v28, v26

    sub-float v3, v3, v19

    sub-float v4, v23, v26

    sub-float v4, v4, v19

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 353
    .end local v17    # "cutDiagInset":F
    .end local v19    # "cutWidth":F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 355
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float v3, v3, v28

    sget-object v4, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    const/4 v8, 0x0

    aget-object v4, v4, v8

    const/4 v8, 0x1

    aget v4, v4, v8

    mul-float v4, v4, v23

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 358
    const/16 v24, 0x1

    .local v24, "i":I
    :goto_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    array-length v2, v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_7

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    aget-object v3, v3, v24

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float v3, v3, v28

    sget-object v4, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    aget-object v4, v4, v24

    const/4 v8, 0x1

    aget v4, v4, v8

    mul-float v4, v4, v23

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 358
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 242
    .end local v15    # "cornerRadius":F
    .end local v20    # "diagOffset":F
    .end local v24    # "i":I
    .end local v25    # "isRtl":Z
    .end local v26    # "padding":F
    :cond_3
    const/16 v25, 0x0

    .restart local v25    # "isRtl":Z
    goto/16 :goto_0

    .line 309
    .restart local v15    # "cornerRadius":F
    .restart local v20    # "diagOffset":F
    .restart local v26    # "padding":F
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 310
    const v2, 0x3ea88889

    mul-float v16, v2, v28

    .line 311
    .local v16, "cut":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v3, v28, v26

    sub-float v4, v23, v26

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move/from16 v0, v16

    neg-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v16

    neg-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_1

    .line 341
    .end local v16    # "cut":F
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    move/from16 v0, v23

    float-to-int v3, v0

    move/from16 v0, v28

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0, v8}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->draw(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 345
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 347
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->calcFit(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v26

    sub-float v3, v28, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v27

    .line 348
    .local v27, "sigWidth":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move/from16 v0, v27

    int-to-float v2, v0

    add-float v11, v26, v2

    sub-float v12, v23, v26

    .line 349
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v9, v26

    move/from16 v10, v26

    .line 348
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_2

    .line 361
    .end local v27    # "sigWidth":I
    .restart local v24    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 363
    .end local v24    # "i":I
    :cond_8
    if-eqz v25, :cond_9

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 366
    :cond_9
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 409
    const/16 v0, 0xff

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 235
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 192
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getNumLevels(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setNumLevels(I)V

    .line 193
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getState(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setSignalState(I)V

    .line 194
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getLevel(I)I

    move-result v0

    .line 195
    .local v0, "level":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    if-eq v0, v1, :cond_0

    .line 196
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 199
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 399
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 405
    return-void
.end method

.method public setColors(II)V
    .locals 1
    .param p1, "background"    # I
    .param p2, "foreground"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 208
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBackgroundColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getFillColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 215
    return-void
.end method

.method public setIntrinsicSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    .line 154
    return-void
.end method

.method public setNumLevels(I)V
    .locals 2
    .param p1, "levels"    # I

    .prologue
    .line 167
    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 170
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVisible:Z

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->updateAnimation()V

    .line 416
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
