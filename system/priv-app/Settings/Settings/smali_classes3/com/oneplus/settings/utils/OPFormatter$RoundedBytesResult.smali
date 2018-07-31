.class Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "OPFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/utils/OPFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoundedBytesResult"
.end annotation


# instance fields
.field public final fractionDigits:I

.field public final roundedBytes:J

.field public final units:Landroid/icu/util/MeasureUnit;

.field public final value:F


# direct methods
.method private constructor <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "units"    # Landroid/icu/util/MeasureUnit;
    .param p3, "fractionDigits"    # I
    .param p4, "roundedBytes"    # J

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->value:F

    .line 229
    iput-object p2, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 230
    iput p3, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->fractionDigits:I

    .line 231
    iput-wide p4, p0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->roundedBytes:J

    .line 232
    return-void
.end method

.method static roundBytes(JI)Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;
    .locals 14
    .param p0, "sizeBytes"    # J
    .param p2, "flags"    # I

    .prologue
    .line 239
    const-wide/16 v10, 0x0

    cmp-long v0, p0, v10

    if-gez v0, :cond_8

    const/4 v6, 0x1

    .line 240
    .local v6, "isNegative":Z
    :goto_0
    if-eqz v6, :cond_0

    neg-long p0, p0

    .end local p0    # "sizeBytes":J
    :cond_0
    long-to-float v1, p0

    .line 241
    .local v1, "result":F
    sget-object v2, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    .line 242
    .local v2, "units":Landroid/icu/util/MeasureUnit;
    const-wide/16 v8, 0x1

    .line 243
    .local v8, "mult":J
    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 244
    sget-object v2, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    .line 245
    const-wide/16 v8, 0x3e8

    .line 246
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    .line 248
    :cond_1
    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 249
    sget-object v2, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    .line 250
    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 251
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    .line 253
    :cond_2
    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 254
    sget-object v2, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    .line 255
    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 256
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    .line 258
    :cond_3
    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    .line 259
    sget-object v2, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    .line 260
    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 261
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    .line 263
    :cond_4
    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    .line 264
    invoke-static {}, Lcom/oneplus/settings/utils/OPFormatter;->-get0()Landroid/icu/util/MeasureUnit;

    move-result-object v2

    .line 265
    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 266
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    .line 273
    :cond_5
    const-wide/16 v10, 0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_6

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_9

    .line 274
    :cond_6
    const/4 v7, 0x1

    .line 275
    .local v7, "roundFactor":I
    const/4 v3, 0x0

    .line 297
    .local v3, "roundDigits":I
    :goto_1
    if-eqz v6, :cond_7

    .line 298
    neg-float v1, v1

    .line 304
    :cond_7
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_e

    const-wide/16 v4, 0x0

    .line 307
    .local v4, "roundedBytes":J
    :goto_2
    new-instance v0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object v0

    .line 239
    .end local v1    # "result":F
    .end local v2    # "units":Landroid/icu/util/MeasureUnit;
    .end local v3    # "roundDigits":I
    .end local v4    # "roundedBytes":J
    .end local v6    # "isNegative":Z
    .end local v7    # "roundFactor":I
    .end local v8    # "mult":J
    .restart local p0    # "sizeBytes":J
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "isNegative":Z
    goto :goto_0

    .line 276
    .end local p0    # "sizeBytes":J
    .restart local v1    # "result":F
    .restart local v2    # "units":Landroid/icu/util/MeasureUnit;
    .restart local v8    # "mult":J
    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_a

    .line 277
    const/16 v7, 0x64

    .line 278
    .restart local v7    # "roundFactor":I
    const/4 v3, 0x2

    .restart local v3    # "roundDigits":I
    goto :goto_1

    .line 279
    .end local v3    # "roundDigits":I
    .end local v7    # "roundFactor":I
    :cond_a
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_c

    .line 280
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_b

    .line 281
    const/16 v7, 0xa

    .line 282
    .restart local v7    # "roundFactor":I
    const/4 v3, 0x1

    .restart local v3    # "roundDigits":I
    goto :goto_1

    .line 284
    .end local v3    # "roundDigits":I
    .end local v7    # "roundFactor":I
    :cond_b
    const/16 v7, 0x64

    .line 285
    .restart local v7    # "roundFactor":I
    const/4 v3, 0x2

    .restart local v3    # "roundDigits":I
    goto :goto_1

    .line 288
    .end local v3    # "roundDigits":I
    .end local v7    # "roundFactor":I
    :cond_c
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_d

    .line 289
    const/4 v7, 0x1

    .line 290
    .restart local v7    # "roundFactor":I
    const/4 v3, 0x0

    .restart local v3    # "roundDigits":I
    goto :goto_1

    .line 292
    .end local v3    # "roundDigits":I
    .end local v7    # "roundFactor":I
    :cond_d
    const/16 v7, 0x64

    .line 293
    .restart local v7    # "roundFactor":I
    const/4 v3, 0x2

    .restart local v3    # "roundDigits":I
    goto :goto_1

    .line 305
    :cond_e
    int-to-float v0, v7

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v10, v0

    mul-long/2addr v10, v8

    int-to-long v12, v7

    div-long v4, v10, v12

    .restart local v4    # "roundedBytes":J
    goto :goto_2
.end method
