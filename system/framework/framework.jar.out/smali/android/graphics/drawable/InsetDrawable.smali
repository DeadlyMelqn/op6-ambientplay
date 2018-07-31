.class public Landroid/graphics/drawable/InsetDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/InsetDrawable$InsetState;,
        Landroid/graphics/drawable/InsetDrawable$InsetValue;
    }
.end annotation


# instance fields
.field private mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

.field private final mTmpInsetRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "inset"    # F

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p2

    move v5, p2

    .line 86
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;FFFF)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "insetLeftFraction"    # F
    .param p3, "insetTopFraction"    # F
    .param p4, "insetRightFraction"    # F
    .param p5, "insetBottomFraction"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 121
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 123
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v1, p2, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 124
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v1, p3, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 125
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v1, p4, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 126
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v1, p5, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 128
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "inset"    # I

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p2

    move v5, p2

    .line 76
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "insetLeft"    # I
    .param p3, "insetTop"    # I
    .param p4, "insetRight"    # I
    .param p5, "insetBottom"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 102
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 103
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v1, v2, p3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 104
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v1, v2, p4}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 105
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v1, v2, p5}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 107
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 418
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    .line 420
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 421
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "-this2"    # Landroid/graphics/drawable/InsetDrawable;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I
    .param p3, "defaultValue"    # Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 204
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 206
    .local v2, "tv":Landroid/util/TypedValue;
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 207
    invoke-virtual {v2, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    .line 208
    .local v1, "f":F
    cmpl-float v3, v1, v5

    if-ltz v3, :cond_0

    .line 209
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Fraction cannot be larger than 1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_0
    new-instance v3, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v3, v1, v6}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-object v3

    .line 213
    .end local v1    # "f":F
    :cond_1
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 214
    .local v0, "dimension":I
    if-eqz v0, :cond_2

    .line 215
    new-instance v3, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-object v3

    .line 219
    .end local v0    # "dimension":I
    .end local v2    # "tv":Landroid/util/TypedValue;
    :cond_2
    return-object p3
.end method

.method private getInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 224
    .local v0, "b":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 225
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 226
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 227
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 228
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v4, 0x6

    .line 178
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 179
    .local v1, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    if-nez v1, :cond_0

    .line 180
    return-void

    .line 184
    :cond_0
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mChangingConfigurations:I

    .line 187
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-set0(Landroid/graphics/drawable/InsetDrawable$InsetState;[I)[I

    .line 190
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    new-instance v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    invoke-direct {p0, p1, v4, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    .line 192
    .local v0, "inset":Landroid/graphics/drawable/InsetDrawable$InsetValue;
    iput-object v0, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 193
    iput-object v0, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 194
    iput-object v0, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 195
    iput-object v0, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 197
    .end local v0    # "inset":Landroid/graphics/drawable/InsetDrawable$InsetValue;
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 198
    iget-object v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    const/4 v3, 0x4

    invoke-direct {p0, p1, v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 199
    iget-object v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 200
    iget-object v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    const/4 v3, 0x5

    invoke-direct {p0, p1, v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 201
    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-get0(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-get0(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 171
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    const-string/jumbo v2, ": <inset> tag requires a \'drawable\' attribute or "

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    const-string/jumbo v2, "child tag defining a drawable"

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 149
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 150
    .local v2, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    if-nez v2, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    invoke-static {v2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-get0(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    .line 155
    invoke-static {v2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->-get0(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 158
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    return-void

    .line 159
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/drawable/InsetDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 161
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    .line 162
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    throw v3
.end method

.method public getIntrinsicHeight()I
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 295
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 296
    .local v0, "childHeight":I
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    add-float v1, v2, v3

    .line 297
    .local v1, "fraction":F
    if-ltz v0, :cond_0

    cmpl-float v2, v1, v4

    if-ltz v2, :cond_1

    .line 298
    :cond_0
    const/4 v2, -0x1

    return v2

    .line 300
    :cond_1
    int-to-float v2, v0

    sub-float v3, v4, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    add-int/2addr v2, v3

    .line 301
    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    .line 300
    add-int/2addr v2, v3

    return v2
.end method

.method public getIntrinsicWidth()I
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 284
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 285
    .local v0, "childWidth":I
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    add-float v1, v2, v3

    .line 286
    .local v1, "fraction":F
    if-ltz v0, :cond_0

    cmpl-float v2, v1, v4

    if-ltz v2, :cond_1

    .line 287
    :cond_0
    const/4 v2, -0x1

    return v2

    .line 289
    :cond_1
    int-to-float v2, v0

    sub-float v3, v4, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    add-int/2addr v2, v3

    .line 290
    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    .line 289
    add-int/2addr v2, v3

    return v2
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 258
    .local v1, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 259
    .local v0, "opacity":I
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/InsetDrawable;->getInsets(Landroid/graphics/Rect;)V

    .line 260
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 261
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gtz v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_1

    .line 263
    :cond_0
    const/4 v2, -0x3

    return v2

    .line 261
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-gtz v2, :cond_0

    .line 262
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-gtz v2, :cond_0

    .line 265
    :cond_2
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 6

    .prologue
    .line 246
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 247
    .local v0, "contentInsets":Landroid/graphics/Insets;
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/InsetDrawable;->getInsets(Landroid/graphics/Rect;)V

    .line 249
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 250
    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 251
    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    .line 252
    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    iget-object v5, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 248
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 306
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 307
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 233
    .local v0, "pad":Z
    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Landroid/graphics/drawable/InsetDrawable;->getInsets(Landroid/graphics/Rect;)V

    .line 234
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 235
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 236
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 237
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 239
    if-nez v0, :cond_0

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    or-int/2addr v3, v4

    .line 240
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 239
    or-int/2addr v3, v4

    .line 240
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 239
    or-int/2addr v3, v4

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    sget-object v1, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/InsetDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 140
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 141
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    return-void
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 312
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 270
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 271
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 274
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 275
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 276
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 279
    invoke-super {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 280
    return-void
.end method
