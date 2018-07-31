.class public Lcom/android/internal/util/NotificationColorUtil;
.super Ljava/lang/Object;
.source "NotificationColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationColorUtil"

.field private static sInstance:Lcom/android/internal/util/NotificationColorUtil;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mGrayscaleBitmapCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGrayscaleIconMaxSize:I

.field private final mImageUtils:Lcom/android/internal/util/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/util/ImageUtils;

    invoke-direct {v0}, Lcom/android/internal/util/ImageUtils;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    const v1, 0x1050005

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    .line 77
    return-void
.end method

.method public static calculateContrast(II)D
    .locals 2
    .param p0, "foregroundColor"    # I
    .param p1, "backgroundColor"    # I

    .prologue
    .line 596
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateLuminance(I)D
    .locals 2
    .param p0, "backgroundColor"    # I

    .prologue
    .line 591
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static changeColorLightness(II)I
    .locals 8
    .param p0, "baseColor"    # I
    .param p1, "amount"    # I

    .prologue
    const/4 v7, 0x0

    .line 508
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v6

    .line 509
    .local v6, "result":[D
    invoke-static {p0, v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 510
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    aget-wide v2, v6, v7

    int-to-double v4, p1

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    aput-wide v0, v6, v7

    .line 511
    aget-wide v0, v6, v7

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 250
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    move-object v10, p0

    .line 251
    check-cast v10, Landroid/text/Spanned;

    .line 252
    .local v10, "ss":Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v10, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    .line 253
    .local v9, "spans":[Ljava/lang/Object;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-interface {v10}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 254
    .local v6, "builder":Landroid/text/SpannableStringBuilder;
    array-length v12, v9

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v8, v9, v11

    .line 255
    .local v8, "span":Ljava/lang/Object;
    move-object v0, v8

    .line 256
    .local v0, "resultSpan":Ljava/lang/Object;
    instance-of v1, v8, Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_0

    move-object v1, v8

    .line 257
    check-cast v1, Landroid/text/style/CharacterStyle;

    invoke-virtual {v1}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v0

    .line 259
    :cond_0
    instance-of v1, v0, Landroid/text/style/TextAppearanceSpan;

    if-eqz v1, :cond_3

    move-object v7, v0

    .line 260
    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    .line 261
    .local v7, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 262
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 263
    .end local v0    # "resultSpan":Ljava/lang/Object;
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    .line 265
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    .line 267
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 262
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 275
    .end local v7    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .restart local v0    # "resultSpan":Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 276
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 275
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 254
    :cond_2
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0

    .line 269
    :cond_3
    instance-of v1, v0, Landroid/text/style/ForegroundColorSpan;

    if-nez v1, :cond_2

    .line 270
    instance-of v1, v0, Landroid/text/style/BackgroundColorSpan;

    .line 269
    if-nez v1, :cond_2

    .line 273
    move-object v0, v8

    goto :goto_1

    .line 278
    .end local v0    # "resultSpan":Ljava/lang/Object;
    .end local v8    # "span":Ljava/lang/Object;
    :cond_4
    return-object v6

    .line 280
    .end local v6    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v9    # "spans":[Ljava/lang/Object;
    .end local v10    # "ss":Landroid/text/Spanned;
    :cond_5
    return-object p0
.end method

.method public static compositeColors(II)I
    .locals 1
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .prologue
    .line 607
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result v0

    return v0
.end method

.method private static contrastChange(III)Ljava/lang/String;
    .locals 4
    .param p0, "colorOld"    # I
    .param p1, "colorNew"    # I
    .param p2, "bg"    # I

    .prologue
    .line 436
    const-string/jumbo v0, "from %.2f:1 to %.2f:1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 437
    invoke-static {p0, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 438
    invoke-static {p1, p2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 436
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ensureLargeTextContrast(IIZ)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z

    .prologue
    const/4 v2, 0x1

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 410
    if-eqz p2, :cond_0

    .line 411
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    .line 410
    :goto_0
    return v0

    .line 412
    :cond_0
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    goto :goto_0
.end method

.method public static ensureTextBackgroundColor(III)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "textColor"    # I
    .param p2, "hintColor"    # I

    .prologue
    const/4 v2, 0x0

    .line 431
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p0, p2, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result p0

    .line 432
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method private static ensureTextContrast(IIZ)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "isBgDarker"    # Z

    .prologue
    const/4 v2, 0x1

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    .line 422
    if-eqz p2, :cond_0

    .line 423
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    .line 422
    :goto_0
    return v0

    .line 424
    :cond_0
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v0

    goto :goto_0
.end method

.method public static ensureTextContrastOnBlack(I)I
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 400
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    const/high16 v2, -0x1000000

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    return v0
.end method

.method public static findAlphaToMeetContrast(IID)I
    .locals 12
    .param p0, "color"    # I
    .param p1, "backgroundColor"    # I
    .param p2, "minRatio"    # D

    .prologue
    .line 337
    move v3, p0

    .line 338
    .local v3, "fg":I
    move v2, p1

    .line 339
    .local v2, "bg":I
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p2

    if-ltz v10, :cond_0

    .line 340
    return p0

    .line 342
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    .line 343
    .local v9, "startAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 344
    .local v8, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 345
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 347
    .local v1, "b":I
    move v7, v9

    .local v7, "low":I
    const/16 v5, 0xff

    .line 348
    .local v5, "high":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v10, 0xf

    if-ge v6, v10, :cond_2

    sub-int v10, v5, v7

    if-lez v10, :cond_2

    .line 349
    add-int v10, v7, v5

    div-int/lit8 v0, v10, 0x2

    .line 350
    .local v0, "alpha":I
    invoke-static {v0, v8, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 351
    invoke-static {v3, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p2

    if-lez v10, :cond_1

    .line 352
    move v5, v0

    .line 348
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 354
    :cond_1
    move v7, v0

    goto :goto_1

    .line 357
    .end local v0    # "alpha":I
    :cond_2
    invoke-static {v5, v8, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    return v10
.end method

.method public static findContrastColor(IIZD)I
    .locals 21
    .param p0, "color"    # I
    .param p1, "other"    # I
    .param p2, "findFg"    # Z
    .param p3, "minRatio"    # D

    .prologue
    .line 301
    if-eqz p2, :cond_0

    move/from16 v15, p0

    .line 302
    .local v15, "fg":I
    :goto_0
    if-eqz p2, :cond_1

    move/from16 v14, p1

    .line 303
    .local v14, "bg":I
    :goto_1
    invoke-static {v15, v14}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p3

    if-ltz v10, :cond_2

    .line 304
    return p0

    .line 301
    .end local v14    # "bg":I
    .end local v15    # "fg":I
    :cond_0
    move/from16 v15, p1

    .restart local v15    # "fg":I
    goto :goto_0

    .line 302
    :cond_1
    move/from16 v14, p0

    .restart local v14    # "bg":I
    goto :goto_1

    .line 307
    :cond_2
    const/4 v10, 0x3

    new-array v0, v10, [D

    move-object/from16 v19, v0

    .line 308
    .local v19, "lab":[D
    if-eqz p2, :cond_3

    move v10, v15

    :goto_2
    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 310
    const-wide/16 v8, 0x0

    .local v8, "low":D
    const/4 v10, 0x0

    aget-wide v16, v19, v10

    .line 311
    .local v16, "high":D
    const/4 v10, 0x1

    aget-wide v4, v19, v10

    .local v4, "a":D
    const/4 v10, 0x2

    aget-wide v6, v19, v10

    .line 312
    .local v6, "b":D
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    const/16 v10, 0xf

    move/from16 v0, v18

    if-ge v0, v10, :cond_6

    sub-double v10, v16, v8

    const-wide v12, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    .line 313
    add-double v10, v8, v16

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v2, v10, v12

    .line 314
    .local v2, "l":D
    if-eqz p2, :cond_4

    .line 315
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v15

    .line 319
    :goto_4
    invoke-static {v15, v14}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v10, v10, p3

    if-lez v10, :cond_5

    .line 320
    move-wide v8, v2

    .line 312
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .end local v2    # "l":D
    .end local v4    # "a":D
    .end local v6    # "b":D
    .end local v8    # "low":D
    .end local v16    # "high":D
    .end local v18    # "i":I
    :cond_3
    move v10, v14

    .line 308
    goto :goto_2

    .line 317
    .restart local v2    # "l":D
    .restart local v4    # "a":D
    .restart local v6    # "b":D
    .restart local v8    # "low":D
    .restart local v16    # "high":D
    .restart local v18    # "i":I
    :cond_4
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v14

    goto :goto_4

    .line 322
    :cond_5
    move-wide/from16 v16, v2

    goto :goto_5

    .end local v2    # "l":D
    :cond_6
    move-wide v10, v4

    move-wide v12, v6

    .line 325
    invoke-static/range {v8 .. v13}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v10

    return v10
.end method

.method public static findContrastColorAgainstDark(IIZD)I
    .locals 13
    .param p0, "color"    # I
    .param p1, "other"    # I
    .param p2, "findFg"    # Z
    .param p3, "minRatio"    # D

    .prologue
    .line 372
    if-eqz p2, :cond_0

    move v1, p0

    .line 373
    .local v1, "fg":I
    :goto_0
    if-eqz p2, :cond_1

    move v0, p1

    .line 374
    .local v0, "bg":I
    :goto_1
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v7, v8, p3

    if-ltz v7, :cond_2

    .line 375
    return p0

    .line 372
    .end local v0    # "bg":I
    .end local v1    # "fg":I
    :cond_0
    move v1, p1

    .restart local v1    # "fg":I
    goto :goto_0

    .line 373
    :cond_1
    move v0, p0

    .restart local v0    # "bg":I
    goto :goto_1

    .line 378
    :cond_2
    const/4 v7, 0x3

    new-array v3, v7, [F

    .line 379
    .local v3, "hsl":[F
    if-eqz p2, :cond_3

    move v7, v1

    :goto_2
    invoke-static {v7, v3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToHSL(I[F)V

    .line 381
    const/4 v7, 0x2

    aget v6, v3, v7

    .local v6, "low":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 382
    .local v2, "high":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/16 v7, 0xf

    if-ge v4, v7, :cond_6

    sub-float v7, v2, v6

    float-to-double v8, v7

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v7, v8, v10

    if-lez v7, :cond_6

    .line 383
    add-float v7, v6, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 384
    .local v5, "l":F
    const/4 v7, 0x2

    aput v5, v3, v7

    .line 385
    if-eqz p2, :cond_4

    .line 386
    invoke-static {v3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v1

    .line 390
    :goto_4
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateContrast(II)D

    move-result-wide v8

    cmpl-double v7, v8, p3

    if-lez v7, :cond_5

    .line 391
    move v2, v5

    .line 382
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v2    # "high":F
    .end local v4    # "i":I
    .end local v5    # "l":F
    .end local v6    # "low":F
    :cond_3
    move v7, v0

    .line 379
    goto :goto_2

    .line 388
    .restart local v2    # "high":F
    .restart local v4    # "i":I
    .restart local v5    # "l":F
    .restart local v6    # "low":F
    :cond_4
    invoke-static {v3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->HSLToColor([F)I

    move-result v0

    goto :goto_4

    .line 393
    :cond_5
    move v6, v5

    goto :goto_5

    .line 396
    .end local v5    # "l":F
    :cond_6
    if-eqz p2, :cond_7

    .end local v1    # "fg":I
    :goto_6
    return v1

    .restart local v1    # "fg":I
    :cond_7
    move v1, v0

    goto :goto_6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v1, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/internal/util/NotificationColorUtil;

    invoke-direct {v0, p0}, Lcom/android/internal/util/NotificationColorUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;

    .line 70
    :cond_0
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil;->sInstance:Lcom/android/internal/util/NotificationColorUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getShiftedColor(II)I
    .locals 8
    .param p0, "color"    # I
    .param p1, "amount"    # I

    .prologue
    const/4 v7, 0x0

    .line 572
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v6

    .line 573
    .local v6, "result":[D
    invoke-static {p0, v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToLAB(I[D)V

    .line 574
    aget-wide v0, v6, v7

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 575
    const-wide/16 v0, 0x0

    aget-wide v2, v6, v7

    int-to-double v4, p1

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    aput-wide v0, v6, v7

    .line 579
    :goto_0
    aget-wide v0, v6, v7

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    const/4 v4, 0x2

    aget-wide v4, v6, v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToColor(DDD)I

    move-result v0

    return v0

    .line 577
    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    aget-wide v2, v6, v7

    int-to-double v4, p1

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    aput-wide v0, v6, v7

    goto :goto_0
.end method

.method public static isColorLight(I)Z
    .locals 4
    .param p0, "backgroundColor"    # I

    .prologue
    .line 611
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processColor(I)I
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 284
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 285
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    .line 286
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    .line 287
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    .line 284
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;
    .locals 10
    .param p1, "span"    # Landroid/text/style/TextAppearanceSpan;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 219
    .local v7, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v7, :cond_3

    .line 220
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v8

    .line 221
    .local v8, "colors":[I
    const/4 v6, 0x0

    .line 222
    .local v6, "changed":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_2

    .line 223
    aget v0, v8, v9

    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    if-nez v6, :cond_0

    .line 228
    array-length v0, v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 230
    :cond_0
    aget v0, v8, v9

    invoke-direct {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    move-result v0

    aput v0, v8, v9

    .line 231
    const/4 v6, 0x1

    .line 222
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 234
    :cond_2
    if-eqz v6, :cond_3

    .line 235
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 236
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v3

    .line 237
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v5

    invoke-direct {v4, v5, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 238
    invoke-virtual {p1}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 235
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v0

    .line 241
    .end local v6    # "changed":Z
    .end local v8    # "colors":[I
    .end local v9    # "i":I
    :cond_3
    return-object p1
.end method

.method public static resolveActionBarColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I

    .prologue
    .line 556
    if-nez p1, :cond_0

    .line 557
    const v0, 0x10600e7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 559
    :cond_0
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->getShiftedColor(II)I

    move-result v0

    return v0
.end method

.method public static resolveAmbientColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I

    .prologue
    .line 515
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    .line 517
    .local v1, "resolvedColor":I
    move v0, v1

    .line 518
    .local v0, "color":I
    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrastOnBlack(I)I

    move-result v0

    .line 530
    return v0
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 446
    const v0, 0x10600ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 448
    :cond_0
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I
    .param p2, "backgroundColor"    # I

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 460
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v0

    return v0
.end method

.method public static resolveContrastColor(Landroid/content/Context;IIZ)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "isDark"    # Z

    .prologue
    .line 476
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil;->resolveColor(Landroid/content/Context;I)I

    move-result v2

    .line 479
    .local v2, "resolvedColor":I
    const v3, 0x10600e7

    .line 478
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 481
    .local v0, "actionBg":I
    move v1, v2

    .line 482
    .local v1, "color":I
    invoke-static {v2, v0, p3}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v1

    .line 483
    invoke-static {v1, p2, p3}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    .line 496
    return v1
.end method

.method public static resolvePrimaryColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I

    .prologue
    .line 534
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    move-result v0

    .line 535
    .local v0, "useDark":Z
    if-eqz v0, :cond_0

    .line 537
    const v1, 0x10600ed

    .line 536
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 540
    :cond_0
    const v1, 0x10600ec

    .line 539
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static resolveSecondaryColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backgroundColor"    # I

    .prologue
    .line 545
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->shouldUseDark(I)Z

    move-result v0

    .line 546
    .local v0, "useDark":Z
    if-eqz v0, :cond_0

    .line 548
    const v1, 0x10600f0

    .line 547
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1

    .line 551
    :cond_0
    const v1, 0x10600ef

    .line 550
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static satisfiesTextContrast(II)Z
    .locals 4
    .param p0, "backgroundColor"    # I
    .param p1, "foregroundColor"    # I

    .prologue
    .line 600
    invoke-static {p1, p0}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldUseDark(I)Z
    .locals 6
    .param p0, "backgroundColor"    # I

    .prologue
    .line 583
    if-nez p0, :cond_1

    const/4 v0, 0x1

    .line 584
    .local v0, "useDark":Z
    :goto_0
    if-nez v0, :cond_0

    .line 585
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 587
    :cond_0
    :goto_1
    return v0

    .line 583
    .end local v0    # "useDark":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "useDark":Z
    goto :goto_0

    .line 585
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 184
    instance-of v9, p1, Landroid/text/Spanned;

    if-eqz v9, :cond_5

    move-object v7, p1

    .line 185
    check-cast v7, Landroid/text/Spanned;

    .line 186
    .local v7, "ss":Landroid/text/Spanned;
    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Ljava/lang/Object;

    invoke-interface {v7, v8, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 187
    .local v6, "spans":[Ljava/lang/Object;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {v7}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 188
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    array-length v10, v6

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_4

    aget-object v5, v6, v9

    .line 189
    .local v5, "span":Ljava/lang/Object;
    move-object v4, v5

    .line 190
    .local v4, "resultSpan":Ljava/lang/Object;
    instance-of v8, v5, Landroid/text/style/CharacterStyle;

    if-eqz v8, :cond_0

    move-object v8, v5

    .line 191
    check-cast v8, Landroid/text/style/CharacterStyle;

    invoke-virtual {v8}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v4

    .line 193
    :cond_0
    instance-of v8, v4, Landroid/text/style/TextAppearanceSpan;

    if-eqz v8, :cond_2

    move-object v8, v5

    .line 195
    check-cast v8, Landroid/text/style/TextAppearanceSpan;

    .line 194
    invoke-direct {p0, v8}, Lcom/android/internal/util/NotificationColorUtil;->processTextAppearanceSpan(Landroid/text/style/TextAppearanceSpan;)Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    .line 196
    .local v3, "processedSpan":Landroid/text/style/TextAppearanceSpan;
    if-eq v3, v4, :cond_1

    .line 197
    move-object v4, v3

    .line 209
    .end local v3    # "processedSpan":Landroid/text/style/TextAppearanceSpan;
    :goto_1
    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 210
    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    .line 209
    invoke-virtual {v0, v4, v8, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 188
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 200
    .restart local v3    # "processedSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_1
    move-object v4, v5

    goto :goto_1

    .line 202
    .end local v3    # "processedSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_2
    instance-of v8, v4, Landroid/text/style/ForegroundColorSpan;

    if-eqz v8, :cond_3

    move-object v2, v4

    .line 203
    check-cast v2, Landroid/text/style/ForegroundColorSpan;

    .line 204
    .local v2, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    .line 205
    .local v1, "foregroundColor":I
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .end local v4    # "resultSpan":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/android/internal/util/NotificationColorUtil;->processColor(I)I

    move-result v8

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .restart local v4    # "resultSpan":Ljava/lang/Object;
    goto :goto_1

    .line 207
    .end local v1    # "foregroundColor":I
    .end local v2    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_3
    move-object v4, v5

    goto :goto_1

    .line 212
    .end local v4    # "resultSpan":Ljava/lang/Object;
    .end local v5    # "span":Ljava/lang/Object;
    :cond_4
    return-object v0

    .line 214
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v6    # "spans":[Ljava/lang/Object;
    .end local v7    # "ss":Landroid/text/Spanned;
    :cond_5
    return-object p1
.end method

.method public isGrayscaleIcon(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableResId"    # I

    .prologue
    const/4 v4, 0x0

    .line 164
    if-eqz p2, :cond_0

    .line 166
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v1, "NotificationColorUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Drawable not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v4

    .line 172
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    return v4
.end method

.method public isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v1, 0x0

    .line 143
    if-nez p2, :cond_0

    .line 144
    return v1

    .line 146
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    .line 150
    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isGrayscaleIcon(Landroid/graphics/Bitmap;)Z
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-gt v3, v4, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleIconMaxSize:I

    if-le v3, v4, :cond_1

    .line 90
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 93
    :cond_1
    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 95
    .local v0, "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    .line 96
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 97
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    :cond_2
    monitor-exit v4

    .line 103
    iget-object v4, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    monitor-enter v4

    .line 104
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mImageUtils:Lcom/android/internal/util/ImageUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/util/ImageUtils;->isGrayscale(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 109
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getGenerationId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .local v1, "generationId":I
    monitor-exit v4

    .line 111
    sget-object v4, Lcom/android/internal/util/NotificationColorUtil;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 112
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/util/NotificationColorUtil;->mGrayscaleBitmapCache:Ljava/util/WeakHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v4

    .line 114
    return v2

    .line 93
    .end local v0    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    .end local v1    # "generationId":I
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 103
    .restart local v0    # "cached":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 111
    .restart local v1    # "generationId":I
    .restart local v2    # "result":Z
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 126
    return v3

    .line 127
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 128
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 129
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/Bitmap;)Z

    move-result v3

    :cond_1
    return v3

    .line 130
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    instance-of v4, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_4

    move-object v0, p1

    .line 131
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 132
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    .line 133
    .local v2, "count":I
    if-lez v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    :cond_3
    return v3

    .line 134
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "count":I
    :cond_4
    instance-of v4, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v4, :cond_5

    .line 136
    const/4 v3, 0x1

    return v3

    .line 138
    :cond_5
    return v3
.end method
