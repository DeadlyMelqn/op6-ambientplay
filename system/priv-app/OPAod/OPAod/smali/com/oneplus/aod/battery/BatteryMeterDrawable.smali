.class public Lcom/oneplus/aod/battery/BatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawable.java"

# interfaces
.implements Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/battery/BatteryMeterDrawable$1;,
        Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;
    }
.end annotation


# static fields
.field private static final ADD_LEVEL:I = 0xa

.field private static final ANIM_DURATION:I = 0x1f4

.field private static final ASPECT_RATIO:F = 0.6551724f

.field public static final BATTERY_BAR_STYLE:I = 0x0

.field public static final BATTERY_CIRCLE_STYLE:I = 0x1

.field public static final BATTERY_HIDDEN_STYLE:I = 0x2

.field private static final BOLT_LEVEL_THRESHOLD:F = 0.3f

.field private static final FULL:I = 0x60

.field public static final SHOW_PERCENT_SETTING:Ljava/lang/String; = "status_bar_show_battery_percent"

.field private static final SINGLE_DIGIT_PERCENT:Z = false

.field private static final STROKE_WITH:F = 6.5f

.field public static final TAG:Ljava/lang/String;

.field private static mAnimOffset:I


# instance fields
.field private mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryStyle:I

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private mCircleBackPaint:Landroid/graphics/Paint;

.field private mCircleChargingPaint:Landroid/graphics/Paint;

.field private mCircleColor:I

.field private mCircleFrontPaint:Landroid/graphics/Paint;

.field private final mCircleRect:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mCustomBackgroundColor:I

.field private mCustomColor:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIconTint:I

.field private mInStatusBar:Z

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mListening:Z

.field private mLog:Z

.field private mOldDarkIntensity:F

.field private mPluggedIn:Z

.field private final mPlusFrame:Landroid/graphics/RectF;

.field private final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPowerSaveEnabled:Z

.field private final mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mUseCustomColor:Z

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private resetUITimes:I


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "frameColor"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 140
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 65
    iput v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIconTint:I

    .line 66
    iput v10, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mOldDarkIntensity:F

    .line 74
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    .line 76
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    .line 78
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    .line 79
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    .line 80
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    .line 81
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    .line 83
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    .line 84
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    .line 85
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    .line 96
    new-instance v5, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    invoke-direct {v5, p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;-><init>(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    .line 101
    iput v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    .line 111
    new-instance v5, Lcom/oneplus/aod/battery/BatteryMeterDrawable$1;

    invoke-direct {v5, p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable$1;-><init>(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    .line 118
    iput v9, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    .line 123
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    .line 137
    iput-boolean v9, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    .line 308
    iput v9, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    .line 383
    iput v9, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastHeight:I

    .line 384
    iput v9, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastWidth:I

    .line 748
    iput-boolean v9, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInStatusBar:Z

    .line 141
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 144
    .local v4, "res":Landroid/content/res/Resources;
    const/high16 v5, 0x7f0f0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 145
    .local v3, "levels":Landroid/content/res/TypedArray;
    const v5, 0x7f0f0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 147
    .local v1, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 148
    .local v0, "N":I
    mul-int/lit8 v5, v0, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    .line 149
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 150
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v2, 0x2

    invoke-virtual {v3, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v5, v6

    .line 151
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v6

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->updateShowPercent()V

    .line 156
    const v5, 0x7f0d0047

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    .line 157
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 158
    const v6, 0x10e0025

    .line 157
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCriticalLevel:I

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 160
    const/high16 v6, 0x7f100000

    .line 159
    invoke-virtual {v5, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonHeightFraction:F

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 162
    const v6, 0x7f100001

    .line 161
    invoke-virtual {v5, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 164
    const v6, 0x7f100002

    .line 163
    invoke-virtual {v5, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    .line 166
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    .line 167
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 169
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    .line 173
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 174
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    .line 180
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 182
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 183
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 188
    const v5, 0x7f0a02d3

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    .line 190
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    .line 191
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const v6, 0x7f0a02d4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    invoke-static {v4}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    .line 194
    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    .line 195
    invoke-static {v4}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    .line 198
    const v5, 0x7f0a02d6

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 197
    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    .line 199
    const v5, 0x7f0a02d7

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeFillColor:I

    .line 201
    const v5, 0x7f0a02d9

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 200
    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    .line 202
    const v5, 0x7f0a02da

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeFillColor:I

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b010b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicWidth:I

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b010c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    .line 208
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    .line 209
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 211
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 212
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    .line 216
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 217
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 218
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    .line 222
    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "height"    # I
    .param p3, "width"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x43870000    # 270.0f

    .line 716
    invoke-direct {p0, p3, p2}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->initCircleSize(II)V

    .line 719
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 720
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 722
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 723
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    int-to-float v0, v0

    const v3, 0x40666666    # 3.6f

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 725
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float v6, v0, v1

    .line 727
    .local v6, "radius":F
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 730
    :cond_0
    return-void

    .line 719
    .end local v6    # "radius":F
    :cond_1
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    invoke-direct {p0, v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v0

    goto :goto_0

    .line 720
    :cond_2
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    invoke-direct {p0, v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v0

    goto :goto_1
.end method

.method private getBackgroundColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    .line 462
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomBackgroundColor:I

    return v0

    .line 465
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    .line 464
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    .line 477
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

.method private getColorForLevel(I)I
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 415
    iget-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v3, :cond_0

    .line 416
    iget v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomColor:I

    return v3

    .line 419
    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_1

    .line 420
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    iget-object v4, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    return v3

    .line 422
    :cond_1
    const/4 v0, 0x0

    .line 423
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 424
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    aget v2, v3, v1

    .line 425
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 426
    if-gt p1, v2, :cond_3

    .line 429
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_2

    .line 430
    iget v3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIconTint:I

    return v3

    .line 432
    :cond_2
    return v0

    .line 423
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 436
    .end local v2    # "thresh":I
    :cond_4
    return v0
.end method

.method private getFillColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    .line 470
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomColor:I

    return v0

    .line 473
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mDarkModeFillColor:I

    .line 472
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private initCircleSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 733
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    .line 734
    iget v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    const/high16 v7, 0x40d00000    # 6.5f

    div-float v4, v6, v7

    .line 735
    .local v4, "strokeWidth":F
    iget-object v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 736
    iget-object v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 737
    const/4 v2, 0x0

    .line 739
    .local v2, "pLeft":I
    div-float v6, v4, v8

    add-float v1, v9, v6

    .line 740
    .local v1, "left":F
    div-float v5, v4, v8

    .line 741
    .local v5, "top":F
    iget v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    div-float v7, v4, v8

    sub-float/2addr v6, v7

    add-float v3, v6, v9

    .line 742
    .local v3, "right":F
    iget v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    div-float v7, v4, v8

    sub-float v0, v6, v7

    .line 743
    .local v0, "bottom":F
    iget-object v6, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v1, v5, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 744
    return-void
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 353
    const v5, 0x7f0f0002

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 354
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 355
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 356
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 357
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 355
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 359
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 360
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 361
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 362
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 360
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 364
    :cond_1
    return-object v4
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 368
    const v5, 0x7f0f0003

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 369
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 370
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 371
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 372
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 370
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 374
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 375
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 376
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 377
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 375
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 379
    :cond_1
    return-object v4
.end method

.method private postInvalidate()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method

.method private postInvalidate(I)V
    .locals 4
    .param p1, "delaytime"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    return-void
.end method

.method private updateChargingAnimLevel()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 330
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    .line 331
    .local v0, "curLevel":I
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCharging:Z

    if-eqz v1, :cond_0

    .line 333
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    sput v2, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    .line 336
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    :goto_0
    return v0

    .line 338
    :cond_1
    sget v1, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    add-int/2addr v0, v1

    .line 339
    const/16 v1, 0x60

    if-lt v0, v1, :cond_2

    .line 340
    const/16 v0, 0x64

    .line 341
    sput v2, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    .line 346
    :goto_1
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 343
    :cond_2
    sget v1, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    add-int/lit8 v1, v1, 0xa

    sput v1, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mAnimOffset:I

    goto :goto_1
.end method

.method private updateShowPercent()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 409
    const-string/jumbo v2, "status_bar_show_battery_percent"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 408
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    .line 411
    return-void
.end method


# virtual methods
.method public disableShowPercent()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    .line 270
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    .line 271
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 483
    const/16 v27, 0x0

    .line 485
    .local v27, "redrawByPadding":Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v28

    .line 486
    .local v28, "rf":Landroid/graphics/Rect;
    move-object/from16 v0, v28

    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 487
    .local v14, "l":I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    .line 489
    .local v30, "t":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInStatusBar:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1

    if-nez v14, :cond_0

    if-eqz v30, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    move/from16 v34, v0

    const/16 v35, 0xa

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    .line 490
    sget-object v34, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v35, "re-draw since have padding"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    move/from16 v34, v0

    add-int/lit8 v34, v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    .line 492
    const/16 v27, 0x1

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    .line 498
    :cond_1
    const/16 v29, 0x0

    .line 501
    .local v29, "showChargingAnim":Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    .line 505
    .local v15, "level":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v34, v0

    xor-int/lit8 v34, v34, 0x1

    if-eqz v34, :cond_2

    .line 506
    sget-object v34, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "draw, "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ", "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ", "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCharging:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ", "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ", "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mListening:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ", "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, ", "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_2
    const/16 v34, -0x1

    move/from16 v0, v34

    if-ne v15, v0, :cond_3

    return-void

    .line 512
    :cond_3
    int-to-float v0, v15

    move/from16 v34, v0

    const/high16 v35, 0x42c80000    # 100.0f

    div-float v11, v34, v35

    .line 513
    .local v11, "drawFrac":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    .line 514
    .local v12, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const v35, 0x3f27b961

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v31, v0

    .line 515
    .local v31, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    move/from16 v34, v0

    sub-int v34, v34, v31

    div-int/lit8 v26, v34, 0x2

    .line 517
    .local v26, "px":I
    int-to-float v0, v12

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonHeightFraction:F

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v10, v0

    .line 519
    .local v10, "buttonHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v37, v0

    int-to-float v0, v12

    move/from16 v38, v0

    invoke-virtual/range {v34 .. v38}, Landroid/graphics/RectF;->set(FFFF)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/RectF;->offset(FF)V

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    move/from16 v34, v0

    packed-switch v34, :pswitch_data_0

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v36, v0

    const/high16 v37, 0x3e800000    # 0.25f

    mul-float v36, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v35, v35, v36

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v37, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x3e800000    # 0.25f

    mul-float v38, v38, v39

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v37, v37, v38

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v38, v0

    int-to-float v0, v10

    move/from16 v39, v0

    add-float v38, v38, v39

    .line 537
    invoke-virtual/range {v34 .. v38}, Landroid/graphics/RectF;->set(FFFF)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    int-to-float v0, v10

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    move/from16 v36, v0

    add-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v34, v0

    if-eqz v34, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    move/from16 v34, v0

    :goto_0
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    const/16 v34, 0x60

    move/from16 v0, v34

    if-lt v15, v0, :cond_7

    .line 558
    const/high16 v11, 0x3f800000    # 1.0f

    .line 563
    :cond_4
    :goto_1
    const/high16 v34, 0x3f800000    # 1.0f

    cmpl-float v34, v11, v34

    if-nez v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    .line 567
    .local v16, "levelTop":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Path;->reset()V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->moveTo(FF)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    .line 578
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v34, v0

    if-eqz v34, :cond_d

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->width()F

    move-result v35

    const/high16 v36, 0x40800000    # 4.0f

    div-float v35, v35, v36

    add-float v6, v34, v35

    .line 581
    .local v6, "bl":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    const/high16 v36, 0x40c00000    # 6.0f

    div-float v35, v35, v36

    add-float v9, v34, v35

    .line 582
    .local v9, "bt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->width()F

    move-result v35

    const/high16 v36, 0x40800000    # 4.0f

    div-float v35, v35, v36

    sub-float v8, v34, v35

    .line 583
    .local v8, "br":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    const/high16 v36, 0x41200000    # 10.0f

    div-float v35, v35, v36

    sub-float v5, v34, v35

    .line 584
    .local v5, "bb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v34, v0

    cmpl-float v34, v34, v6

    if-nez v34, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    cmpl-float v34, v34, v9

    if-eqz v34, :cond_9

    .line 586
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v9, v8, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Path;->reset()V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget v36, v36, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/RectF;->width()F

    move-result v37

    mul-float v36, v36, v37

    add-float v35, v35, v36

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->height()F

    move-result v38

    mul-float v37, v37, v38

    add-float v36, v36, v37

    .line 588
    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->moveTo(FF)V

    .line 591
    const/4 v13, 0x2

    .local v13, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_c

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v36, v0

    aget v36, v36, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/RectF;->width()F

    move-result v37

    mul-float v36, v36, v37

    add-float v35, v35, v36

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v37, v0

    add-int/lit8 v38, v13, 0x1

    aget v37, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->height()F

    move-result v38

    mul-float v37, v37, v38

    add-float v36, v36, v37

    .line 592
    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    .line 591
    add-int/lit8 v13, v13, 0x2

    goto :goto_3

    .line 525
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v8    # "br":F
    .end local v9    # "bt":F
    .end local v13    # "i":I
    .end local v16    # "levelTop":F
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    .line 526
    return-void

    .line 529
    :pswitch_1
    return-void

    .line 555
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v34

    goto/16 :goto_0

    .line 559
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-gt v15, v0, :cond_4

    .line 560
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 564
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    const/high16 v36, 0x3f800000    # 1.0f

    sub-float v36, v36, v11

    mul-float v35, v35, v36

    add-float v16, v34, v35

    .restart local v16    # "levelTop":F
    goto/16 :goto_2

    .line 585
    .restart local v5    # "bb":F
    .restart local v6    # "bl":F
    .restart local v8    # "br":F
    .restart local v9    # "bt":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    cmpl-float v34, v34, v8

    if-nez v34, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    cmpl-float v34, v34, v5

    if-nez v34, :cond_5

    .line 602
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v35, v0

    sget-object v36, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 640
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v8    # "br":F
    .end local v9    # "bt":F
    :cond_a
    :goto_5
    const/16 v18, 0x0

    .line 641
    .local v18, "pctOpaque":Z
    const/16 v20, 0x0

    .local v20, "pctX":F
    const/16 v21, 0x0

    .line 642
    .local v21, "pctY":F
    const/16 v19, 0x0

    .line 665
    .local v19, "pctText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move/from16 v0, v16

    move-object/from16 v1, v34

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Path;->reset()V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    sget-object v36, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v35, v0

    sget-object v36, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 674
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    move/from16 v34, v0

    if-nez v34, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    move/from16 v34, v0

    xor-int/lit8 v34, v34, 0x1

    if-eqz v34, :cond_b

    .line 675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-gt v15, v0, :cond_12

    .line 677
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x3f000000    # 0.5f

    mul-float v32, v34, v35

    .line 678
    .local v32, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextHeight:F

    move/from16 v35, v0

    add-float v34, v34, v35

    const v35, 0x3ef5c28f    # 0.48f

    mul-float v33, v34, v35

    .line 679
    .local v33, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 685
    .end local v32    # "x":F
    .end local v33    # "y":F
    :cond_b
    :goto_6
    return-void

    .line 596
    .end local v18    # "pctOpaque":Z
    .end local v19    # "pctText":Ljava/lang/String;
    .end local v20    # "pctX":F
    .end local v21    # "pctY":F
    .restart local v5    # "bb":F
    .restart local v6    # "bl":F
    .restart local v8    # "br":F
    .restart local v9    # "bt":F
    .restart local v13    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget v36, v36, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/RectF;->width()F

    move-result v37

    mul-float v36, v36, v37

    add-float v35, v35, v36

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPoints:[F

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->height()F

    move-result v38

    mul-float v37, v37, v38

    add-float v36, v36, v37

    .line 596
    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    .line 604
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v8    # "br":F
    .end local v9    # "bt":F
    .end local v13    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    move/from16 v34, v0

    if-eqz v34, :cond_a

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v34, v34, v35

    const/high16 v35, 0x40400000    # 3.0f

    div-float v25, v34, v35

    .line 607
    .local v25, "pw":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->width()F

    move-result v35

    sub-float v35, v35, v25

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    add-float v22, v34, v35

    .line 608
    .local v22, "pl":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    sub-float v35, v35, v25

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    add-float v24, v34, v35

    .line 609
    .local v24, "pt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->width()F

    move-result v35

    sub-float v35, v35, v25

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    sub-float v23, v34, v35

    .line 610
    .local v23, "pr":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/RectF;->height()F

    move-result v35

    sub-float v35, v35, v25

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    sub-float v17, v34, v35

    .line 611
    .local v17, "pb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v34, v0

    cmpl-float v34, v34, v22

    if-nez v34, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v34, v0

    cmpl-float v34, v34, v24

    if-eqz v34, :cond_f

    .line 613
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v23

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Path;->reset()V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget v36, v36, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/RectF;->width()F

    move-result v37

    mul-float v36, v36, v37

    add-float v35, v35, v36

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->height()F

    move-result v38

    mul-float v37, v37, v38

    add-float v36, v36, v37

    .line 615
    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->moveTo(FF)V

    .line 618
    const/4 v13, 0x2

    .restart local v13    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_10

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    move-object/from16 v36, v0

    aget v36, v36, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/RectF;->width()F

    move-result v37

    mul-float v36, v36, v37

    add-float v35, v35, v36

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    move-object/from16 v37, v0

    add-int/lit8 v38, v13, 0x1

    aget v37, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->height()F

    move-result v38

    mul-float v37, v37, v38

    add-float v36, v36, v37

    .line 619
    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    .line 618
    add-int/lit8 v13, v13, 0x2

    goto :goto_7

    .line 612
    .end local v13    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    cmpl-float v34, v34, v23

    if-nez v34, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    cmpl-float v34, v34, v17

    if-nez v34, :cond_e

    .line 628
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v34, v0

    sub-float v34, v34, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    div-float v7, v34, v35

    .line 629
    .local v7, "boltPct":F
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v34

    const/high16 v35, 0x3f800000    # 1.0f

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 630
    const v34, 0x3e99999a    # 0.3f

    cmpg-float v34, v7, v34

    if-gtz v34, :cond_11

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 623
    .end local v7    # "boltPct":F
    .restart local v13    # "i":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget v36, v36, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/RectF;->width()F

    move-result v37

    mul-float v36, v36, v37

    add-float v35, v35, v36

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPoints:[F

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->height()F

    move-result v38

    mul-float v37, v37, v38

    add-float v36, v36, v37

    .line 623
    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    .line 635
    .end local v13    # "i":I
    .restart local v7    # "boltPct":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    move-object/from16 v35, v0

    sget-object v36, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual/range {v34 .. v36}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_5

    .line 680
    .end local v7    # "boltPct":F
    .end local v17    # "pb":F
    .end local v22    # "pl":F
    .end local v23    # "pr":F
    .end local v24    # "pt":F
    .end local v25    # "pw":F
    .restart local v18    # "pctOpaque":Z
    .restart local v19    # "pctText":Ljava/lang/String;
    .restart local v20    # "pctX":F
    .restart local v21    # "pctY":F
    :cond_12
    if-eqz v18, :cond_b

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableLog(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 756
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    .line 757
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicWidth:I

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method public getShowPercentage()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mShowPercent:Z

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 291
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLevel:I

    .line 292
    iput-boolean p2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPluggedIn:Z

    .line 293
    iput-boolean p3, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCharging:Z

    .line 294
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    .line 295
    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 300
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 311
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 312
    const/4 p1, 0x0

    .line 314
    :cond_0
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryStyle:I

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->resetUITimes:I

    .line 316
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate()V

    .line 317
    return-void
.end method

.method public onFastChargeChanged(Z)V
    .locals 0
    .param p1, "fastCharge"    # Z

    .prologue
    .line 305
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 3
    .param p1, "isPowerSave"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 324
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPowerSaveChanged , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->invalidateSelf()V

    .line 327
    return-void
.end method

.method public relayout()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicWidth:I

    .line 229
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIntrinsicHeight:I

    .line 230
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 690
    return-void
.end method

.method public setBatteryController(Lcom/oneplus/aod/battery/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/oneplus/aod/battery/BatteryController;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    .line 285
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0}, Lcom/oneplus/aod/battery/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    .line 286
    return-void
.end method

.method public setBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 390
    sub-int v0, p4, p2

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    .line 391
    sub-int v0, p3, p1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    .line 392
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 393
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWarningTextHeight:F

    .line 396
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastHeight:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastWidth:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    if-eq v0, v1, :cond_1

    .line 397
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mHeight:I

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastHeight:I

    .line 398
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mWidth:I

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mLastWidth:I

    .line 399
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->postInvalidate(I)V

    .line 402
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 694
    return-void
.end method

.method public setCustomColor(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "backgroundColor"    # I

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mUseCustomColor:Z

    .line 235
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomColor:I

    .line 236
    iput p2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCustomBackgroundColor:I

    .line 237
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    .line 239
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3
    .param p1, "darkIntensity"    # F

    .prologue
    .line 440
    iget v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mOldDarkIntensity:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 441
    return-void

    .line 443
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getBackgroundColor(F)I

    move-result v0

    .line 444
    .local v0, "backgroundColor":I
    invoke-direct {p0, p1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->getFillColor(F)I

    move-result v1

    .line 445
    .local v1, "fillColor":I
    iput v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mIconTint:I

    .line 446
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    iput v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mChargeColor:I

    .line 451
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->invalidateSelf()V

    .line 457
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mOldDarkIntensity:F

    .line 458
    return-void
.end method

.method public setIconPlace(Z)V
    .locals 0
    .param p1, "statusBar"    # Z

    .prologue
    .line 750
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mInStatusBar:Z

    .line 751
    return-void
.end method

.method public startListening()V
    .locals 4

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mListening:Z

    .line 256
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    .line 256
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 258
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->updateShowPercent()V

    .line 259
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0, p0}, Lcom/oneplus/aod/battery/BatteryController;->addStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V

    .line 260
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mListening:Z

    .line 264
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 265
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0, p0}, Lcom/oneplus/aod/battery/BatteryController;->removeStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V

    .line 266
    return-void
.end method
