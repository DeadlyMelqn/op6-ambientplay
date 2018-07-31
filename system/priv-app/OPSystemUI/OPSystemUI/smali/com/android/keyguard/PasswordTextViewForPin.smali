.class public Lcom/android/keyguard/PasswordTextViewForPin;
.super Landroid/view/View;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextViewForPin$CharState;,
        Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;,
        Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;
    }
.end annotation


# instance fields
.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/keyguard/PasswordTextViewForPin$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDotSize:I

.field private final mDrawAlphaPaint1:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint2:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint3:Landroid/graphics/Paint;

.field private final mDrawAlphaPaint4:Landroid/graphics/Paint;

.field private final mDrawEmptyCirclePaint:Landroid/graphics/Paint;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGravity:I

.field private mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

.field private mPM:Landroid/os/PowerManager;

.field private mShowPassword:Z

.field private mText:Ljava/lang/String;

.field private mTextChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/PasswordTextViewForPin$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColor:I

.field private final mTextHeightRaw:I

.field private mUserActivityListener:Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/PasswordTextViewForPin;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/PasswordTextViewForPin;)Ljava/util/Stack;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/PasswordTextViewForPin;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/PasswordTextViewForPin;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mShowPassword:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/PasswordTextViewForPin;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mUserActivityListener:Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextViewForPin;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    .line 94
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 95
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    .line 99
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    .line 108
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawEmptyCirclePaint:Landroid/graphics/Paint;

    .line 109
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint1:Landroid/graphics/Paint;

    .line 110
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint2:Landroid/graphics/Paint;

    .line 111
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint3:Landroid/graphics/Paint;

    .line 112
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawAlphaPaint4:Landroid/graphics/Paint;

    .line 113
    iput v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextColor:I

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/keyguard/PasswordTextViewForPin;->setFocusableInTouchMode(Z)V

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/keyguard/PasswordTextViewForPin;->setFocusable(Z)V

    .line 140
    sget-object v4, Lcom/android/keyguard/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x4

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextHeightRaw:I

    .line 143
    const/4 v4, 0x1

    const/16 v5, 0x11

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mGravity:I

    .line 145
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07031e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 144
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDotSize:I

    .line 147
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 148
    const v5, 0x7f07031c

    .line 147
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 146
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    .line 149
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 151
    .local v1, "textColor":I
    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextColor:I

    .line 153
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 158
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 159
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    .line 160
    const v5, 0x104014e

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 162
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 163
    const-string/jumbo v5, "show_password"

    .line 162
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mShowPassword:Z

    .line 164
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    .line 165
    const v3, 0x10c000e

    .line 164
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 166
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    .line 167
    const v3, 0x10c000f

    .line 166
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 168
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    .line 169
    const v3, 0x10c000d

    .line 168
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 170
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    .line 171
    return-void

    .line 154
    .end local v1    # "textColor":I
    :catchall_0
    move-exception v2

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    throw v2

    .restart local v1    # "textColor":I
    :cond_0
    move v2, v3

    .line 162
    goto :goto_0
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 240
    iget v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextHeightRaw:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v1, v2, v3

    .line 241
    .local v1, "textHeight":F
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 243
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 244
    return-object v0
.end method

.method private getDrawingWidth()F
    .locals 9

    .prologue
    .line 248
    const/4 v5, 0x0

    .line 249
    .local v5, "width":I
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 250
    .local v4, "length":I
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 251
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v6, v7

    .line 252
    .local v1, "charLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 253
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 254
    .local v2, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    if-eqz v3, :cond_0

    .line 255
    int-to-float v6, v5

    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPadding:I

    int-to-float v7, v7

    iget v8, v2, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 257
    :cond_0
    int-to-float v6, v5

    int-to-float v7, v1

    iget v8, v2, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :cond_1
    int-to-float v6, v5

    return v6
.end method

.method private obtainCharState(C)Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 348
    .local v0, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :goto_0
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    .line 349
    return-object v0

    .line 345
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 346
    .restart local v0    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->reset()V

    goto :goto_0
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 455
    const-string/jumbo v3, "speak_password"

    .line 456
    const/4 v4, -0x3

    .line 454
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private userActivity()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mUserActivityListener:Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mUserActivityListener:Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    invoke-interface {v0}, Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;->onUserActivity()V

    .line 315
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 8
    .param p1, "c"    # C

    .prologue
    const/4 v7, 0x1

    .line 264
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 265
    .local v4, "visibleChars":I
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 267
    .local v3, "textbefore":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 268
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 270
    .local v1, "newLength":I
    if-le v1, v4, :cond_3

    .line 271
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextViewForPin;->obtainCharState(C)Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    move-result-object v0

    .line 272
    .local v0, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :goto_0
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startAppearAnimation()V

    .line 280
    if-le v1, v7, :cond_0

    .line 281
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 282
    .local v2, "previousState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    iget-boolean v5, v2, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    if-eqz v5, :cond_0

    .line 283
    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->swapToDotWhenAppearFinished()V

    .line 288
    .end local v2    # "previousState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :cond_0
    const/16 v5, 0x10

    if-ne v1, v5, :cond_1

    .line 289
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/keyguard/PasswordTextViewForPin$1;

    invoke-direct {v6, p0}, Lcom/android/keyguard/PasswordTextViewForPin$1;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    if-eqz v5, :cond_2

    .line 298
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;->onTextChanged(Ljava/lang/String;)V

    .line 302
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->userActivity()V

    .line 303
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/android/keyguard/PasswordTextViewForPin;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 304
    return-void

    .line 274
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 275
    .restart local v0    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    goto :goto_0
.end method

.method public deleteLastChar()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 318
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 319
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 320
    .local v2, "textbefore":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 321
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 322
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 323
    .local v0, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    invoke-virtual {v0, v6, v7, v6, v7}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startRemoveAnimation(JJ)V

    .line 327
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;->onTextChanged(Ljava/lang/String;)V

    .line 332
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->userActivity()V

    .line 333
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/keyguard/PasswordTextViewForPin;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 334
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getDrawingWidth()F

    move-result v10

    .line 220
    .local v10, "totalDrawingWidth":F
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v10, v11

    sub-float v2, v1, v11

    .line 221
    .local v2, "currentDrawPosition":F
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 222
    .local v9, "length":I
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 223
    .local v6, "bounds":Landroid/graphics/Rect;
    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v11

    .line 224
    .local v3, "charHeight":I
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    .line 225
    .local v4, "yPosition":F
    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v11, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v11

    int-to-float v5, v1

    .line 226
    .local v5, "charLength":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .local v0, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    move-object v1, p1

    .line 228
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    move-result v7

    .line 230
    .local v7, "charWidth":F
    add-float/2addr v2, v7

    .line 226
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    .end local v7    # "charWidth":F
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 415
    const-class v0, Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 417
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 418
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 434
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 436
    const-class v0, Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 440
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 446
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 447
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 424
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->shouldSpeakPasswordsForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 426
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public reset(ZZ)V
    .locals 24
    .param p1, "animated"    # Z
    .param p2, "announce"    # Z

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 354
    .local v18, "textbefore":Ljava/lang/String;
    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 356
    .local v12, "length":I
    add-int/lit8 v19, v12, -0x1

    div-int/lit8 v13, v19, 0x2

    .line 357
    .local v13, "middleIndex":I
    const-wide/16 v8, 0x28

    .line 358
    .local v8, "delayPerElement":J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_2

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 360
    .local v6, "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    if-eqz p1, :cond_1

    .line 362
    if-gt v11, v13, :cond_0

    .line 363
    mul-int/lit8 v7, v11, 0x2

    .line 368
    .local v7, "delayIndex":I
    :goto_1
    int-to-long v0, v7

    move-wide/from16 v20, v0

    .line 357
    const-wide/16 v22, 0x28

    .line 368
    mul-long v16, v20, v22

    .line 369
    .local v16, "startDelay":J
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 370
    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 357
    const-wide/16 v22, 0x28

    .line 370
    mul-long v14, v22, v20

    .line 371
    .local v14, "maxDelay":J
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0xa0

    add-long v14, v20, v22

    .line 372
    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1, v14, v15}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startRemoveAnimation(JJ)V

    .line 373
    invoke-static {v6}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->-wrap2(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 358
    .end local v7    # "delayIndex":I
    .end local v14    # "maxDelay":J
    .end local v16    # "startDelay":J
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 365
    :cond_0
    sub-int v10, v11, v13

    .line 366
    .local v10, "distToMiddle":I
    add-int/lit8 v19, v12, -0x1

    add-int/lit8 v20, v10, -0x1

    mul-int/lit8 v20, v20, 0x2

    sub-int v7, v19, v20

    .restart local v7    # "delayIndex":I
    goto :goto_1

    .line 375
    .end local v7    # "delayIndex":I
    .end local v10    # "distToMiddle":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mCharPool:Ljava/util/Stack;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 378
    .end local v6    # "charState":Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    :cond_2
    if-nez p1, :cond_3

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mTextChars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 383
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin;->mText:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;->onTextChanged(Ljava/lang/String;)V

    .line 388
    :cond_4
    if-eqz p2, :cond_5

    .line 389
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/PasswordTextViewForPin;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 391
    :cond_5
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->isShown()Z

    move-result v1

    .line 395
    if-eqz v1, :cond_2

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin;->shouldSpeakPasswordsForAccessibility()Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    const/4 p1, 0x0

    .line 401
    .end local p1    # "beforeText":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 402
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 403
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 404
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 405
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 406
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 409
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    return-void
.end method

.method public setTextChangeListener(Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mOnTextChangeListerner:Lcom/android/keyguard/PasswordTextViewForPin$onTextChangedListerner;

    .line 804
    return-void
.end method

.method public setUserActivityListener(Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;)V
    .locals 0
    .param p1, "userActivitiListener"    # Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin;->mUserActivityListener:Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    .line 308
    return-void
.end method
