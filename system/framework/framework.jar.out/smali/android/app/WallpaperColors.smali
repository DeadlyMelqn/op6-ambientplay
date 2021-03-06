.class public final Landroid/app/WallpaperColors;
.super Ljava/lang/Object;
.source "WallpaperColors.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperColors$1;
    }
.end annotation


# static fields
.field private static final BRIGHT_IMAGE_MEAN_LUMINANCE:F = 0.75f

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/WallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private static final DARK_PIXEL_LUMINANCE:F = 0.45f

.field private static final DARK_THEME_MEAN_LUMINANCE:F = 0.25f

.field public static final HINT_FROM_BITMAP:I = 0x4

.field public static final HINT_SUPPORTS_DARK_TEXT:I = 0x1

.field public static final HINT_SUPPORTS_DARK_THEME:I = 0x2

.field private static final MAX_BITMAP_SIZE:I = 0x70

.field private static final MAX_DARK_AREA:F = 0.05f

.field private static final MAX_WALLPAPER_EXTRACTION_AREA:I = 0x3100

.field private static final MIN_COLOR_OCCURRENCE:F = 0.05f


# instance fields
.field private mColorHints:I

.field private final mMainColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Landroid/app/WallpaperColors$1;

    invoke-direct {v0}, Landroid/app/WallpaperColors$1;-><init>()V

    sput-object v0, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V
    .locals 1
    .param p1, "primaryColor"    # Landroid/graphics/Color;
    .param p2, "secondaryColor"    # Landroid/graphics/Color;
    .param p3, "tertiaryColor"    # Landroid/graphics/Color;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V
    .locals 2
    .param p1, "primaryColor"    # Landroid/graphics/Color;
    .param p2, "secondaryColor"    # Landroid/graphics/Color;
    .param p3, "tertiaryColor"    # Landroid/graphics/Color;
    .param p4, "colorHints"    # I

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Primary color should never be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    .line 232
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    if-eqz p2, :cond_1

    .line 234
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_1
    if-eqz p3, :cond_3

    .line 237
    if-nez p2, :cond_2

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tertiaryColor can\'t be specified when secondaryColor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_2
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_3
    iput p4, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .local v1, "colorInt":I
    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    .line 97
    .local v0, "color":Landroid/graphics/Color;
    iget-object v4, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "color":Landroid/graphics/Color;
    .end local v1    # "colorInt":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 100
    return-void
.end method

.method private static calculateDarkHints(Landroid/graphics/Bitmap;)I
    .locals 22
    .param p0, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 358
    if-nez p0, :cond_0

    .line 359
    const/4 v2, 0x0

    return v2

    .line 362
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 363
    .local v3, "pixels":[I
    const-wide/16 v20, 0x0

    .line 364
    .local v20, "totalLuminance":D
    array-length v2, v3

    int-to-float v2, v2

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v4

    float-to-int v15, v2

    .line 365
    .local v15, "maxDarkPixels":I
    const/4 v11, 0x0

    .line 366
    .local v11, "darkPixels":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 366
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 371
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v18, v0

    .line 372
    .local v18, "tmpHsl":[F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v2, v3

    if-ge v13, v2, :cond_2

    .line 373
    aget v2, v3, v13

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 374
    const/4 v2, 0x2

    aget v14, v18, v2

    .line 375
    .local v14, "luminance":F
    aget v2, v3, v13

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 378
    .local v10, "alpha":I
    const v2, 0x3ee66666    # 0.45f

    cmpg-float v2, v14, v2

    if-gez v2, :cond_1

    if-eqz v10, :cond_1

    .line 379
    add-int/lit8 v11, v11, 0x1

    .line 381
    :cond_1
    float-to-double v4, v14

    add-double v20, v20, v4

    .line 372
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 384
    .end local v10    # "alpha":I
    .end local v14    # "luminance":F
    :cond_2
    const/4 v12, 0x0

    .line 385
    .local v12, "hints":I
    array-length v2, v3

    int-to-double v4, v2

    div-double v16, v20, v4

    .line 386
    .local v16, "meanLuminance":D
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v2, v16, v4

    if-lez v2, :cond_3

    if-ge v11, v15, :cond_3

    .line 387
    const/4 v12, 0x1

    .line 389
    :cond_3
    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpg-double v2, v16, v4

    if-gez v2, :cond_4

    .line 390
    or-int/lit8 v12, v12, 0x2

    .line 393
    :cond_4
    return v12
.end method

.method private static calculateOptimalSize(II)Landroid/util/Size;
    .locals 10
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 399
    mul-int v2, p0, p1

    .line 400
    .local v2, "requestedArea":I
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 401
    .local v4, "scale":D
    const/16 v3, 0x3100

    if-le v2, v3, :cond_0

    .line 402
    int-to-double v6, v2

    const-wide v8, 0x40c8800000000000L    # 12544.0

    div-double v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 404
    :cond_0
    int-to-double v6, p0

    mul-double/2addr v6, v4

    double-to-int v1, v6

    .line 405
    .local v1, "newWidth":I
    int-to-double v6, p1

    mul-double/2addr v6, v4

    double-to-int v0, v6

    .line 408
    .local v0, "newHeight":I
    if-nez v1, :cond_1

    .line 409
    const/4 v1, 0x1

    .line 411
    :cond_1
    if-nez v0, :cond_2

    .line 412
    const/4 v0, 0x1

    .line 415
    :cond_2
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object v3
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;
    .locals 20
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "Bitmap can\'t be null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 144
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v4, v17, v18

    .line 145
    .local v4, "bitmapArea":I
    const/4 v13, 0x0

    .line 146
    .local v13, "shouldRecycle":Z
    const/16 v17, 0x3100

    move/from16 v0, v17

    if-le v4, v0, :cond_1

    .line 147
    const/4 v13, 0x1

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    move-result-object v9

    .line 149
    .local v9, "optimalSize":Landroid/util/Size;
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v17

    .line 150
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v18

    const/16 v19, 0x1

    .line 149
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 153
    .end local v9    # "optimalSize":Landroid/util/Size;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v17

    .line 155
    new-instance v18, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>()V

    .line 153
    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/graphics/palette/Palette$Builder;->setQuantizer(Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v17

    .line 156
    const/16 v18, 0x5

    .line 153
    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/graphics/palette/Palette$Builder;->clearFilters()Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v17

    .line 158
    const/16 v18, 0x3100

    .line 153
    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/graphics/palette/Palette$Builder;->resizeBitmapArea(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v10

    .line 162
    .local v10, "palette":Lcom/android/internal/graphics/palette/Palette;
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    .local v14, "swatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3d4ccccd    # 0.05f

    mul-float v8, v17, v18

    .line 164
    .local v8, "minColorArea":F
    new-instance v17, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY$1;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY$1;-><init>(F)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    sget-object v17, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;->$INST$0:Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;

    .line 165
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 167
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 168
    .local v15, "swatchesSize":I
    const/4 v11, 0x0

    .local v11, "primary":Landroid/graphics/Color;
    const/4 v12, 0x0

    .local v12, "secondary":Landroid/graphics/Color;
    const/16 v16, 0x0

    .line 171
    .local v16, "tertiary":Landroid/graphics/Color;
    const/4 v7, 0x0

    .end local v11    # "primary":Landroid/graphics/Color;
    .end local v12    # "secondary":Landroid/graphics/Color;
    .end local v16    # "tertiary":Landroid/graphics/Color;
    .local v7, "i":I
    :goto_0
    if-ge v7, v15, :cond_2

    .line 172
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v5

    .line 173
    .local v5, "color":Landroid/graphics/Color;
    packed-switch v7, :pswitch_data_0

    .line 189
    .end local v5    # "color":Landroid/graphics/Color;
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperColors;->calculateDarkHints(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 191
    .local v6, "hints":I
    if-eqz v13, :cond_3

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    :cond_3
    new-instance v17, Landroid/app/WallpaperColors;

    or-int/lit8 v18, v6, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v11, v12, v1, v2}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    return-object v17

    .line 175
    .end local v6    # "hints":I
    .restart local v5    # "color":Landroid/graphics/Color;
    :pswitch_0
    move-object v11, v5

    .line 171
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 178
    :pswitch_1
    move-object v12, v5

    .line 179
    .local v12, "secondary":Landroid/graphics/Color;
    goto :goto_1

    .line 181
    .end local v12    # "secondary":Landroid/graphics/Color;
    :pswitch_2
    move-object/from16 v16, v5

    .line 182
    .local v16, "tertiary":Landroid/graphics/Color;
    goto :goto_1

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;
    .locals 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v9, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 111
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 114
    .local v3, "height":I
    if-lez v5, :cond_0

    if-gtz v3, :cond_1

    .line 115
    :cond_0
    const/16 v5, 0x70

    .line 116
    const/16 v3, 0x70

    .line 119
    :cond_1
    invoke-static {v5, v3}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    move-result-object v4

    .line 120
    .local v4, "optimalSize":Landroid/util/Size;
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 121
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 120
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 123
    .local v1, "bmpCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p0, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-static {v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 127
    .local v2, "colors":Landroid/app/WallpaperColors;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    return-object v2
.end method

.method static synthetic lambda$-android_app_WallpaperColors_6256(FLcom/android/internal/graphics/palette/Palette$Swatch;)Z
    .locals 1
    .param p0, "minColorArea"    # F
    .param p1, "s"    # Lcom/android/internal/graphics/palette/Palette$Swatch;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-android_app_WallpaperColors_6318(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I
    .locals 2
    .param p0, "a"    # Lcom/android/internal/graphics/palette/Palette$Swatch;
    .param p1, "b"    # Lcom/android/internal/graphics/palette/Palette$Swatch;

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 317
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 318
    :cond_0
    return v1

    :cond_1
    move-object v0, p1

    .line 321
    check-cast v0, Landroid/app/WallpaperColors;

    .line 322
    .local v0, "other":Landroid/app/WallpaperColors;
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    iget v2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    iget v3, v0, Landroid/app/WallpaperColors;->mColorHints:I

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 322
    :cond_2
    return v1
.end method

.method public getColorHints()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return v0
.end method

.method public getMainColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()Landroid/graphics/Color;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    return-object v0
.end method

.method public getSecondaryColor()Landroid/graphics/Color;
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    goto :goto_0
.end method

.method public getTertiaryColor()Landroid/graphics/Color;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setColorHints(I)V
    .locals 0
    .param p1, "colorHints"    # I

    .prologue
    .line 348
    iput p1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    .line 349
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v0, "colors":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 422
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Color;

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[WallpaperColors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/WallpaperColors;->mColorHints:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v3

    .line 267
    .local v3, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 268
    .local v1, "count":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 270
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    .line 271
    .local v0, "color":Landroid/graphics/Color;
    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v0    # "color":Landroid/graphics/Color;
    :cond_0
    iget v4, p0, Landroid/app/WallpaperColors;->mColorHints:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    return-void
.end method
