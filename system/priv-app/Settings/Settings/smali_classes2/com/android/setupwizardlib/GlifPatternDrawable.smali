.class public Lcom/android/setupwizardlib/GlifPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GlifPatternDrawable.java"


# static fields
.field private static final ATTRS_PRIMARY_COLOR:[I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final COLOR_ALPHA:F = 0.8f

.field private static final COLOR_ALPHA_INT:I = 0xcc

.field private static final MAX_CACHED_BITMAP_SCALE:F = 1.5f

.field private static final NUM_PATHS:I = 0x7

.field private static final SCALE_FOCUS_X:F = 0.146f

.field private static final SCALE_FOCUS_Y:F = 0.228f

.field private static final VIEWBOX_HEIGHT:F = 768.0f

.field private static final VIEWBOX_WIDTH:F = 1366.0f

.field private static sBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sPatternLightness:[I

.field private static sPatternPaths:[Landroid/graphics/Path;


# instance fields
.field private mColor:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mTempPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010433

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->ATTRS_PRIMARY_COLOR:[I

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/GlifPatternDrawable;->setColor(I)V

    .line 103
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/android/setupwizardlib/GlifPatternDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "colorPrimary":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 83
    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->ATTRS_PRIMARY_COLOR:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v2, Lcom/android/setupwizardlib/GlifPatternDrawable;

    invoke-direct {v2, v1}, Lcom/android/setupwizardlib/GlifPatternDrawable;-><init>(I)V

    return-object v2
.end method

.method public static invalidatePattern()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    .line 93
    return-void
.end method

.method private renderOnCanvas(Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scale"    # F

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 183
    iget-object v1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 188
    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    if-nez v1, :cond_0

    .line 189
    const/4 v1, 0x7

    new-array v1, v1, [Landroid/graphics/Path;

    sput-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    .line 191
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternLightness:[I

    .line 193
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 194
    .local v0, "p":Landroid/graphics/Path;
    const v1, 0x4480accd    # 1029.4f

    const v2, 0x43b2c000    # 357.5f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 195
    const v1, 0x44aac000    # 1366.0f

    const v2, 0x443dc666    # 759.1f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    const v1, 0x44aac000    # 1366.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    const v1, 0x448e3666    # 1137.7f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 200
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 201
    .restart local v0    # "p":Landroid/graphics/Path;
    const v1, 0x448e4333    # 1138.1f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 202
    const v1, -0x3cef3333    # -144.8f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 203
    const v1, 0x43ba599a    # 372.7f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 204
    const/4 v1, 0x0

    const/high16 v2, -0x3bfd0000    # -524.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 205
    const v1, 0x44a15666    # 1290.7f

    const v2, 0x42f33333    # 121.6f

    const v3, 0x44986666    # 1219.2f

    const v4, 0x42246666    # 41.1f

    const v5, 0x44935666    # 1178.7f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 206
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 208
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 209
    .restart local v0    # "p":Landroid/graphics/Path;
    const v1, 0x446d7333    # 949.8f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 210
    const v1, 0x42b93333    # 92.6f

    const v2, -0x3cd56666    # -170.6f

    const/high16 v3, 0x43550000    # 213.0f

    const v4, -0x3c23d99a    # -440.3f

    const v5, 0x4386b333    # 269.4f

    const/high16 v6, -0x3bc00000    # -768.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 211
    const v1, 0x44124000    # 585.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    const v1, 0x40066666    # 2.1f

    const v2, 0x443f8000    # 766.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 215
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 216
    .restart local v0    # "p":Landroid/graphics/Path;
    const v1, 0x43eb8ccd    # 471.1f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 217
    const v1, 0x44302000    # 704.5f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 218
    const v1, 0x448c7333    # 1123.6f

    const v2, 0x440cd333    # 563.3f

    const v3, 0x44806ccd    # 1027.4f

    const v4, 0x4389999a    # 275.2f

    const v5, 0x44560ccd    # 856.2f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 219
    const v1, 0x43ee3333    # 476.4f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    const v1, -0x3f566666    # -5.3f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 223
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 224
    .restart local v0    # "p":Landroid/graphics/Path;
    const v1, 0x43a18ccd    # 323.1f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    const v1, 0x44426000    # 777.5f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 226
    const v1, 0x4425799a    # 661.9f

    const v2, 0x43ae6666    # 348.8f

    const v3, 0x43d5999a    # 427.2f

    const v4, 0x41ab3333    # 21.4f

    const v5, 0x43c8999a    # 401.2f

    const v6, 0x41cb3333    # 25.4f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 227
    const v1, 0x43a18ccd    # 323.1f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 228
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 230
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 231
    .restart local v0    # "p":Landroid/graphics/Path;
    const v1, 0x4332715f

    const v2, 0x443fb6db

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 232
    const v1, 0x439a599a    # 308.7f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    const v1, 0x43bed99a    # 381.7f

    const v2, 0x44172666    # 604.6f

    const v3, 0x43f0cccd    # 481.6f

    const v4, 0x43ac2666    # 344.3f

    const v5, 0x440c8ccd    # 562.2f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 234
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 235
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 237
    new-instance v0, Landroid/graphics/Path;

    .end local v0    # "p":Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 238
    .restart local v0    # "p":Landroid/graphics/Path;
    const/high16 v1, 0x43120000    # 146.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 239
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    const/4 v1, 0x0

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    const v1, 0x43c5199a    # 394.2f

    const/high16 v2, 0x44400000    # 768.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    const v1, 0x43a3d99a    # 327.7f

    const v2, 0x43eda666    # 475.3f

    const v3, 0x43648000    # 228.5f

    const/high16 v4, 0x43490000    # 201.0f

    const/high16 v5, 0x43120000    # 146.0f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 246
    .end local v0    # "p":Landroid/graphics/Path;
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v7, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternLightness:[I

    aget v2, v2, v7

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    sget-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 246
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 255
    iget-object v1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 256
    return-void

    .line 191
    nop

    :array_0
    .array-data 4
        0xa
        0x28
        0x33
        0x42
        0x5b
        0x70
        0x82
    .end array-data
.end method


# virtual methods
.method public createBitmapCache(II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "drawableWidth"    # I
    .param p2, "drawableHeight"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const v9, 0x44aac000    # 1366.0f

    const/high16 v8, 0x44400000    # 768.0f

    .line 160
    int-to-float v7, p1

    div-float v3, v7, v9

    .line 161
    .local v3, "scaleX":F
    int-to-float v7, p2

    div-float v4, v7, v8

    .line 162
    .local v4, "scaleY":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 163
    .local v2, "scale":F
    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 166
    mul-float v7, v9, v2

    float-to-int v6, v7

    .line 167
    .local v6, "scaledWidth":I
    mul-float v7, v8, v2

    float-to-int v5, v7

    .line 173
    .local v5, "scaledHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 170
    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 175
    .local v1, "bitmapCanvas":Landroid/graphics/Canvas;
    invoke-direct {p0, v1, v2}, Lcom/android/setupwizardlib/GlifPatternDrawable;->renderOnCanvas(Landroid/graphics/Canvas;F)V

    .line 176
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 108
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 109
    .local v5, "drawableWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 110
    .local v4, "drawableHeight":I
    const/4 v0, 0x0

    .line 111
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    if-eqz v6, :cond_0

    .line 112
    sget-object v6, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 114
    :cond_0
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 116
    .local v2, "bitmapWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 119
    .local v1, "bitmapHeight":I
    if-le v5, v2, :cond_3

    .line 120
    int-to-float v6, v2

    const v7, 0x45001000    # 2049.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 121
    const/4 v0, 0x0

    .line 128
    .end local v1    # "bitmapHeight":I
    .end local v2    # "bitmapWidth":I
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 130
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 132
    invoke-virtual {p0, v5, v4}, Lcom/android/setupwizardlib/GlifPatternDrawable;->createBitmapCache(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    .line 136
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 139
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 142
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/setupwizardlib/GlifPatternDrawable;->scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 143
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_4

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v6

    .line 143
    if-eqz v6, :cond_4

    .line 145
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 146
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 155
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 156
    return-void

    .line 122
    .restart local v1    # "bitmapHeight":I
    .restart local v2    # "bitmapWidth":I
    :cond_3
    if-le v4, v1, :cond_1

    .line 123
    int-to-float v6, v1

    const/high16 v7, 0x44900000    # 1152.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 124
    const/4 v0, 0x0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 149
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapHeight":I
    .end local v2    # "bitmapWidth":I
    :cond_4
    const/high16 v6, -0x1000000

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 150
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    iget v6, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1
.end method

.method public getColor()I
    .locals 4

    .prologue
    .line 316
    iget v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "drawableBounds"    # Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 260
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 261
    .local v1, "bitmapWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 262
    .local v0, "bitmapHeight":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    div-float v2, v4, v5

    .line 263
    .local v2, "scaleX":F
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    div-float v3, v4, v5

    .line 266
    .local v3, "scaleY":F
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 267
    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    .line 270
    div-float v4, v3, v2

    int-to-float v5, v1

    const v6, 0x3e158106    # 0.146f

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v8, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 274
    div-float v4, v2, v3

    int-to-float v5, v0

    const v6, 0x3e6978d5    # 0.228f

    mul-float/2addr v5, v6

    invoke-virtual {p1, v8, v4, v7, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 281
    return-void
.end method

.method public setColor(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    const v9, 0x3f4ccccd    # 0.8f

    const v8, 0x3e4ccccc    # 0.19999999f

    const/4 v7, 0x0

    .line 298
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 299
    .local v2, "r":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 300
    .local v1, "g":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 301
    .local v0, "b":I
    const/16 v3, 0xcc

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    .line 302
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v4, 0x14

    new-array v4, v4, [F

    .line 303
    const/4 v5, 0x0

    aput v7, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    const/4 v5, 0x2

    aput v7, v4, v5

    const/4 v5, 0x3

    aput v8, v4, v5

    int-to-float v5, v2

    mul-float/2addr v5, v9

    const/4 v6, 0x4

    aput v5, v4, v6

    .line 304
    const/4 v5, 0x5

    aput v7, v4, v5

    const/4 v5, 0x6

    aput v7, v4, v5

    const/4 v5, 0x7

    aput v7, v4, v5

    const/16 v5, 0x8

    aput v8, v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v9

    const/16 v6, 0x9

    aput v5, v4, v6

    .line 305
    const/16 v5, 0xa

    aput v7, v4, v5

    const/16 v5, 0xb

    aput v7, v4, v5

    const/16 v5, 0xc

    aput v7, v4, v5

    const/16 v5, 0xd

    aput v8, v4, v5

    int-to-float v5, v0

    mul-float/2addr v5, v9

    const/16 v6, 0xe

    aput v5, v4, v6

    .line 306
    const/16 v5, 0xf

    aput v7, v4, v5

    const/16 v5, 0x10

    aput v7, v4, v5

    const/16 v5, 0x11

    aput v7, v4, v5

    const/16 v5, 0x12

    aput v7, v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    const/16 v6, 0x13

    aput v5, v4, v6

    .line 302
    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object v3, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 308
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->invalidateSelf()V

    .line 309
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 286
    return-void
.end method
