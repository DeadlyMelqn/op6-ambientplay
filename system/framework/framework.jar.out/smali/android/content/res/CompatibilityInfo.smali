.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$1;,
        Landroid/content/res/CompatibilityInfo$2;,
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_COMPAT_RES:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field static final TAG:Ljava/lang/String; = "CompatibilityInfo"


# instance fields
.field private DEBUG:Z

.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 630
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    .line 629
    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 296
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 299
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 1
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Landroid/content/res/CompatibilityInfo;->DEBUG:Z

    .line 289
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 290
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 291
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 292
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 14
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-boolean v11, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v11, p0, Landroid/content/res/CompatibilityInfo;->DEBUG:Z

    .line 111
    const/4 v6, 0x0

    .line 113
    .local v6, "compatFlags":I
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x1a

    if-ge v11, v12, :cond_0

    .line 114
    const/16 v6, 0x10

    .line 116
    :cond_0
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v11, :cond_1

    iget v11, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v11, :cond_6

    .line 119
    :cond_1
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v11, :cond_d

    .line 120
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 122
    .local v9, "required":I
    :goto_0
    if-nez v9, :cond_2

    .line 123
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 125
    :cond_2
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v11, :cond_e

    .line 126
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 127
    .local v5, "compat":I
    :goto_1
    if-ge v5, v9, :cond_3

    .line 128
    move v5, v9

    .line 130
    :cond_3
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 132
    .local v8, "largest":I
    const/16 v11, 0x140

    if-le v9, v11, :cond_f

    .line 139
    or-int/lit8 v6, v6, 0x4

    .line 154
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v7

    .line 155
    .local v7, "density":I
    if-eqz v7, :cond_12

    .line 156
    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 157
    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v11, v11

    iget v12, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 158
    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v11, v12, v11

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 159
    or-int/lit8 v6, v6, 0x1

    .line 271
    .end local v5    # "compat":I
    .end local v8    # "largest":I
    .end local v9    # "required":I
    :goto_3
    iput v6, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 279
    iget-boolean v11, p0, Landroid/content/res/CompatibilityInfo;->DEBUG:Z

    if-eqz v11, :cond_5

    .line 280
    const-string/jumbo v11, "CompatibilityInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mCompatibilityFlags - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string/jumbo v11, "CompatibilityInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "applicationDensity - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string/jumbo v11, "CompatibilityInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "applicationScale - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_5
    return-void

    .line 117
    .end local v7    # "density":I
    :cond_6
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-nez v11, :cond_1

    .line 172
    const/4 v1, 0x2

    .line 178
    .local v1, "EXPANDABLE":I
    const/16 v2, 0x8

    .line 184
    .local v2, "LARGE_SCREENS":I
    const/16 v3, 0x20

    .line 186
    .local v3, "XLARGE_SCREENS":I
    const/4 v10, 0x0

    .line 190
    .local v10, "sizeInfo":I
    const/4 v4, 0x0

    .line 192
    .local v4, "anyResizeable":Z
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_7

    .line 193
    const/16 v10, 0x8

    .line 194
    const/4 v4, 0x1

    .line 195
    if-nez p4, :cond_7

    .line 199
    or-int/lit8 v10, v10, 0x22

    .line 202
    :cond_7
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_8

    .line 203
    const/4 v4, 0x1

    .line 204
    if-nez p4, :cond_8

    .line 205
    or-int/lit8 v10, v10, 0x22

    .line 208
    :cond_8
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x1000

    if-eqz v11, :cond_9

    .line 209
    const/4 v4, 0x1

    .line 210
    or-int/lit8 v10, v10, 0x2

    .line 213
    :cond_9
    if-eqz p4, :cond_a

    .line 218
    and-int/lit8 v10, v10, -0x3

    .line 221
    :cond_a
    or-int/lit8 v6, v6, 0x8

    .line 222
    and-int/lit8 v11, p2, 0xf

    packed-switch v11, :pswitch_data_0

    .line 241
    :cond_b
    :goto_4
    const/high16 v11, 0x10000000

    and-int v11, v11, p2

    if-eqz v11, :cond_16

    .line 242
    and-int/lit8 v11, v10, 0x2

    if-eqz v11, :cond_15

    .line 243
    and-int/lit8 v6, v6, -0x9

    .line 252
    :cond_c
    :goto_5
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v7

    .line 253
    .restart local v7    # "density":I
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x2000

    if-nez v11, :cond_17

    .line 254
    const/16 v11, 0xa0

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 255
    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v11, v11

    .line 256
    const/high16 v12, 0x43200000    # 160.0f

    .line 255
    div-float/2addr v11, v12

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 257
    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v11, v12, v11

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 258
    or-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 121
    .end local v1    # "EXPANDABLE":I
    .end local v2    # "LARGE_SCREENS":I
    .end local v3    # "XLARGE_SCREENS":I
    .end local v4    # "anyResizeable":Z
    .end local v7    # "density":I
    .end local v10    # "sizeInfo":I
    :cond_d
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .restart local v9    # "required":I
    goto/16 :goto_0

    .line 126
    :cond_e
    move v5, v9

    .restart local v5    # "compat":I
    goto/16 :goto_1

    .line 140
    .restart local v8    # "largest":I
    :cond_f
    if-eqz v8, :cond_10

    move/from16 v0, p3

    if-le v0, v8, :cond_10

    .line 144
    or-int/lit8 v6, v6, 0xa

    .line 140
    goto/16 :goto_2

    .line 145
    :cond_10
    move/from16 v0, p3

    if-lt v5, v0, :cond_11

    .line 148
    or-int/lit8 v6, v6, 0x4

    goto/16 :goto_2

    .line 149
    :cond_11
    if-eqz p4, :cond_4

    .line 152
    or-int/lit8 v6, v6, 0x8

    goto/16 :goto_2

    .line 162
    .restart local v7    # "density":I
    :cond_12
    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 163
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 164
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto/16 :goto_3

    .line 224
    .end local v5    # "compat":I
    .end local v7    # "density":I
    .end local v8    # "largest":I
    .end local v9    # "required":I
    .restart local v1    # "EXPANDABLE":I
    .restart local v2    # "LARGE_SCREENS":I
    .restart local v3    # "XLARGE_SCREENS":I
    .restart local v4    # "anyResizeable":Z
    .restart local v10    # "sizeInfo":I
    :pswitch_0
    and-int/lit8 v11, v10, 0x20

    if-eqz v11, :cond_13

    .line 225
    and-int/lit8 v6, v6, -0x9

    .line 227
    :cond_13
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_b

    .line 228
    or-int/lit8 v6, v6, 0x4

    goto :goto_4

    .line 232
    :pswitch_1
    and-int/lit8 v11, v10, 0x8

    if-eqz v11, :cond_14

    .line 233
    and-int/lit8 v6, v6, -0x9

    .line 235
    :cond_14
    iget v11, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_b

    .line 236
    or-int/lit8 v6, v6, 0x4

    goto :goto_4

    .line 244
    :cond_15
    if-nez v4, :cond_c

    .line 245
    or-int/lit8 v6, v6, 0x2

    goto :goto_5

    .line 248
    :cond_16
    and-int/lit8 v6, v6, -0x9

    .line 249
    or-int/lit8 v6, v6, 0x4

    goto :goto_5

    .line 259
    .restart local v7    # "density":I
    :cond_17
    if-eqz v7, :cond_18

    .line 260
    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 261
    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v11, v11

    iget v12, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 262
    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v11, v12, v11

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 263
    or-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 265
    :cond_18
    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 266
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 267
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto/16 :goto_3

    .line 222
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo;)V
    .locals 0
    .param p1, "-this0"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Landroid/content/res/CompatibilityInfo;->DEBUG:Z

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 647
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 14
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 525
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 526
    .local v11, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 528
    .local v1, "height":I
    if-ge v11, v1, :cond_3

    .line 529
    move v9, v11

    .line 530
    .local v9, "shortSize":I
    move v2, v1

    .line 535
    .local v2, "longSize":I
    :goto_0
    iget v12, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v13, 0x43a00000    # 320.0f

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 536
    .local v5, "newShortSize":I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 537
    .local v0, "aspect":F
    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_0

    .line 538
    const v0, 0x3fe3bbbc

    .line 540
    :cond_0
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 542
    .local v4, "newLongSize":I
    if-ge v11, v1, :cond_4

    .line 543
    move v6, v5

    .line 544
    .local v6, "newWidth":I
    move v3, v4

    .line 550
    .local v3, "newHeight":I
    :goto_1
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 551
    .local v10, "sw":F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 552
    .local v8, "sh":F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_5

    move v7, v10

    .line 553
    .local v7, "scale":F
    :goto_2
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v7, v12

    if-gez v12, :cond_1

    .line 554
    const/high16 v7, 0x3f800000    # 1.0f

    .line 557
    :cond_1
    if-eqz p1, :cond_2

    .line 558
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 559
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 562
    :cond_2
    return v7

    .line 532
    .end local v0    # "aspect":F
    .end local v2    # "longSize":I
    .end local v3    # "newHeight":I
    .end local v4    # "newLongSize":I
    .end local v5    # "newShortSize":I
    .end local v6    # "newWidth":I
    .end local v7    # "scale":F
    .end local v8    # "sh":F
    .end local v9    # "shortSize":I
    .end local v10    # "sw":F
    :cond_3
    move v9, v1

    .line 533
    .restart local v9    # "shortSize":I
    move v2, v11

    .restart local v2    # "longSize":I
    goto :goto_0

    .line 546
    .restart local v0    # "aspect":F
    .restart local v4    # "newLongSize":I
    .restart local v5    # "newShortSize":I
    :cond_4
    move v6, v4

    .line 547
    .restart local v6    # "newWidth":I
    move v3, v5

    .restart local v3    # "newHeight":I
    goto :goto_1

    .line 552
    .restart local v8    # "sh":F
    .restart local v10    # "sw":F
    :cond_5
    move v7, v8

    .restart local v7    # "scale":F
    goto :goto_2
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 317
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 3
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x2

    .line 503
    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 506
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 507
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 508
    iget v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 510
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 511
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 513
    .local v0, "invertedRatio":F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 515
    .end local v0    # "invertedRatio":F
    :cond_1
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 477
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 486
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 488
    .local v0, "invertedRatio":F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 489
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 490
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 491
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 492
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 493
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 494
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 496
    .end local v0    # "invertedRatio":F
    :cond_0
    return-void

    .line 482
    :cond_1
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 483
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 567
    if-ne p0, p1, :cond_0

    .line 568
    return v6

    .line 571
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 572
    .local v2, "oc":Landroid/content/res/CompatibilityInfo;
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v3, v4, :cond_1

    return v5

    .line 573
    :cond_1
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v3, v4, :cond_2

    return v5

    .line 574
    :cond_2
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    return v5

    .line 575
    :cond_3
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v4, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    return v5

    .line 576
    :cond_4
    return v6

    .line 577
    .end local v2    # "oc":Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/ClassCastException;
    return v5
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 608
    const/16 v0, 0x11

    .line 609
    .local v0, "result":I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 610
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 611
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 612
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 613
    return v0
.end method

.method public isScalingRequired()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 305
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public needsCompatResources()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 321
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public neverSupportsScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 313
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public supportsScreen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 309
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 585
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    const-string/jumbo v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 591
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    const-string/jumbo v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    const-string/jumbo v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 600
    const-string/jumbo v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 623
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 626
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 627
    return-void
.end method
