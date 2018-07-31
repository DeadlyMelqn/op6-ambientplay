.class public Lcom/android/settingslib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field public static final UNIT_OF_STORAGE:[Ljava/lang/String;

.field public static final UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

.field static final WIFI_PIE_FOR_BADGING:[I

.field private static sPermissionControllerPackageName:Ljava/lang/String;

.field private static sServicesSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSharedSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    const v0, 0x10804c7

    .line 52
    const v1, 0x10804c8

    .line 53
    const v2, 0x10804c9

    .line 54
    const v3, 0x10804ca

    .line 55
    const v4, 0x10804cb

    .line 50
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->WIFI_PIE_FOR_BADGING:[I

    .line 418
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "%28?<%21[\u5409\u5343\u5146\u592a]%29\u6bd4\u7279"

    aput-object v1, v0, v5

    const-string/jumbo v1, "%28?<%21[\u5409\u5343\u5146\u592a]%29\u5b57\u8282"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u5409\u6bd4\u7279"

    aput-object v1, v0, v7

    const-string/jumbo v1, "\u5409\u5b57\u8282"

    aput-object v1, v0, v8

    const-string/jumbo v1, "\u5343\u6bd4\u7279"

    aput-object v1, v0, v9

    const-string/jumbo v1, "\u5343\u5b57\u8282"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u5146\u6bd4\u7279"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u5146\u5b57\u8282"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u592a\u6bd4\u7279"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u592a\u5b57\u8282"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    .line 419
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "b"

    aput-object v1, v0, v5

    const-string/jumbo v1, "B"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Gb"

    aput-object v1, v0, v7

    const-string/jumbo v1, "GB"

    aput-object v1, v0, v8

    const-string/jumbo v1, "Kb"

    aput-object v1, v0, v9

    const-string/jumbo v1, "KB"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Mb"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "MB"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Tb"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "TB"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyAlpha(FI)I
    .locals 4
    .param p0, "alpha"    # F
    .param p1, "inputColor"    # I

    .prologue
    .line 214
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    .line 215
    float-to-int v0, p0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 216
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 215
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static applyAlphaAttr(Landroid/content/Context;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "inputColor"    # I

    .prologue
    const/4 v3, 0x0

    .line 206
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 207
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 208
    .local v0, "alpha":F
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    invoke-static {v0, p2}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v2

    return v2
.end method

.method public static formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # D
    .param p3, "withSeconds"    # Z

    .prologue
    .line 365
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 366
    .local v7, "sb":Landroid/text/SpannableStringBuilder;
    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double v10, p1, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 367
    .local v8, "seconds":I
    if-nez p3, :cond_0

    .line 369
    add-int/lit8 v8, v8, 0x1e

    .line 372
    :cond_0
    const/4 v0, 0x0

    .local v0, "days":I
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v6, 0x0

    .line 373
    .local v6, "minutes":I
    const v10, 0x15180

    if-lt v8, v10, :cond_1

    .line 374
    const v10, 0x15180

    div-int v0, v8, v10

    .line 375
    const v10, 0x15180

    mul-int/2addr v10, v0

    sub-int/2addr v8, v10

    .line 377
    :cond_1
    const/16 v10, 0xe10

    if-lt v8, v10, :cond_2

    .line 378
    div-int/lit16 v1, v8, 0xe10

    .line 379
    mul-int/lit16 v10, v1, 0xe10

    sub-int/2addr v8, v10

    .line 381
    :cond_2
    const/16 v10, 0x3c

    if-lt v8, v10, :cond_3

    .line 382
    div-int/lit8 v6, v8, 0x3c

    .line 383
    mul-int/lit8 v10, v6, 0x3c

    sub-int/2addr v8, v10

    .line 386
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 387
    .local v5, "measureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/util/Measure;>;"
    if-lez v0, :cond_4

    .line 388
    new-instance v10, Landroid/icu/util/Measure;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_4
    if-lez v1, :cond_5

    .line 391
    new-instance v10, Landroid/icu/util/Measure;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_5
    if-lez v6, :cond_6

    .line 394
    new-instance v10, Landroid/icu/util/Measure;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_6
    if-eqz p3, :cond_7

    if-lez v8, :cond_7

    .line 397
    new-instance v10, Landroid/icu/util/Measure;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_8

    .line 401
    new-instance v11, Landroid/icu/util/Measure;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz p3, :cond_a

    sget-object v10, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    :goto_0
    invoke-direct {v11, v12, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/icu/util/Measure;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/icu/util/Measure;

    .line 405
    .local v3, "measureArray":[Landroid/icu/util/Measure;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v2, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 406
    .local v2, "locale":Ljava/util/Locale;
    sget-object v10, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v2, v10}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v4

    .line 407
    .local v4, "measureFormat":Landroid/icu/text/MeasureFormat;
    invoke-virtual {v4, v3}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 409
    array-length v10, v3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    sget-object v10, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-virtual {v11}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/icu/util/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 411
    new-instance v10, Landroid/text/style/TtsSpan$MeasureBuilder;

    invoke-direct {v10}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    int-to-long v12, v6

    invoke-virtual {v10, v12, v13}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v10

    const-string/jumbo v11, "minute"

    invoke-virtual {v10, v11}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v9

    .line 412
    .local v9, "ttsSpan":Landroid/text/style/TtsSpan;
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0x21

    invoke-virtual {v7, v9, v11, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 415
    .end local v9    # "ttsSpan":Landroid/text/style/TtsSpan;
    :cond_9
    return-object v7

    .line 401
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "measureArray":[Landroid/icu/util/Measure;
    .end local v4    # "measureFormat":Landroid/icu/text/MeasureFormat;
    :cond_a
    sget-object v10, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    goto :goto_0
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "size"    # J

    .prologue
    .line 428
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "sizeString":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-le v5, v6, :cond_0

    .line 430
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 431
    .local v1, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v5, "zh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 435
    const-string/jumbo v5, "CN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 434
    if-eqz v5, :cond_0

    .line 436
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 437
    sget-object v5, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    aget-object v5, v5, v2

    sget-object v6, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "defaultLocale":Ljava/util/Locale;
    .end local v2    # "i":I
    .end local v3    # "language":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public static formatPercentage(D)Ljava/lang/String;
    .locals 2
    .param p0, "percentage"    # D

    .prologue
    .line 145
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(DZ)Ljava/lang/String;
    .locals 2
    .param p0, "percentage"    # D
    .param p2, "round"    # Z

    .prologue
    .line 129
    if-eqz p2, :cond_0

    double-to-float v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 130
    .local v0, "localPercentage":I
    :goto_0
    invoke-static {v0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 129
    .end local v0    # "localPercentage":I
    :cond_0
    double-to-int v0, p0

    .restart local v0    # "localPercentage":I
    goto :goto_0
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4
    .param p0, "percentage"    # I

    .prologue
    .line 140
    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "amount"    # J
    .param p2, "total"    # J

    .prologue
    .line 135
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBadgedWifiIcon(Landroid/content/Context;II)Landroid/graphics/drawable/LayerDrawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I
    .param p2, "badge"    # I

    .prologue
    .line 309
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 310
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 311
    sget-object v2, Lcom/android/settingslib/Utils;->WIFI_PIE_FOR_BADGING:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 312
    invoke-static {p2}, Lcom/android/settingslib/Utils;->getWifiBadgeResource(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 309
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 4
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 149
    const-string/jumbo v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "level":I
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, "scale":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 155
    const-string/jumbo v3, "status"

    .line 156
    const/4 v4, 0x1

    .line 155
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "status":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 161
    const-string/jumbo v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "level":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_0

    .line 163
    sget v3, Lcom/android/settingslib/R$string;->battery_info_status_full:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .end local v0    # "level":I
    .local v2, "statusString":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 165
    .end local v2    # "statusString":Ljava/lang/String;
    .restart local v0    # "level":I
    :cond_0
    sget v3, Lcom/android/settingslib/R$string;->battery_info_status_charging:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v0    # "level":I
    .end local v2    # "statusString":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 169
    sget v3, Lcom/android/settingslib/R$string;->battery_info_status_discharging:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v2    # "statusString":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 171
    sget v3, Lcom/android/settingslib/R$string;->battery_info_status_not_charging:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v2    # "statusString":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 173
    sget v3, Lcom/android/settingslib/R$string;->battery_info_status_full:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v2    # "statusString":Ljava/lang/String;
    :cond_4
    sget v3, Lcom/android/settingslib/R$string;->battery_info_status_unknown:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "statusString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const v0, 0x1010435

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorAttr(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 221
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 222
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 223
    .local v0, "colorAccent":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    return v0
.end method

.method public static getColorError(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const v0, 0x1010543

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getDefaultColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 196
    .local v0, "list":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    return v1
.end method

.method public static getDefaultStorageManagerDaysToRetain(Landroid/content/res/Resources;)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 333
    const/16 v0, 0x5a

    .line 337
    .local v0, "defaultDays":I
    const v2, 0x10e008e

    .line 336
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 345
    :goto_0
    return v0

    .line 342
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method public static getDisabled(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputColor"    # I

    .prologue
    .line 201
    const v0, 0x1010033

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->applyAlphaAttr(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 235
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 236
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 237
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    return-object v0
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 268
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    return-object v0

    .line 271
    :cond_0
    return-object v1
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 276
    :try_start_0
    const-string/jumbo v2, "android"

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 277
    .local v1, "sys":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 278
    .end local v1    # "sys":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 7
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v6, v3

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    .line 68
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v6, v5

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 69
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v6, v1

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 71
    .local v0, "bluetoothAvailable":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 72
    sget v6, Lcom/android/settingslib/R$string;->tether_settings_title_all:I

    return v6

    .line 67
    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "usbAvailable":Z
    goto :goto_0

    .line 68
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "wifiAvailable":Z
    goto :goto_1

    .line 69
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bluetoothAvailable":Z
    goto :goto_2

    .line 73
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 74
    sget v6, Lcom/android/settingslib/R$string;->tether_settings_title_all:I

    return v6

    .line 75
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 76
    sget v6, Lcom/android/settingslib/R$string;->tether_settings_title_all:I

    return v6

    .line 77
    :cond_5
    if-eqz v4, :cond_6

    .line 78
    sget v6, Lcom/android/settingslib/R$string;->tether_settings_title_wifi:I

    return v6

    .line 79
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 80
    sget v6, Lcom/android/settingslib/R$string;->tether_settings_title_usb_bluetooth:I

    return v6

    .line 81
    :cond_7
    if-eqz v2, :cond_8

    .line 82
    sget v6, Lcom/android/settingslib/R$string;->tether_settings_title_usb:I

    return v6

    .line 84
    :cond_8
    sget v6, Lcom/android/settingslib/R$string;->tether_settings_title_bluetooth:I

    return v6
.end method

.method public static getThemeAttr(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 228
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 229
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 230
    .local v1, "theme":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    return v1
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x0

    .line 111
    invoke-static {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getSizeForList(Landroid/content/Context;)I

    move-result v2

    .line 112
    .local v2, "iconSize":I
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const v3, 0x1080334

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    return-object v0

    .line 117
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 118
    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 120
    new-instance v3, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {v3, v2}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {v3, v1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v3

    return-object v3

    .line 123
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v3, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {v3, v2}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    .line 124
    iget v4, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v5}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v3

    return-object v3
.end method

.method public static getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    sget v1, Lcom/android/settingslib/R$string;->managed_user_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    :cond_0
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    sget v1, Lcom/android/settingslib/R$string;->user_guest:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_2
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 100
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->running_process_item_user_label:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 101
    :cond_4
    if-nez p1, :cond_3

    .line 102
    sget v1, Lcom/android/settingslib/R$string;->unknown:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_1
.end method

.method private static getWifiBadgeResource(I)I
    .locals 3
    .param p0, "badge"    # I

    .prologue
    .line 317
    sparse-switch p0, :sswitch_data_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No badge resource found for badge value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :sswitch_0
    const/4 v0, -0x1

    return v0

    .line 321
    :sswitch_1
    const v0, 0x10804cf

    return v0

    .line 323
    :sswitch_2
    const v0, 0x10804cd

    return v0

    .line 325
    :sswitch_3
    const v0, 0x10804cc

    return v0

    .line 317
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method public static isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 289
    const v1, 0x104013d

    .line 288
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "deviceProvisioningPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 246
    sget-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v1, :cond_0

    .line 247
    new-array v1, v0, [Landroid/content/pm/Signature;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v2

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 249
    :cond_0
    sget-object v1, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 250
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 252
    :cond_1
    sget-object v1, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 253
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 255
    :cond_2
    sget-object v1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 256
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 258
    :cond_3
    sget-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    if-eqz v1, :cond_4

    .line 259
    sget-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    invoke-static {p2}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 258
    if-nez v1, :cond_5

    .line 260
    :cond_4
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 258
    if-nez v1, :cond_5

    .line 261
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 258
    if-nez v1, :cond_5

    .line 262
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 258
    if-nez v1, :cond_5

    .line 263
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.printspooler"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 258
    if-nez v1, :cond_5

    .line 264
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    .line 258
    :cond_5
    return v0
.end method
