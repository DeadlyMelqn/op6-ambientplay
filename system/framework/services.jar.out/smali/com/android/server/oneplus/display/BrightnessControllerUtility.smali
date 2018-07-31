.class public Lcom/android/server/oneplus/display/BrightnessControllerUtility;
.super Ljava/lang/Object;
.source "BrightnessControllerUtility.java"


# static fields
.field public static BRIGHTNESS_LEVELS:I = 0x0

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BrightnessControllerUtility"

.field public static mAmbientLuxConfig:[F

.field public static mAmbientLuxMaxConfig:[F

.field public static mAmbientLuxMinConfig:[F

.field private static mScreenBrightnessConfig:[I

.field private static sInstance:Lcom/android/server/oneplus/display/BrightnessControllerUtility;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mNightBrihtness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->DEBUG:Z

    .line 40
    const/16 v0, 0x8

    sput v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mNightBrihtness:I

    .line 60
    return-void
.end method

.method public static getInstance()Lcom/android/server/oneplus/display/BrightnessControllerUtility;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->sInstance:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    invoke-direct {v0}, Lcom/android/server/oneplus/display/BrightnessControllerUtility;-><init>()V

    sput-object v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->sInstance:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->sInstance:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    return-object v0
.end method


# virtual methods
.method public calculateRate(FF)I
    .locals 5
    .param p1, "nowLux"    # F
    .param p2, "lastLux"    # F

    .prologue
    const/16 v4, 0x1e

    const v3, 0x459c3800    # 4999.0f

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "rate":I
    cmpl-float v1, p1, p2

    if-lez v1, :cond_1

    .line 108
    sub-float v1, p1, p2

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const v2, 0x47433b00    # 49979.0f

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 109
    if-ge v0, v4, :cond_0

    .line 110
    const/16 v0, 0x1e

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    sub-float v1, p2, p1

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    const v2, 0x46ea3800    # 29980.0f

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 114
    if-le v0, v4, :cond_0

    .line 115
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public calculateRate_for_Brightness(II)I
    .locals 5
    .param p1, "lastBrightness"    # I
    .param p2, "nowBrightness"    # I

    .prologue
    .line 124
    const/4 v1, 0x0

    .local v1, "rate":I
    const/4 v0, 0x0

    .line 125
    .local v0, "d_value":I
    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 126
    if-le p2, p1, :cond_0

    .line 127
    int-to-float v2, v0

    const v3, -0x468dc769    # -2.31E-4f

    mul-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    int-to-float v3, v0

    const v4, 0x3f119147

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const v3, 0x426db9f7

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 131
    :goto_0
    return v1

    .line 129
    :cond_0
    int-to-float v2, v0

    const v3, 0x390a697b    # 1.32E-4f

    mul-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    int-to-float v3, v0

    const v4, 0x3ce4cf8d    # 0.027931f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x42201c77

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0
.end method

.method getBrightnessTweak()Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tweaks_alternative_brightness"

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getNightBrightness(I)I
    .locals 7
    .param p1, "brightness"    # I

    .prologue
    const/16 v6, 0x3ff

    const/16 v4, 0xff

    const/4 v5, 0x0

    .line 147
    move v1, p1

    .line 149
    .local v1, "newScreenAutoBrightness":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mCalendar:Ljava/util/Calendar;

    .line 150
    iget-object v2, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mCalendar:Ljava/util/Calendar;

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 152
    .local v0, "hour":I
    const/16 v2, 0x16

    if-gt v0, v2, :cond_0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_4

    .line 153
    :cond_0
    sget-object v2, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mScreenBrightnessConfig:[I

    aget v2, v2, v5

    if-ne p1, v2, :cond_1

    .line 154
    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v2, v4, :cond_3

    .line 155
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mNightBrihtness:I

    .line 166
    .end local v0    # "hour":I
    :cond_1
    :goto_0
    const-string/jumbo v2, "BrightnessControllerUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNightBrihtness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mNightBrihtness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v2, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mNightBrihtness:I

    if-lez v2, :cond_2

    sget-object v2, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mScreenBrightnessConfig:[I

    aget v2, v2, v5

    if-ne p1, v2, :cond_2

    .line 169
    iget v1, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mNightBrihtness:I

    .line 172
    :cond_2
    return v1

    .line 156
    .restart local v0    # "hour":I
    :cond_3
    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v2, v6, :cond_1

    .line 157
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mNightBrihtness:I

    goto :goto_0

    .line 160
    :cond_4
    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v2, v4, :cond_5

    .line 161
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mNightBrihtness:I

    goto :goto_0

    .line 162
    :cond_5
    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v2, v6, :cond_1

    .line 163
    const/16 v2, 0x18

    iput v2, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mNightBrihtness:I

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mContext:Landroid/content/Context;

    .line 64
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->DEBUG:Z

    .line 66
    sget v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    .line 67
    sget v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    .line 68
    sget v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    .line 69
    return-void
.end method

.method public readAutoBrightnessLuxConfig()V
    .locals 9

    .prologue
    const/16 v7, 0x3ff

    const/16 v6, 0xff

    const/16 v5, 0x8

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->getBrightnessTweak()Z

    move-result v8

    .line 72
    iget-object v3, p0, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 74
    .local v1, "lux":[I
    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v3, v6, :cond_1

    .line 76
    const v3, 0x1070013

    .line 75
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 81
    .end local v1    # "lux":[I
    :cond_0
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [F

    sput-object v3, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_3

    .line 83
    if-nez v0, :cond_2

    .line 84
    sget-object v3, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    const/4 v4, 0x0

    aput v4, v3, v0

    .line 82
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    .end local v0    # "i":I
    .restart local v1    # "lux":[I
    :cond_1
    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v3, v7, :cond_0

    .line 79
    const v3, 0x1070012

    .line 78
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .local v1, "lux":[I
    goto :goto_0

    .line 86
    .end local v1    # "lux":[I
    .restart local v0    # "i":I
    :cond_2
    sget-object v3, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    add-int/lit8 v4, v0, -0x1

    aget v4, v1, v4

    int-to-float v4, v4

    aput v4, v3, v0

    goto :goto_2

    .line 89
    :cond_3
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    .line 92
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    sput-object v3, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    .line 95
    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v3, v6, :cond_5

    .line 97
    const v3, 0x1070010

    .line 96
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    sput-object v3, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mScreenBrightnessConfig:[I

    .line 102
    :cond_4
    :goto_3
    return-void

    .line 98
    :cond_5
    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v3, v7, :cond_4

    if-nez v8, :cond_6

    .line 100
    const v3, 0x107000f

    .line 99
    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    sput-object v3, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mScreenBrightnessConfig:[I

    goto :goto_3

    .line 89
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x44070000    # 540.0f
        0x44802000    # 1025.0f
        0x44fa0000    # 2000.0f
        0x452f0000    # 2800.0f
    .end array-data

    .line 92
    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x41f00000    # 30.0f
        0x42dc0000    # 110.0f
        0x448fc000    # 1150.0f
        0x4500c000    # 2060.0f
        0x452f0000    # 2800.0f
        0x4583e000    # 4220.0f
        0x479c4000    # 80000.0f
    .end array-data

    .line 100
    :cond_6
    const v3, 0x107006e

    goto :goto_4
.end method

.method public resetAmbientLux(F)I
    .locals 3
    .param p1, "ambientLux"    # F

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    sget v2, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    if-ge v1, v2, :cond_0

    .line 138
    sget-object v2, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v2, v2, v1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 139
    add-int/lit8 v0, v1, 0x1

    .line 143
    :cond_0
    return v0

    .line 137
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
