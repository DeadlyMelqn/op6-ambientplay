.class public final Lcom/android/server/oneplus/display/ColorBalanceService;
.super Lcom/android/server/SystemService;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oneplus/display/ColorBalanceService$1;,
        Lcom/android/server/oneplus/display/ColorBalanceService$2;,
        Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;,
        Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;,
        Lcom/android/server/oneplus/display/ColorBalanceService$CMH;,
        Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;,
        Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;,
        Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;,
        Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;
    }
.end annotation


# static fields
.field private static final ADAPTION_ADJUSTMENT_SHADING_TIME:I = 0x12c

.field private static final ADAPTION_INIT_COLOR:I = 0x2b

.field private static final AUTO_ADJUSTMENT_SHADING_TIME:I = 0x0

.field private static COLOR_DELTA:I = 0x0

.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

.field private static final COLOR_MATRIX_FACTOR_DELTA:F = 0.0125f

.field private static final COLOR_MATRIX_FACTOR_DELTA_SHADING_DELAY:I = 0xf

.field private static final DEBUG:Z = false

.field private static final DEFAULT_COLORBALANCE:I = 0x2b

.field private static final IS_QCOM_SAVE_MODE_USED:Z = false

.field private static final MATRIX_IDENTITY:[F

.field private static final MODE_CREATE_ING:I = 0x1

.field private static final MODE_CREATE_NONE:I = 0x0

.field private static final MODE_NIGHT:I = 0x1

.field private static final MODE_NIGHT_OFF:I = 0x3

.field private static final MODE_NULL:I = 0x0

.field private static final MODE_READING:I = 0x2

.field private static final MODE_READING_OFF:I = 0x4

.field private static final MODE_READING_OFF_AUTO:I = 0x5

.field private static final MSG_ACTIVE_MODE:I = 0x5

.field private static final MSG_AUTOCHANGE_ENVIRONMENT_CHANGED:I = 0x14

.field private static final MSG_CHECK_LIGHT:I = 0x10

.field private static final MSG_CHECK_SRGBSEN:I = 0xf

.field private static final MSG_DEFAULT_MODE:I = 0x6

.field private static final MSG_NIGHT2READING:I = 0xd

.field private static final MSG_NIGHT_ENVIRONMENT_CHANGED:I = 0x8

.field private static final MSG_NIGHT_SWITCH:I = 0xa

.field private static final MSG_READING2NIGHT:I = 0xe

.field private static final MSG_READING_ENVIRONMENT_CHANGED:I = 0x9

.field private static final MSG_READING_SWITCH:I = 0xb

.field private static final MSG_REVERT_STATUS:I = 0xc

.field private static final MSG_SAVE_MODE:I = 0x4

.field private static final MSG_SCREEN_AFTER_ON:I = 0x7

.field private static final MSG_SCREEN_OFF:I = 0x2

.field private static final MSG_SCREEN_ON:I = 0x1

.field private static final MSG_SET_COLORBALANCE:I = 0x3

.field private static final NIGHT_MODE_SEEKBAR_DEFAULT:I = 0x67

.field private static NIGHT_MODE_SEEKBAR_MAX:I = 0x0

.field private static final NIGHT_STAGE_CLOSED:I = 0x4

.field private static final NIGHT_STAGE_CLOSING:I = 0x3

.field private static final NIGHT_STAGE_OPENED:I = 0x2

.field private static final NIGHT_STAGE_OPENING:I = 0x1

.field private static final OP_SYS_Auto_Color_PROPERTY:Ljava/lang/String; = "sys.automode"

.field private static final OP_SYS_DCIP3_PROPERTY:Ljava/lang/String; = "sys.dci3p"

.field private static final OP_SYS_Default_Color_PROPERTY:Ljava/lang/String; = "sys.default_mode"

.field private static final OP_SYS_NIGHT_MODE:Ljava/lang/String; = "sys.night_mode"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final READING_INIT_COLOR:I = -0x14

.field private static final READING_STAGE_CLOSED:I = 0x8

.field private static final READING_STAGE_CLOSING:I = 0x7

.field private static final READING_STAGE_OPENED:I = 0x6

.field private static final READING_STAGE_OPENING:I = 0x5

.field private static final RESET_NODE_DELAY:I = 0x11

.field private static RGBSENSOR_Dither:I = 0x0

.field private static SENSOR_TYPE_RGB:I = 0x0

.field private static final STAGE_NULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorBalanceService"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static config_colorbalance_oneplus_mode_adaption:[I

.field private static config_colorbalance_reading_mode:[I

.field private static config_colorbalance_reading_mode_SRGB_and_P3:[I


# instance fields
.field colortemprature:[I

.field config_autocolortemp:[I

.field config_autoseekbar:[I

.field config_colorbalance:[[I

.field private dtm:Lcom/android/server/display/DisplayTransformManager;

.field private mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

.field private mAutoSensor:Ljava/lang/Boolean;

.field private mAutoState:Ljava/lang/Boolean;

.field private mAverageColor:I

.field private mBootCompleted:Z

.field private mBootPhase:I

.field private final mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

.field private mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private mColorBalanceThread:Landroid/os/HandlerThread;

.field private mColorMatrix:[F

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mCreateModeState:I

.field private mCurrentAdaptionColorbalance:I

.field private mCurrentColorBalance:I

.field private mCurrentNightColorbalance:I

.field private mCurrentReadingColorbalance:I

.field private mCurrentSrgbSensorAverageColor:I

.field private mCurrentUser:I

.field private mFactor:F

.field private mGeneration:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsAutoModeActivated:Ljava/lang/Boolean;

.field private mIsColorManagerConnected:Ljava/lang/Boolean;

.field private mIsDisableByApp:Ljava/lang/Boolean;

.field private mIsNightModeActivated:Ljava/lang/Boolean;

.field private mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingModeActivated:Ljava/lang/Boolean;

.field private mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

.field private mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

.field private mIsScreenOn:Ljava/lang/Boolean;

.field private mIsSupportReadingMode:Ljava/lang/Boolean;

.field private mIsTimeActivated:Ljava/lang/Boolean;

.field private mLightBrightness:I

.field private mLightGeneration:I

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mLowLightCount:I

.field private mMode:I

.field private mModeEnable:I

.field private mModeId:I

.field private mModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mModeStage:I

.field private mNight2ReadingModeStage:I

.field private mNightDisplayMoede:I

.field private mNightModeAutoStatus:I

.field private mNightModeClosingStage:I

.field private mNightModeOpingStage:I

.field private mNightModeStatus:Ljava/lang/Boolean;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreColorTemp:I

.field private mPretNightColorbalance:I

.field private mReading2NightModeStage:I

.field private mReadingModeClosingStage:I

.field private mReadingModeOpingStage:I

.field private mReadingModeStatus:Ljava/lang/Boolean;

.field private mSDM:Lcom/oneplus/display/SDManager;

.field private mSRGBSensorEnabled:Z

.field private mSRGBSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorColortemperature:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSrgbSensorGeneration:I

.field private mStableColor:I

.field private mStableCount:I

.field private mStartSetCount:I

.field private mStopSetCount:I

.field private mSwitchUser:Ljava/lang/Boolean;

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/oneplus/display/SDManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/oneplus/display/SDManager;)Lcom/oneplus/display/SDManager;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # Lcom/oneplus/display/SDManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    return p1
.end method

.method static synthetic -set17(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set18(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # Landroid/database/ContentObserver;

    .prologue
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # Ljava/lang/Boolean;

    .prologue
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->checkColorManageEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "setColorBalance"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processSetColorBalance(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/oneplus/display/ColorBalanceService;ZII)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I
    .param p3, "arg2"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/oneplus/display/ColorBalanceService;->readingModeSwitch(ZII)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "v"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgInternal(I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setupApplication()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "on"    # Ljava/lang/Boolean;
    .param p2, "isIgnore"    # Ljava/lang/Boolean;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->ResetNode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeNight2ReadingMode(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeReading2NightMode(II)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "colortemperature"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->handleSRGBSensorEvent(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/oneplus/display/ColorBalanceService;ZI)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->nightModeSwitch(ZI)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 99
    const/16 v0, 0x50

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 100
    const/16 v0, 0x8

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    .line 101
    const/16 v0, 0x82

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 212
    const v0, 0x1fa264c

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    .line 231
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    .line 233
    sget-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 236
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;)V

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    .line 282
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    .line 283
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    .line 284
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    .line 94
    return-void

    .line 282
    :array_0
    .array-data 4
        0x23
        0x2a
        0x3c
        0x45
        0x4e
        0x55
    .end array-data

    .line 283
    :array_1
    .array-data 4
        0x36
        0x3d
        0x4e
        0x57
        0x5d
        0x63
    .end array-data

    .line 284
    :array_2
    .array-data 4
        0x66
        0x70
        0x7a
        0x80
        0x86
        0x8a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x36

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 294
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 147
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    .line 148
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 149
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 150
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 151
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 152
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 153
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    .line 154
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 155
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 156
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 157
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    .line 158
    const/16 v1, 0x2e

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 159
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    .line 160
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    .line 161
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 162
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 163
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 164
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCreateModeState:I

    .line 165
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    .line 166
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    .line 168
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 169
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 170
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 171
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 172
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 173
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 174
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 177
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    .line 182
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 183
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 184
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 185
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 186
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 187
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 188
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 189
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 190
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 191
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 194
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 196
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    .line 198
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    .line 202
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeId:I

    .line 205
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 206
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    .line 207
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 219
    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    .line 227
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 235
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 239
    const/16 v1, 0x84

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colortemprature:[I

    .line 254
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autocolortemp:[I

    .line 262
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    .line 269
    new-array v1, v2, [[I

    .line 270
    new-array v2, v7, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v5

    new-array v2, v7, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v6

    new-array v2, v7, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 271
    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_c

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_d

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 272
    new-array v2, v4, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_10

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_11

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_12

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_13

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 273
    new-array v2, v4, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_18

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 274
    new-array v2, v4, [I

    fill-array-data v2, :array_19

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1a

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1b

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1c

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1d

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 275
    new-array v2, v4, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_1f

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_20

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_21

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 276
    new-array v2, v4, [I

    fill-array-data v2, :array_22

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_24

    const/16 v3, 0x20

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_25

    const/16 v3, 0x21

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_26

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 277
    new-array v2, v4, [I

    fill-array-data v2, :array_27

    const/16 v3, 0x23

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_28

    const/16 v3, 0x24

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_29

    const/16 v3, 0x25

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2a

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 278
    new-array v2, v4, [I

    fill-array-data v2, :array_2b

    const/16 v3, 0x27

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2c

    const/16 v3, 0x28

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2d

    const/16 v3, 0x29

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2e

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_2f

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 279
    new-array v2, v4, [I

    fill-array-data v2, :array_30

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_31

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_32

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_33

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_34

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 280
    new-array v2, v4, [I

    fill-array-data v2, :array_35

    const/16 v3, 0x31

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_36

    const/16 v3, 0x32

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_37

    const/16 v3, 0x33

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_38

    const/16 v3, 0x34

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_39

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 269
    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 292
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    .line 1902
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$1;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    .line 1925
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$2;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 295
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    .line 296
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 297
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    .line 298
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ColorBalanceThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    .line 299
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 300
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    .line 301
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oem.read_mode.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    .line 302
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    const/16 v1, 0x5a

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 304
    const/16 v1, 0x84

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 309
    :goto_0
    new-array v1, v6, [I

    const/16 v2, 0x31

    aput v2, v1, v5

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    const v1, 0x1fa2639

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    .line 311
    sput v4, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    .line 313
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 319
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/oneplus/display/ColorBalanceService$3;

    invoke-direct {v2, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$3;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    return-void

    .line 306
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const/16 v1, 0x50

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 307
    const/16 v1, 0x82

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    goto :goto_0

    .line 219
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f410625    # 0.754f
        0x0
        0x0
        0x0
        0x0
        0x3f041893    # 0.516f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 239
    :array_1
    .array-data 4
        0xba3
        0xba5
        0xc20
        0xc20
        0xc64
        0xc64
        0xc63
        0xce1
        0xce0
        0xd4e
        0xd4f
        0xd4d
        0xdd0
        0xdcd
        0xe39
        0xe39
        0xe38
        0xece
        0xecd
        0xf14
        0xf17
        0xf16
        0xfa8
        0xfa9
        0xfd4
        0xfd4
        0xfd4
        0x104d
        0x104d
        0x10af
        0x10af
        0x10af
        0x1111
        0x1110
        0x116d
        0x116c
        0x116c
        0x11c9
        0x11c9
        0x121d
        0x121c
        0x121b
        0x1260
        0x1261
        0x12ba
        0x12ba
        0x12b8
        0x1327
        0x1325
        0x136f
        0x1370
        0x1370
        0x13d7
        0x13d7
        0x1437
        0x1437
        0x1437
        0x149c
        0x149d
        0x14eb
        0x14ea
        0x14e9
        0x1528
        0x1528
        0x15b2
        0x15b2
        0x15b3
        0x15fd
        0x15fd
        0x1657
        0x1656
        0x1656
        0x168c
        0x168b
        0x16ef
        0x16f0
        0x175d
        0x175d
        0x17a9
        0x17a9
        0x17a8
        0x17d1
        0x17c4
        0x1811
        0x1810
        0x1810
        0x1845
        0x1846
        0x18ab
        0x18ab
        0x18aa
        0x18da
        0x18da
        0x192a
        0x1929
        0x1928
        0x196a
        0x1969
        0x19a3
        0x19a3
        0x19a2
        0x19f9
        0x19fa
        0x1a51
        0x1a52
        0x1a51
        0x1aa8
        0x1aa8
        0x1ad6
        0x1ad4
        0x1ad4
        0x1b3f
        0x1b40
        0x1b5e
        0x1b5f
        0x1b5e
        0x1ba0
        0x1ba0
        0x1bc2
        0x1bbf
        0x1bc0
        0x1c00
        0x1c00
        0x1c32
        0x1c2f
        0x1c2e
        0x1c81
        0x1c81
        0x1ce3
        0x1ce6
        0x1ce3
        0x1d08
    .end array-data

    .line 254
    :array_2
    .array-data 4
        0xba3
        0xc20
        0xc64
        0xce0
        0xd4f
        0xdd0
        0xe39
        0xece
        0xf17
        0xfa8
        0xfd4
        0x104d
        0x10af
        0x1111
        0x116d
        0x11c9
        0x121c
        0x1260
        0x12ba
        0x1327
        0x136f
        0x13d7
        0x1437
        0x149c
        0x14eb
        0x1528
        0x15b2
        0x15fd
        0x1657
        0x168c
        0x16ef
        0x175d
        0x17a9
        0x17d1
        0x1811
        0x1845
        0x18ab
        0x18da
        0x192a
        0x196a
        0x19a3
        0x19f9
        0x1a51
        0x1aa8
        0x1ad6
        0x1b3f
        0x1b5e
        0x1ba0
        0x1bc2
        0x1c00
        0x1c32
        0x1c81
        0x1ce6
        0x1d08
    .end array-data

    .line 262
    :array_3
    .array-data 4
        0x1
        0x3
        0x5
        0x8
        0xa
        0xd
        0x10
        0x12
        0x15
        0x17
        0x19
        0x1c
        0x1e
        0x21
        0x23
        0x26
        0x28
        0x2b
        0x2d
        0x30
        0x32
        0x35
        0x37
        0x3a
        0x3c
        0x3f
        0x41
        0x44
        0x46
        0x49
        0x4b
        0x4e
        0x50
        0x53
        0x55
        0x58
        0x5a
        0x5d
        0x5f
        0x62
        0x64
        0x67
        0x69
        0x6c
        0x6e
        0x71
        0x73
        0x76
        0x78
        0x7b
        0x7d
        0x80
        0x82
        0x84
    .end array-data

    .line 270
    :array_4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x3
        0xa
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x3
        0x3
        0x8
        0xd
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x3
        0x5
        0x5
        0xa
        0xd
        0x10
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x8
        0x8
        0xd
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x5
        0x8
        0xa
        0x10
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x8
        0xa
        0xd
        0x12
        0x17
    .end array-data

    .line 271
    :array_a
    .array-data 4
        0x5
        0x8
        0xd
        0x10
        0x15
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x8
        0xa
        0x10
        0x12
        0x17
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0xa
        0xd
        0x12
        0x15
        0x19
        0x1e
    .end array-data

    :array_d
    .array-data 4
        0xa
        0xd
        0x12
        0x17
        0x1c
        0x21
    .end array-data

    :array_e
    .array-data 4
        0xd
        0x10
        0x15
        0x19
        0x1e
        0x23
    .end array-data

    .line 272
    :array_f
    .array-data 4
        0xd
        0x12
        0x17
        0x1c
        0x21
        0x26
    .end array-data

    :array_10
    .array-data 4
        0xd
        0x15
        0x19
        0x1e
        0x23
        0x28
    .end array-data

    :array_11
    .array-data 4
        0xd
        0x17
        0x1c
        0x21
        0x26
        0x2b
    .end array-data

    :array_12
    .array-data 4
        0xd
        0x19
        0x1e
        0x21
        0x28
        0x2d
    .end array-data

    :array_13
    .array-data 4
        0xd
        0x17
        0x1e
        0x21
        0x2b
        0x30
    .end array-data

    .line 273
    :array_14
    .array-data 4
        0xd
        0x14
        0x19
        0x23
        0x2d
        0x32
    .end array-data

    :array_15
    .array-data 4
        0x10
        0x14
        0x1c
        0x26
        0x30
        0x35
    .end array-data

    :array_16
    .array-data 4
        0x12
        0x17
        0x1e
        0x28
        0x32
        0x37
    .end array-data

    :array_17
    .array-data 4
        0x12
        0x19
        0x23
        0x2d
        0x35
        0x3a
    .end array-data

    :array_18
    .array-data 4
        0x12
        0x1c
        0x26
        0x30
        0x37
        0x3c
    .end array-data

    .line 274
    :array_19
    .array-data 4
        0x15
        0x1e
        0x28
        0x32
        0x3a
        0x3f
    .end array-data

    :array_1a
    .array-data 4
        0x17
        0x21
        0x2b
        0x35
        0x3c
        0x41
    .end array-data

    :array_1b
    .array-data 4
        0x19
        0x23
        0x2d
        0x37
        0x3f
        0x44
    .end array-data

    :array_1c
    .array-data 4
        0x1c
        0x26
        0x30
        0x3a
        0x41
        0x46
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x28
        0x32
        0x3c
        0x44
        0x49
    .end array-data

    .line 275
    :array_1e
    .array-data 4
        0x21
        0x2b
        0x35
        0x3f
        0x46
        0x4b
    .end array-data

    :array_1f
    .array-data 4
        0x23
        0x2d
        0x37
        0x41
        0x49
        0x4e
    .end array-data

    :array_20
    .array-data 4
        0x26
        0x30
        0x3a
        0x44
        0x4b
        0x50
    .end array-data

    :array_21
    .array-data 4
        0x28
        0x32
        0x3c
        0x46
        0x4e
        0x53
    .end array-data

    .line 276
    :array_22
    .array-data 4
        0x2b
        0x35
        0x3f
        0x49
        0x50
        0x55
    .end array-data

    :array_23
    .array-data 4
        0x2d
        0x37
        0x41
        0x4b
        0x53
        0x58
    .end array-data

    :array_24
    .array-data 4
        0x30
        0x3a
        0x44
        0x4e
        0x55
        0x5a
    .end array-data

    :array_25
    .array-data 4
        0x32
        0x3c
        0x46
        0x50
        0x58
        0x5d
    .end array-data

    :array_26
    .array-data 4
        0x35
        0x3f
        0x49
        0x53
        0x5a
        0x5f
    .end array-data

    .line 277
    :array_27
    .array-data 4
        0x2d
        0x3f
        0x49
        0x55
        0x5d
        0x62
    .end array-data

    :array_28
    .array-data 4
        0x30
        0x41
        0x4b
        0x58
        0x5f
        0x64
    .end array-data

    :array_29
    .array-data 4
        0x32
        0x44
        0x4e
        0x5a
        0x62
        0x67
    .end array-data

    :array_2a
    .array-data 4
        0x35
        0x46
        0x50
        0x5d
        0x64
        0x69
    .end array-data

    .line 278
    :array_2b
    .array-data 4
        0x37
        0x49
        0x53
        0x5f
        0x67
        0x6c
    .end array-data

    :array_2c
    .array-data 4
        0x3a
        0x4b
        0x55
        0x62
        0x69
        0x6e
    .end array-data

    :array_2d
    .array-data 4
        0x3c
        0x4e
        0x58
        0x64
        0x6c
        0x71
    .end array-data

    :array_2e
    .array-data 4
        0x3f
        0x50
        0x5a
        0x67
        0x6e
        0x73
    .end array-data

    :array_2f
    .array-data 4
        0x41
        0x53
        0x5d
        0x69
        0x71
        0x76
    .end array-data

    .line 279
    :array_30
    .array-data 4
        0x44
        0x55
        0x5f
        0x6c
        0x73
        0x78
    .end array-data

    :array_31
    .array-data 4
        0x46
        0x58
        0x62
        0x6e
        0x76
        0x7b
    .end array-data

    :array_32
    .array-data 4
        0x49
        0x5a
        0x64
        0x71
        0x78
        0x7d
    .end array-data

    :array_33
    .array-data 4
        0x4b
        0x5d
        0x67
        0x73
        0x7b
        0x80
    .end array-data

    :array_34
    .array-data 4
        0x4e
        0x5f
        0x69
        0x76
        0x7d
        0x82
    .end array-data

    .line 280
    :array_35
    .array-data 4
        0x50
        0x5f
        0x6c
        0x78
        0x80
        0x84
    .end array-data

    :array_36
    .array-data 4
        0x53
        0x62
        0x6e
        0x7b
        0x80
        0x84
    .end array-data

    :array_37
    .array-data 4
        0x55
        0x64
        0x71
        0x7d
        0x82
        0x84
    .end array-data

    :array_38
    .array-data 4
        0x58
        0x67
        0x73
        0x82
        0x84
        0x84
    .end array-data

    :array_39
    .array-data 4
        0x5a
        0x69
        0x76
        0x84
        0x84
        0x84
    .end array-data
.end method

.method private ResetNode()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3034
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 3036
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3037
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3038
    if-ne v0, v5, :cond_0

    .line 3039
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 3040
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 3042
    :cond_0
    if-ne v0, v6, :cond_1

    .line 3043
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 3044
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 3046
    :cond_1
    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_2

    .line 3047
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 3058
    .end local v0    # "status":I
    :cond_2
    :goto_0
    return-void

    .line 3050
    .restart local v0    # "status":I
    :cond_3
    if-ne v0, v5, :cond_4

    .line 3051
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 3052
    :cond_4
    if-ne v0, v6, :cond_5

    .line 3053
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 3054
    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 3055
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    goto :goto_0
.end method

.method private changeNight2ReadingMode(II)V
    .locals 8
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    .prologue
    const/4 v2, 0x1

    .line 2909
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2910
    :try_start_0
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v4, p1, :cond_0

    .line 2911
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2912
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2913
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2914
    const/16 v2, 0x1a90

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2915
    const/16 v2, -0x14

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2916
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v4, "Screen off,readingModeSwitch ON done!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2918
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2919
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2920
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2921
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2922
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 3008
    return-void

    .line 2924
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    if-nez v4, :cond_6

    .line 2925
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2926
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor should be 1 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v2

    const-wide v6, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v2, v4, v6

    if-lez v2, :cond_3

    .line 2929
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2930
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2936
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2937
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mCurrentNightColorbalance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v4, 0x7d0

    if-le v2, v4, :cond_4

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v4, 0x1f40

    if-ge v2, v4, :cond_4

    .line 2940
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    .line 2945
    .local v1, "target":I
    :goto_2
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mStableColor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    const/16 v2, 0x2710

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 2947
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v4, "changeNight2ReadingMode 0 --> 10000,init"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    const/16 v2, 0xd

    const/16 v4, 0xf

    invoke-virtual {p0, v2, p1, v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2909
    .end local v1    # "target":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2931
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v2

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, v4, v6

    if-gez v2, :cond_2

    .line 2932
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2933
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2934
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2941
    :cond_4
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v4, 0x7d0

    if-le v2, v4, :cond_5

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v4, 0x1f40

    if-ge v2, v4, :cond_5

    .line 2942
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    .restart local v1    # "target":I
    goto/16 :goto_2

    .line 2944
    .end local v1    # "target":I
    :cond_5
    const/16 v1, -0x14

    .restart local v1    # "target":I
    goto/16 :goto_2

    .line 2949
    .end local v1    # "target":I
    :cond_6
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v5, 0x2710

    if-ne v4, v5, :cond_f

    .line 2950
    const/4 v0, 0x0

    .line 2951
    .local v0, "count":I
    move v1, p2

    .line 2952
    .restart local v1    # "target":I
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v4, p2, :cond_8

    .line 2953
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v5, p2, :cond_7

    const/4 v2, -0x1

    :cond_7
    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2954
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2955
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2956
    const/4 v0, 0x1

    .line 2958
    :cond_8
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3c3c6a7f    # 0.0115f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_a

    .line 2959
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2960
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f39930c    # 0.7249f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_b

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f39a027    # 0.7251f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_b

    .line 2961
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2962
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2963
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    :cond_9
    :goto_3
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 2977
    add-int/lit8 v0, v0, 0x2

    .line 2979
    :cond_a
    if-lez v0, :cond_e

    .line 2980
    const/16 v2, 0xd

    const/16 v4, 0xf

    invoke-virtual {p0, v2, p1, p2, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2964
    :cond_b
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3efae148    # 0.49f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_c

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f028f5c    # 0.51f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_c

    .line 2965
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2966
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2967
    :cond_c
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e7ef9db    # 0.249f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_d

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e808312    # 0.251f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_d

    .line 2968
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2969
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2970
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2971
    :cond_d
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v2

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, v4, v6

    if-gez v2, :cond_9

    .line 2972
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2973
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2974
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2982
    :cond_e
    const/16 v2, 0x3a98

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 2983
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeNight2ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " target:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  mFactor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v4, "changeNight2ReadingMode 10000 --> 15000,be B & W,and set colorbalance"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    const/16 v2, 0xd

    const/4 v4, 0x0

    invoke-virtual {p0, v2, p1, p2, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2987
    .end local v0    # "count":I
    .end local v1    # "target":I
    :cond_f
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v4, 0x3a98

    if-ne v2, v4, :cond_11

    .line 2988
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v2

    const-wide v6, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v2, v4, v6

    if-lez v2, :cond_10

    .line 2989
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2990
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2991
    const/16 v2, 0x4e20

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 2992
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v4, "changeNight2ReadingMode 15000 --> 20000,turn off Matrix(shading)"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    const/16 v2, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, p1, v4, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2995
    :cond_10
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2996
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2997
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2998
    const/16 v2, 0xd

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual {p0, v2, p1, v4, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 3000
    :cond_11
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v4, 0x4e20

    if-ne v2, v4, :cond_0

    .line 3001
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 3002
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V

    .line 3003
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v4, "changeNight2ReadingMode done!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private changeReading2NightMode(II)V
    .locals 11
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    .line 2803
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2804
    :try_start_0
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v3, p1, :cond_0

    .line 2805
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2806
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2807
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2808
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "Screen off,changeReading2NightMode done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2810
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2811
    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 2812
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2813
    const-string/jumbo v6, "oem_nightmode_progress_status"

    const/16 v7, 0x67

    const/4 v8, -0x2

    .line 2811
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2814
    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 2811
    sub-int v1, v3, v4

    .line 2815
    .local v1, "progress":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2816
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2817
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2818
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2819
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "progress":I
    :cond_0
    :goto_0
    monitor-exit v5

    .line 2907
    return-void

    .line 2821
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    if-nez v3, :cond_3

    .line 2822
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v3, v6, v8

    if-gez v3, :cond_2

    .line 2823
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2824
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2825
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2826
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 2827
    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p1, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2828
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "changeReading2NightMode: 0 --> 5000,be B & W"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2803
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .line 2830
    :cond_2
    :try_start_2
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2831
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2832
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2833
    const/16 v3, 0xe

    const/4 v4, 0x0

    const/16 v6, 0xf

    invoke-virtual {p0, v3, p1, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_0

    .line 2835
    :cond_3
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v6, 0x1388

    if-ne v3, v6, :cond_5

    .line 2836
    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 2837
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2838
    const-string/jumbo v6, "oem_nightmode_progress_status"

    const/16 v7, 0x67

    const/4 v8, -0x2

    .line 2836
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2839
    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 2836
    sub-int v2, v3, v4

    .line 2840
    .local v2, "target":I
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2841
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changeReading2NightMode:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 2844
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2845
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v3, v6, v8

    if-gez v3, :cond_4

    .line 2846
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2847
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2849
    :cond_4
    const/16 v3, 0x2710

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 2850
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v2, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2851
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "changeReading2NightMode:stage 5000 --> 10000,init target colorbalance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2852
    .end local v2    # "target":I
    :cond_5
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v6, 0x2710

    if-ne v3, v6, :cond_f

    .line 2853
    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 2854
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2855
    const-string/jumbo v7, "oem_nightmode_progress_status"

    const/16 v8, 0x67

    const/4 v9, -0x2

    .line 2853
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    sub-int/2addr v3, v6

    .line 2856
    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 2853
    sub-int v2, v3, v6

    .line 2857
    .restart local v2    # "target":I
    const/4 v0, 0x0

    .line 2858
    .local v0, "count":I
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f7fbe77    # 0.999f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    .line 2859
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-eq v3, v2, :cond_9

    .line 2860
    const/4 v0, 0x1

    .line 2861
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v3, v2, :cond_8

    const/4 v3, -0x1

    :goto_1
    add-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2862
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2863
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2870
    :goto_2
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f7fbe77    # 0.999f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_7

    .line 2871
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e7ef9db    # 0.249f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e808312    # 0.251f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_b

    .line 2872
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2873
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "changeReading2NightMode mFactor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x2

    .line 2884
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3c4ccccd    # 0.0125f

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2885
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 2887
    :cond_7
    if-lt v0, v10, :cond_d

    .line 2888
    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-virtual {p0, v3, p1, v2, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    .line 2861
    goto :goto_1

    .line 2865
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 2868
    :cond_a
    const/4 v0, 0x1

    goto :goto_2

    .line 2874
    :cond_b
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3efae148    # 0.49f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f028f5c    # 0.51f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_c

    .line 2875
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2876
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2877
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "changeReading2NightMod mFactor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2878
    :cond_c
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f3fbe77    # 0.749f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f404189    # 0.751f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_6

    .line 2879
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2880
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2881
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "changeReading2NightMode mFactor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2889
    :cond_d
    if-ne v0, v4, :cond_e

    .line 2890
    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-virtual {p0, v3, p1, v2, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2892
    :cond_e
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 2893
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "changeReading2NightMode mCurrentNightColorbalance:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "changeReading2NightMode:stage 10000 --> 20000,to be colors and set colorbalance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v2, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2897
    .end local v0    # "count":I
    .end local v2    # "target":I
    :cond_f
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v4, 0x4e20

    if-ne v3, v4, :cond_0

    .line 2898
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2899
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2900
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2901
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2902
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "changeReading2NightMode done(20000)!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private checkColorManageEnable()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3323
    const/16 v1, 0x1388

    .line 3324
    .local v1, "retryCount":I
    :goto_0
    if-lez v1, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v3, :cond_3

    .line 3325
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3326
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->colorManagerInit()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    .line 3328
    :cond_0
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v3, :cond_2

    .line 3329
    rem-int/lit16 v3, v1, 0x12c

    if-nez v3, :cond_1

    .line 3330
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setupApplication()V

    .line 3331
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init error,wait 300ms and reinit,retryCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    :cond_1
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3324
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3335
    :catch_0
    move-exception v0

    .line 3336
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 3340
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private closeMatrix()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 651
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 652
    const-string/jumbo v3, "accessibility_display_daltonizer_enabled"

    .line 651
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 653
    .local v0, "dal":I
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 654
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 653
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 656
    .local v1, "rev":I
    if-eq v0, v6, :cond_0

    if-ne v1, v6, :cond_1

    .line 657
    :cond_0
    return-void

    .line 658
    :cond_1
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_2

    .line 659
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {v2, v4, v7}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 660
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v3, "close matrix!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_2
    return-void
.end method

.method private colorManagerInit()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1956
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v2, :cond_1

    .line 1957
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$5;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$5;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 1963
    .local v0, "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I

    move-result v1

    .line 1964
    .local v1, "retVal":I
    if-eqz v1, :cond_0

    .line 1965
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v3, "Connection failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    return v4

    .line 1968
    :cond_0
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v3, "ColorManager Connected!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    .end local v0    # "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    .end local v1    # "retVal":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .locals 5
    .param p1, "pa"    # [Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .prologue
    .line 3492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    .line 3493
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 3494
    .local v0, "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;

    invoke-direct {v4, p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3495
    .end local v0    # "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    :cond_0
    return-void
.end method

.method private getBalanceByTemprature(I)I
    .locals 11
    .param p1, "CTemp"    # I

    .prologue
    .line 2097
    const/4 v1, 0x0

    .line 2098
    .local v1, "elemIndex":I
    const/16 v2, 0x36

    .line 2099
    .local v2, "elementLen":I
    const/4 v3, 0x0

    .line 2100
    .local v3, "enviroment_step":I
    const/4 v0, 0x0

    .line 2101
    .local v0, "balance":I
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2102
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " when open the reading mode the enviroment color temperature         == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    if-gez p1, :cond_0

    .line 2104
    const-string/jumbo v6, "ColorBalanceService"

    const-string/jumbo v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    const/4 v6, 0x0

    return v6

    .line 2108
    :cond_0
    div-int/lit8 v3, p1, 0x64

    .line 2109
    const/16 v6, 0x1a

    if-ge v3, v6, :cond_2

    .line 2110
    const/4 v3, 0x0

    .line 2121
    :goto_0
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " when in reading mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2123
    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, 0x1

    const/4 v9, -0x2

    .line 2122
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 2124
    .local v5, "status":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 2125
    :cond_1
    sget-object v6, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    aget v0, v6, v3

    .line 2130
    :goto_1
    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v6

    .line 2203
    .end local v5    # "status":I
    :goto_2
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBalanceByTemprature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    return v0

    .line 2111
    :cond_2
    const/16 v6, 0x1a

    if-lt v3, v6, :cond_3

    const/16 v6, 0x24

    if-ge v3, v6, :cond_3

    .line 2112
    const/4 v3, 0x1

    goto :goto_0

    .line 2113
    :cond_3
    const/16 v6, 0x24

    if-lt v3, v6, :cond_4

    const/16 v6, 0x2f

    if-ge v3, v6, :cond_4

    .line 2114
    const/4 v3, 0x2

    goto :goto_0

    .line 2115
    :cond_4
    const/16 v6, 0x2f

    if-lt v3, v6, :cond_5

    const/16 v6, 0x39

    if-ge v3, v6, :cond_5

    .line 2116
    const/4 v3, 0x3

    goto :goto_0

    .line 2117
    :cond_5
    const/16 v6, 0x39

    if-lt v3, v6, :cond_6

    const/16 v6, 0x42

    if-ge v3, v6, :cond_6

    .line 2118
    const/4 v3, 0x4

    goto :goto_0

    .line 2120
    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    .line 2128
    .restart local v5    # "status":I
    :cond_7
    sget-object v6, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    aget v0, v6, v3

    goto :goto_1

    .line 2132
    .end local v5    # "status":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_f

    .line 2134
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " when open the adaption mode the enviroment color temperature         == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    if-gez p1, :cond_9

    .line 2136
    const-string/jumbo v6, "ColorBalanceService"

    const-string/jumbo v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    const/4 v6, 0x0

    return v6

    .line 2140
    :cond_9
    div-int/lit8 v3, p1, 0x64

    .line 2141
    const/16 v6, 0x1a

    if-ge v3, v6, :cond_a

    .line 2142
    const/4 v3, 0x0

    .line 2156
    :goto_3
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " when in adaption mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2158
    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, 0x1

    const/4 v9, -0x2

    .line 2157
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 2159
    .restart local v5    # "status":I
    sget-object v6, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    aget v6, v6, v3

    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int v0, v6, v7

    goto/16 :goto_2

    .line 2143
    .end local v5    # "status":I
    :cond_a
    const/16 v6, 0x1a

    if-lt v3, v6, :cond_b

    const/16 v6, 0x24

    if-ge v3, v6, :cond_b

    .line 2144
    const/4 v3, 0x1

    goto :goto_3

    .line 2145
    :cond_b
    const/16 v6, 0x24

    if-lt v3, v6, :cond_c

    const/16 v6, 0x2f

    if-ge v3, v6, :cond_c

    .line 2146
    const/4 v3, 0x2

    .line 2145
    goto :goto_3

    .line 2148
    :cond_c
    const/16 v6, 0x2f

    if-lt v3, v6, :cond_d

    const/16 v6, 0x39

    if-ge v3, v6, :cond_d

    .line 2149
    const/4 v3, 0x3

    .line 2148
    goto :goto_3

    .line 2151
    :cond_d
    const/16 v6, 0x39

    if-lt v3, v6, :cond_e

    const/16 v6, 0x42

    if-ge v3, v6, :cond_e

    .line 2152
    const/4 v3, 0x4

    goto :goto_3

    .line 2155
    :cond_e
    const/4 v3, 0x5

    goto :goto_3

    .line 2163
    :cond_f
    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 2164
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2165
    const-string/jumbo v8, "oem_nightmode_progress_status"

    const/16 v9, 0x67

    const/4 v10, -0x2

    .line 2163
    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    sub-int v4, v6, v7

    .line 2166
    .local v4, "manualSeekbarPos":I
    const/4 v1, 0x0

    .line 2098
    :goto_4
    const/16 v6, 0x36

    .line 2166
    if-ge v1, v6, :cond_10

    .line 2167
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    aget v6, v6, v1

    if-gt v4, v6, :cond_12

    .line 2175
    :cond_10
    :goto_5
    if-ltz v1, :cond_11

    const/16 v6, 0x35

    if-le v1, v6, :cond_14

    .line 2176
    :cond_11
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Out of range elemIndex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    const/4 v6, 0x0

    return v6

    .line 2170
    :cond_12
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    const/16 v7, 0x35

    aget v6, v6, v7

    if-lt v4, v6, :cond_13

    .line 2171
    const/16 v1, 0x35

    .line 2172
    goto :goto_5

    .line 2166
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2179
    :cond_14
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " when open the night mode the enviroment color temperature         == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    if-gez p1, :cond_15

    .line 2181
    const-string/jumbo v6, "ColorBalanceService"

    const-string/jumbo v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    const/4 v6, 0x0

    return v6

    .line 2185
    :cond_15
    div-int/lit8 v3, p1, 0x64

    .line 2186
    const/16 v6, 0x1a

    if-ge v3, v6, :cond_16

    .line 2187
    const/4 v3, 0x0

    .line 2198
    :goto_6
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " when in night mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    aget-object v6, v6, v1

    aget v0, v6, v3

    .line 2200
    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v6

    goto/16 :goto_2

    .line 2188
    :cond_16
    const/16 v6, 0x1a

    if-lt v3, v6, :cond_17

    const/16 v6, 0x24

    if-ge v3, v6, :cond_17

    .line 2189
    const/4 v3, 0x1

    goto :goto_6

    .line 2190
    :cond_17
    const/16 v6, 0x24

    if-lt v3, v6, :cond_18

    const/16 v6, 0x2f

    if-ge v3, v6, :cond_18

    .line 2191
    const/4 v3, 0x2

    goto :goto_6

    .line 2192
    :cond_18
    const/16 v6, 0x2f

    if-lt v3, v6, :cond_19

    const/16 v6, 0x39

    if-ge v3, v6, :cond_19

    .line 2193
    const/4 v3, 0x3

    goto :goto_6

    .line 2194
    :cond_19
    const/16 v6, 0x39

    if-lt v3, v6, :cond_1a

    const/16 v6, 0x42

    if-ge v3, v6, :cond_1a

    .line 2195
    const/4 v3, 0x4

    goto :goto_6

    .line 2197
    :cond_1a
    const/4 v3, 0x5

    goto :goto_6
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 6
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .prologue
    .line 1269
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    .line 1270
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    .line 1269
    invoke-static {v1, v2, v3, v4, v5}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1273
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    .end local v0    # "ldt":Ljava/time/LocalDateTime;
    :cond_0
    return-object v0
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 6
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .prologue
    .line 1261
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    .line 1262
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    .line 1261
    invoke-static {v1, v2, v3, v4, v5}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1265
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    .end local v0    # "ldt":Ljava/time/LocalDateTime;
    :cond_0
    return-object v0
.end method

.method private handleSRGBSensorEvent(I)V
    .locals 5
    .param p1, "colortemperature"    # I

    .prologue
    const/4 v4, 0x0

    .line 2031
    const/16 v1, 0x7d0

    if-le p1, v1, :cond_2

    const/16 v1, 0x1f40

    if-ge p1, v1, :cond_2

    .line 2032
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    if-nez v1, :cond_0

    .line 2033
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2034
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2035
    return-void

    .line 2037
    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2038
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 2039
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2040
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    .line 2042
    :cond_1
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ge v1, v2, :cond_6

    .line 2043
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2044
    .local v0, "delta":I
    const/16 v1, 0xc8

    if-ge v0, v1, :cond_5

    .line 2045
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2046
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2047
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ne v1, v2, :cond_2

    .line 2048
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    if-nez v1, :cond_3

    .line 2049
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2050
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    .end local v0    # "delta":I
    :cond_2
    :goto_0
    return-void

    .line 2052
    .restart local v0    # "delta":I
    :cond_3
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2053
    const/16 v1, 0x320

    if-ge v0, v1, :cond_4

    .line 2055
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignored,Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2057
    :cond_4
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2058
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    .line 2059
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adjusted,Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2062
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    goto :goto_0

    .line 2068
    :cond_5
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2069
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    goto :goto_0

    .line 2073
    .end local v0    # "delta":I
    :cond_6
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2074
    .restart local v0    # "delta":I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_7

    .line 2076
    return-void

    .line 2079
    :cond_7
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2080
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    goto :goto_0
.end method

.method private isFactoryMode(Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;)Z
    .locals 2
    .param p1, "mode"    # Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;

    .prologue
    .line 3498
    iget-object v0, p1, Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getModeType()Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    if-ne v0, v1, :cond_0

    .line 3499
    const/4 v0, 0x1

    return v0

    .line 3500
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenOn()Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0

    .line 350
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "mPowerManager is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 438
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private modeExists(Ljava/lang/String;)Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;
    .locals 6
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3504
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v2

    .line 3505
    .local v2, "modeDataArray":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    if-eqz v2, :cond_0

    .line 3506
    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    .line 3508
    :cond_0
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 3509
    return-object v5

    .line 3511
    :cond_1
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mode$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;

    .line 3512
    .local v0, "mode":Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;
    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;->modename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3513
    return-object v0

    .line 3516
    .end local v0    # "mode":Lcom/android/server/oneplus/display/ColorBalanceService$ModeInfoWrapper;
    :cond_3
    return-object v5
.end method

.method private nightModeSwitch(ZI)V
    .locals 12
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 2344
    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 2345
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2346
    const-string/jumbo v7, "oem_nightmode_progress_status"

    const/16 v8, 0x67

    const/4 v9, -0x2

    .line 2344
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    sub-int/2addr v5, v6

    .line 2347
    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 2344
    sub-int v1, v5, v6

    .line 2350
    .local v1, "progress":I
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2351
    :try_start_0
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2352
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v4, p2, :cond_1

    .line 2353
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2354
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2355
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2356
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2357
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2358
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2359
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2360
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2361
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2362
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2363
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2364
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2365
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2367
    :cond_0
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2368
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "Screen off,nightModeSwitch ON done!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :goto_0
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v5

    .line 2515
    return-void

    .line 2370
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2371
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2372
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2373
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "Screen off,nightModeSwitch OFF done!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2350
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2378
    :cond_3
    :try_start_2
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v6, p2, :cond_1

    .line 2379
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2380
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v6, v11, :cond_1

    .line 2381
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_d

    .line 2382
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-nez v6, :cond_6

    .line 2383
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2384
    const-string/jumbo v6, "screen_color_mode_settings_value"

    const/4 v7, 0x1

    const/4 v8, -0x2

    .line 2383
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2385
    .local v2, "status":I
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2386
    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    .line 2387
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2388
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2389
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2391
    :cond_4
    if-eq v2, v10, :cond_5

    .line 2392
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2393
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2394
    const/16 v4, 0x2b

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2395
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2396
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 0 --> 3,default!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :goto_2
    const/16 v4, 0xa

    invoke-virtual {p0, v4, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1

    .line 2398
    :cond_5
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2399
    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v7, 0x39

    .line 2400
    const/4 v8, -0x2

    .line 2398
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2401
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2402
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 0 --> 2,status 3,setting customer to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2405
    .end local v2    # "status":I
    :cond_6
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v6, v11, :cond_9

    .line 2406
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2407
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_7

    .line 2408
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2409
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 2 --> 3,default!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2411
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2412
    const/16 v4, 0x2b

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2416
    :goto_3
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_1

    .line 2414
    :cond_7
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v8, 0x2b

    if-le v7, v8, :cond_8

    const/4 v4, -0x1

    :cond_8
    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    goto :goto_3

    .line 2417
    :cond_9
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v4, v10, :cond_c

    .line 2419
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v4, v1, :cond_a

    .line 2420
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2421
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightModeSwitch ON: 3 --> 4, SET Balance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    :goto_4
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2427
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_1

    .line 2423
    :cond_a
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v4, v1, :cond_b

    const/4 v0, -0x1

    .line 2424
    .local v0, "delta":I
    :goto_5
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    goto :goto_4

    .line 2423
    .end local v0    # "delta":I
    :cond_b
    const/4 v0, 0x1

    .restart local v0    # "delta":I
    goto :goto_5

    .line 2428
    .end local v0    # "delta":I
    :cond_c
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 2429
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2430
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2431
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2432
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2433
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON done!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2436
    :cond_d
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2437
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2438
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2439
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "#2 night mode had been opened!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2441
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    .line 2442
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2443
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2444
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2445
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2446
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2447
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_1

    .line 2451
    :cond_e
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v6, :cond_1

    .line 2452
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-nez v6, :cond_11

    .line 2453
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v6, 0x2b

    if-ne v6, v4, :cond_f

    .line 2454
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2455
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2456
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF 0 --> 1,colorBalance default!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2458
    :cond_f
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v6, 0x2b

    if-le v4, v6, :cond_10

    const/4 v0, -0x1

    .line 2459
    .restart local v0    # "delta":I
    :goto_6
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2460
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2461
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_1

    .line 2458
    .end local v0    # "delta":I
    :cond_10
    const/4 v0, 0x1

    .restart local v0    # "delta":I
    goto :goto_6

    .line 2463
    .end local v0    # "delta":I
    :cond_11
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v6, v4, :cond_13

    .line 2464
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    move-result v2

    .line 2465
    .restart local v2    # "status":I
    if-eq v2, v10, :cond_12

    .line 2466
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2467
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2468
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:1 --> 3, revertStatus"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :goto_7
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_1

    .line 2470
    :cond_12
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2471
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2472
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2474
    const/16 v4, 0x2b

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2475
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2476
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:1 --> 2,be status 3"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2479
    .end local v2    # "status":I
    :cond_13
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v4, v11, :cond_16

    .line 2480
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2481
    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v7, 0x39

    .line 2482
    const/4 v8, -0x2

    .line 2480
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x64

    .line 2483
    .local v3, "value":I
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v4, v3, :cond_14

    .line 2484
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2485
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2486
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:2 --> 3,status 3 done!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2488
    :cond_14
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v4, v3, :cond_15

    const/4 v0, -0x1

    .line 2489
    .restart local v0    # "delta":I
    :goto_8
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2490
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2491
    const/16 v4, 0xa

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-virtual {p0, v4, p2, v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_1

    .line 2488
    .end local v0    # "delta":I
    :cond_15
    const/4 v0, 0x1

    .restart local v0    # "delta":I
    goto :goto_8

    .line 2493
    .end local v0    # "delta":I
    .end local v3    # "value":I
    :cond_16
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v4, v10, :cond_1

    .line 2494
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2495
    const-string/jumbo v6, "screen_color_mode_settings_value"

    const/4 v7, 0x1

    const/4 v8, -0x2

    .line 2494
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2496
    .restart local v2    # "status":I
    const/4 v4, 0x5

    if-eq v2, v4, :cond_17

    .line 2497
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2503
    :goto_9
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF done!"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2505
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2506
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2507
    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v7, 0x39

    .line 2508
    const/4 v8, -0x2

    .line 2506
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    goto/16 :goto_1

    .line 2499
    :cond_17
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2500
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2501
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9
.end method

.method private onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x2710

    .line 401
    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 402
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 405
    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 411
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    .line 413
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_1

    .line 414
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 415
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$4;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$4;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 429
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 430
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v4, 0x0

    .line 429
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 435
    :cond_1
    :goto_1
    return-void

    .line 406
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->tearDown()V

    goto :goto_0

    .line 431
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 432
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    goto :goto_1
.end method

.method private oneplusSetColorBalance(II)V
    .locals 26
    .param p1, "iValue"    # I
    .param p2, "delta"    # I

    .prologue
    .line 3060
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 3061
    .local v4, "r":D
    const-wide/16 v6, 0x0

    .line 3062
    .local v6, "g":D
    const-wide/16 v8, 0x0

    .line 3063
    .local v8, "b":D
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 3064
    .local v16, "value":D
    move/from16 v0, p2

    int-to-double v10, v0

    .line 3065
    .local v10, "dDelta":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 3066
    .local v14, "factor":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 3067
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v19, 0x1fa264c

    move/from16 v0, v19

    if-eq v3, v0, :cond_0

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v19, 0x1fa2639

    move/from16 v0, v19

    if-ne v3, v0, :cond_9

    .line 3068
    :cond_0
    const/16 v3, 0x64

    move/from16 v0, p1

    if-le v0, v3, :cond_1

    const/16 v3, -0x64

    move/from16 v0, p1

    if-ge v0, v3, :cond_1

    .line 3069
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "oneplusSetColorBalance ERROR:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v18

    .line 3070
    return-void

    .line 3072
    :cond_1
    const-wide v20, 0x4045800000000000L    # 43.0

    cmpg-double v3, v16, v20

    if-ltz v3, :cond_2

    const-wide v20, 0x4045800000000000L    # 43.0

    cmpl-double v3, v16, v20

    if-nez v3, :cond_6

    .line 3073
    :cond_2
    if-nez p2, :cond_4

    .line 3076
    const-wide v20, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3feec8d01dba252aL    # 0.9620133

    add-double v6, v20, v22

    .line 3077
    const-wide v20, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v8, v20, v22

    .line 3079
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v3, :cond_3

    .line 3080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v18

    .line 3224
    return-void

    .line 3081
    :catch_0
    move-exception v12

    .line 3082
    .local v12, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v19, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3066
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    monitor-exit v18

    throw v3

    .line 3086
    :cond_4
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v13, v3, :cond_3

    .line 3087
    const-wide v20, 0x3fc999999999999aL    # 0.2

    sub-double v14, v14, v20

    .line 3088
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v22, v10, v14

    sub-double v16, v20, v22

    .line 3091
    const-wide v20, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3feec8d01dba252aL    # 0.9620133

    add-double v6, v20, v22

    .line 3092
    const-wide v20, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v8, v20, v22

    .line 3094
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v3, :cond_5

    .line 3095
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3100
    :cond_5
    :goto_2
    const-wide/16 v20, 0xf

    :try_start_4
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3086
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3096
    :catch_1
    move-exception v12

    .line 3097
    .restart local v12    # "e":Ljava/lang/NullPointerException;
    :try_start_5
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v19, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3101
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 3102
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 3107
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v13    # "i":I
    :cond_6
    if-nez p2, :cond_7

    .line 3110
    const-wide v20, 0x3eb315b4cbbda110L    # 1.1375421271279822E-6

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, -0x40b292b87d9c6930L    # -8.980368773136797E-4

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3ff0958debe66d88L    # 1.0365123

    add-double v4, v20, v22

    .line 3111
    const-wide v20, -0x41554c77250726f2L    # -7.9576095929934E-7

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3ff04461f9f01b86L    # 1.016695

    add-double v6, v20, v22

    .line 3112
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 3114
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v3, :cond_3

    .line 3115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 3116
    :catch_3
    move-exception v12

    .line 3117
    .restart local v12    # "e":Ljava/lang/NullPointerException;
    :try_start_7
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v19, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 3120
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    const/4 v3, 0x5

    if-ge v13, v3, :cond_3

    .line 3121
    const-wide v20, 0x3fc999999999999aL    # 0.2

    sub-double v14, v14, v20

    .line 3122
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v22, v10, v14

    sub-double v16, v20, v22

    .line 3125
    const-wide v20, 0x3eb315b4cbbda110L    # 1.1375421271279822E-6

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, -0x40b292b87d9c6930L    # -8.980368773136797E-4

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3ff0958debe66d88L    # 1.0365123

    add-double v4, v20, v22

    .line 3126
    const-wide v20, -0x41554c77250726f2L    # -7.9576095929934E-7

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3ff04461f9f01b86L    # 1.016695

    add-double v6, v20, v22

    .line 3127
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 3130
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v3, :cond_8

    .line 3131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3136
    :cond_8
    :goto_5
    const-wide/16 v20, 0xf

    :try_start_9
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3120
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 3132
    :catch_4
    move-exception v12

    .line 3133
    .restart local v12    # "e":Ljava/lang/NullPointerException;
    :try_start_a
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v19, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3137
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v2

    .line 3138
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 3146
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v13    # "i":I
    :cond_9
    const/16 v3, 0x64

    move/from16 v0, p1

    if-le v0, v3, :cond_a

    const/16 v3, -0x64

    move/from16 v0, p1

    if-ge v0, v3, :cond_a

    .line 3147
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "oneplusSetColorBalance ERROR:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit v18

    .line 3148
    return-void

    .line 3150
    :cond_a
    const-wide v20, 0x4045800000000000L    # 43.0

    cmpg-double v3, v16, v20

    if-ltz v3, :cond_b

    const-wide v20, 0x4045800000000000L    # 43.0

    cmpl-double v3, v16, v20

    if-nez v3, :cond_e

    .line 3151
    :cond_b
    if-nez p2, :cond_c

    .line 3154
    const-wide v20, 0x3ff072b020c49ba6L    # 1.028

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v20, v20, v22

    const-wide v22, -0x400522d0e5604189L    # -1.679

    mul-double v22, v22, v16

    mul-double v22, v22, v16

    const-wide v24, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, 0x3f66feb4a66559f7L    # 0.002807

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v6, v20, v22

    .line 3155
    const-wide v20, -0x4009b22d0e560419L    # -1.394

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v20, v20, v22

    const-wide v22, -0x3fff9db22d0e5604L    # -2.048

    mul-double v22, v22, v16

    mul-double v22, v22, v16

    const-wide v24, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v8, v20, v22

    .line 3158
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v3, :cond_3

    .line 3159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 3160
    :catch_6
    move-exception v12

    .line 3161
    .restart local v12    # "e":Ljava/lang/NullPointerException;
    :try_start_c
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v19, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 3165
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :cond_c
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    const/4 v3, 0x5

    if-ge v13, v3, :cond_3

    .line 3166
    const-wide v20, 0x3fc999999999999aL    # 0.2

    sub-double v14, v14, v20

    .line 3167
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v22, v10, v14

    sub-double v16, v20, v22

    .line 3170
    const-wide v20, 0x3ff072b020c49ba6L    # 1.028

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v20, v20, v22

    const-wide v22, -0x400522d0e5604189L    # -1.679

    mul-double v22, v22, v16

    mul-double v22, v22, v16

    const-wide v24, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, 0x3f66feb4a66559f7L    # 0.002807

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v6, v20, v22

    .line 3171
    const-wide v20, -0x4009b22d0e560419L    # -1.394

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v20, v20, v22

    const-wide v22, -0x3fff9db22d0e5604L    # -2.048

    mul-double v22, v22, v16

    mul-double v22, v22, v16

    const-wide v24, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v8, v20, v22

    .line 3174
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v3, :cond_d

    .line 3175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 3180
    :cond_d
    :goto_8
    const-wide/16 v20, 0xf

    :try_start_e
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3165
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 3176
    :catch_7
    move-exception v12

    .line 3177
    .restart local v12    # "e":Ljava/lang/NullPointerException;
    :try_start_f
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v19, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3181
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :catch_8
    move-exception v2

    .line 3182
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9

    .line 3187
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v13    # "i":I
    :cond_e
    if-nez p2, :cond_f

    .line 3190
    const-wide v20, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v20, v20, v22

    const-wide v22, 0x3ff02d0e56041893L    # 1.011

    mul-double v22, v22, v16

    mul-double v22, v22, v16

    const-wide v24, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3ff63126e978d4feL    # 1.387

    add-double v4, v20, v22

    .line 3191
    const-wide v20, 0x3ff553f7ced91687L    # 1.333

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v20, v20, v22

    const-wide v22, -0x3fffeb851eb851ecL    # -2.01

    mul-double v22, v22, v16

    mul-double v22, v22, v16

    const-wide v24, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, 0x3f7c0767d34df04eL    # 0.006843

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3feef765fd8adabaL    # 0.9677

    add-double v6, v20, v22

    .line 3192
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 3194
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v3, :cond_3

    .line 3195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 3196
    :catch_9
    move-exception v12

    .line 3197
    .restart local v12    # "e":Ljava/lang/NullPointerException;
    :try_start_11
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v19, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 3200
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :cond_f
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_a
    const/4 v3, 0x5

    if-ge v13, v3, :cond_3

    .line 3201
    const-wide v20, 0x3fc999999999999aL    # 0.2

    sub-double v14, v14, v20

    .line 3202
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v22, v10, v14

    sub-double v16, v20, v22

    .line 3205
    const-wide v20, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    mul-double v20, v20, v22

    const-wide v22, 0x3ff02d0e56041893L    # 1.011

    mul-double v22, v22, v16

    mul-double v22, v22, v16

    const-wide v24, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3ff63126e978d4feL    # 1.387

    add-double v4, v20, v22

    .line 3206
    const-wide v20, 0x3ff553f7ced91687L    # 1.333

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    mul-double v20, v20, v16

    const-wide v22, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v20, v20, v22

    const-wide v22, -0x3fffeb851eb851ecL    # -2.01

    mul-double v22, v22, v16

    mul-double v22, v22, v16

    const-wide v24, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, 0x3f7c0767d34df04eL    # 0.006843

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3feef765fd8adabaL    # 0.9677

    add-double v6, v20, v22

    .line 3207
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 3209
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v3, :cond_10

    .line 3210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 3215
    :cond_10
    :goto_b
    const-wide/16 v20, 0xf

    :try_start_13
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 3200
    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a

    .line 3211
    :catch_a
    move-exception v12

    .line 3212
    .restart local v12    # "e":Ljava/lang/NullPointerException;
    :try_start_14
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v19, "mSDM.SetUsrColorBalanceConfig error!"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3216
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v2

    .line 3217
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_c
.end method

.method private opSetColorBalance(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "delta"    # I

    .prologue
    .line 667
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "opSetColorBalance: value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->oneplusSetColorBalance(II)V

    .line 670
    return-void
.end method

.method private processEnvironmentChange()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1974
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1975
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1976
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1977
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x8

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1978
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v4

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1979
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 1980
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NightMode mCurrentNightColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v5, v1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_0

    .line 1982
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v5, v1, Landroid/os/Message;->arg1:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int v4, v7, v4

    int-to-long v2, v4

    .line 1983
    .local v2, "delay":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1984
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "delay"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1985
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1986
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_0

    .line 1987
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1988
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NightMode mCurrentNightColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "delay":J
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 1992
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1993
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1994
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v4, 0x9

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1995
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v4

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 1996
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 1997
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_0

    .line 1999
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Landroid/os/Message;->arg1:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int v4, v7, v4

    int-to-long v2, v4

    .line 2000
    .restart local v2    # "delay":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2001
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "delay"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2002
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2003
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_0

    .line 2004
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2005
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " delay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2008
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "delay":J
    :cond_2
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2009
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2010
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2011
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v4, 0x14

    iput v4, v1, Landroid/os/Message;->what:I

    .line 2012
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v4

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 2013
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 2014
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoMode mCurrenAdaptionColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v5, v1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_0

    .line 2016
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v5, v1, Landroid/os/Message;->arg1:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x12c

    div-int v4, v5, v4

    int-to-long v2, v4

    .line 2017
    .restart local v2    # "delay":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2018
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "delay"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2019
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2020
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_0

    .line 2021
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2022
    const-string/jumbo v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AutoMode mCurrentAdaptionColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3283
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "delay"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3284
    .local v2, "delay":J
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 3285
    .local v4, "generation":I
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 3288
    .local v7, "target":I
    const-string/jumbo v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processEnvironmentColorChangeAtAdaptionMode:++++mIsAutoModeActivated = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 3290
    const-string/jumbo v9, "screen_color_mode_settings_value"

    const/4 v10, -0x2

    .line 3289
    invoke-static {v8, v9, v12, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 3292
    .local v6, "status":I
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    if-ne v6, v12, :cond_0

    .line 3294
    const/16 v8, 0x2b

    invoke-direct {p0, v8, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3295
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v8, v11}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 3297
    :cond_0
    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3299
    :try_start_0
    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v4, v8, :cond_1

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3300
    const-string/jumbo v8, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "AdaptionMode mCurrentAdaptionColorbalance: == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-le v8, v7, :cond_2

    const/4 v1, -0x1

    .line 3302
    .local v1, "delta":I
    :goto_0
    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 3303
    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-direct {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3305
    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-eq v8, v7, :cond_3

    .line 3306
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v8, :cond_1

    .line 3307
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 3308
    .local v5, "msg2":Landroid/os/Message;
    iget v8, p1, Landroid/os/Message;->what:I

    iput v8, v5, Landroid/os/Message;->what:I

    .line 3309
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3310
    .local v0, "bundle":Landroid/os/Bundle;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v5, Landroid/os/Message;->arg1:I

    .line 3311
    iget v8, p1, Landroid/os/Message;->arg2:I

    iput v8, v5, Landroid/os/Message;->arg2:I

    .line 3312
    const-string/jumbo v8, "delay"

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3313
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3314
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v8, v5, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "delta":I
    .end local v5    # "msg2":Landroid/os/Message;
    :cond_1
    :goto_1
    monitor-exit v9

    .line 3321
    return-void

    .line 3301
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "delta":I
    goto :goto_0

    .line 3317
    :cond_3
    :try_start_1
    const-string/jumbo v8, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "AdaptionMode shading done,mCurrentaAdaptionColorbalance:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " target:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3297
    .end local v1    # "delta":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3227
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "delay"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3228
    .local v2, "delay":J
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 3229
    .local v5, "generation":I
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 3230
    .local v7, "target":I
    sget v8, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 3231
    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 3232
    const-string/jumbo v10, "oem_nightmode_progress_status"

    const/16 v11, 0x67

    const/4 v12, -0x2

    .line 3231
    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 3230
    sub-int/2addr v8, v9

    .line 3233
    sget v9, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 3230
    sub-int v1, v8, v9

    .line 3234
    .local v1, "currentSeekBar":I
    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v5, v8, :cond_0

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    if-ne v1, v8, :cond_0

    .line 3235
    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v8, v7, :cond_1

    const/4 v4, -0x1

    .line 3236
    .local v4, "delta":I
    :goto_0
    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3237
    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v8, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3238
    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eq v8, v9, :cond_2

    .line 3239
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v8, :cond_0

    .line 3240
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 3241
    .local v6, "msg2":Landroid/os/Message;
    iget v8, p1, Landroid/os/Message;->what:I

    iput v8, v6, Landroid/os/Message;->what:I

    .line 3242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3243
    .local v0, "bundle":Landroid/os/Bundle;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v6, Landroid/os/Message;->arg1:I

    .line 3244
    iget v8, p1, Landroid/os/Message;->arg2:I

    iput v8, v6, Landroid/os/Message;->arg2:I

    .line 3245
    const-string/jumbo v8, "delay"

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3246
    invoke-virtual {v6, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3247
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v8, v6, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3253
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "delta":I
    .end local v6    # "msg2":Landroid/os/Message;
    :cond_0
    :goto_1
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    .line 3255
    return-void

    .line 3235
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "delta":I
    goto :goto_0

    .line 3250
    :cond_2
    const-string/jumbo v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shading done,mCurrentNightColorbalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " target:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3257
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "delay"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3258
    .local v2, "delay":J
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 3259
    .local v4, "generation":I
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 3261
    .local v6, "target":I
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v4, v7, :cond_0

    .line 3262
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v7, v6, :cond_1

    const/4 v1, -0x1

    .line 3263
    .local v1, "delta":I
    :goto_0
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 3264
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v7, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3266
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v7, v6, :cond_2

    .line 3267
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v7, :cond_0

    .line 3268
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 3269
    .local v5, "msg2":Landroid/os/Message;
    iget v7, p1, Landroid/os/Message;->what:I

    iput v7, v5, Landroid/os/Message;->what:I

    .line 3270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3271
    .local v0, "bundle":Landroid/os/Bundle;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 3272
    iget v7, p1, Landroid/os/Message;->arg2:I

    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 3273
    const-string/jumbo v7, "delay"

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3274
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3275
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v7, v5, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3281
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "delta":I
    .end local v5    # "msg2":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 3262
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "delta":I
    goto :goto_0

    .line 3278
    :cond_2
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shading done,mCurrentReadingColorbalance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private processScreenOn(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 3010
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3011
    :try_start_0
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    if-eqz p1, :cond_6

    .line 3013
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3015
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3026
    :cond_2
    :goto_0
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v3, 0x1fa2639

    if-ne v1, v3, :cond_3

    .line 3027
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v2

    .line 3032
    return-void

    .line 3017
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3018
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3019
    const-string/jumbo v3, "screen_color_mode_settings_value"

    const/4 v4, 0x1

    const/4 v5, -0x2

    .line 3018
    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3020
    .local v0, "status_new":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3021
    :cond_5
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 3022
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3010
    .end local v0    # "status_new":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3029
    :cond_6
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private processSetColorBalance(I)V
    .locals 3
    .param p1, "setColorBalance"    # I

    .prologue
    .line 3350
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    .line 3351
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MSG_SET_COLORBALANCE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mStartSetCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v0, :cond_0

    .line 3353
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3354
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->shading(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3357
    :cond_0
    return-void
.end method

.method private readingModeSwitch(ZII)V
    .locals 10
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v8, 0x6

    const/16 v7, 0x4e20

    const/4 v3, 0x1

    .line 2518
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2519
    :try_start_0
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2520
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v3, p2, :cond_1

    .line 2521
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2522
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2523
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2524
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2525
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2526
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2527
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2528
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2529
    const/16 v3, 0x1a90

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2530
    const/16 v3, -0x14

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2531
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "Screen off,readingModeSwitch ON done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    const v3, 0x9c40

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2533
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2534
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2535
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2537
    :cond_0
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v5

    .line 2801
    return-void

    .line 2540
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2541
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2542
    :cond_3
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2543
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2544
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2545
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "Screen off,readingModeSwitch OFF done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2518
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .line 2549
    :cond_4
    :try_start_2
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v4, p2, :cond_1

    .line 2550
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2551
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x1f4

    if-ne v4, v6, :cond_5

    .line 2552
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2553
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2554
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2555
    const v3, 0x9c40

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2556
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2557
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON, mReadingModeClosingStage 500,to be on done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 2558
    return-void

    .line 2560
    :cond_5
    :try_start_3
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v4, v8, :cond_1

    .line 2561
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_19

    .line 2562
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-nez v4, :cond_8

    .line 2563
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2564
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2565
    const-string/jumbo v4, "screen_color_mode_settings_value"

    const/4 v6, 0x1

    const/4 v7, -0x2

    .line 2564
    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2566
    .local v0, "status":I
    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    .line 2567
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2568
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2569
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2571
    :cond_6
    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    .line 2572
    const/16 v3, 0x3a98

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2573
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2574
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON:stage 0 --> 15000,colorBalance default"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2576
    :cond_7
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2577
    const-string/jumbo v4, "oem_screen_better_value"

    const/16 v6, 0x39

    .line 2578
    const/4 v7, -0x2

    .line 2576
    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2579
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2580
    const/16 v3, 0x2710

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2581
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x5

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2582
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON:stage 0 --> 10000,status 3,to be default"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2584
    .end local v0    # "status":I
    :cond_8
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v6, 0x2710

    if-ne v4, v6, :cond_b

    .line 2585
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v6, 0x2b

    if-ne v4, v6, :cond_9

    .line 2586
    const/16 v3, 0x3a98

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2587
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2588
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON:,10000 --> 15000, default now"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2590
    :cond_9
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v7, 0x2b

    if-le v6, v7, :cond_a

    const/4 v3, -0x1

    :cond_a
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2591
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2592
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x7

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2595
    :cond_b
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v6, 0x3a98

    if-ne v4, v6, :cond_14

    .line 2596
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_e

    .line 2597
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2598
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2599
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2600
    const/16 v3, 0x2b

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2602
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_c

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v4, 0x1f40

    if-ge v3, v4, :cond_c

    .line 2603
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    .line 2608
    .local v1, "target":I
    :goto_1
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mStableColor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    const/16 v3, 0xb

    const/16 v4, 0x96

    invoke-virtual {p0, v3, p2, v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2610
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON:,15000 --> 20000, B & W now!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2604
    .end local v1    # "target":I
    :cond_c
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_d

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v4, 0x1f40

    if-ge v3, v4, :cond_d

    .line 2605
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    .restart local v1    # "target":I
    goto :goto_1

    .line 2607
    .end local v1    # "target":I
    :cond_d
    const/16 v1, -0x14

    .restart local v1    # "target":I
    goto :goto_1

    .line 2612
    .end local v1    # "target":I
    :cond_e
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v3, v6, v8

    if-lez v3, :cond_11

    .line 2613
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2631
    :cond_f
    :goto_2
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2632
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3cf5c28f    # 0.03f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_10

    .line 2633
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2635
    :cond_10
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2636
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2637
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v6, 0x10

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2617
    :cond_11
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f39930c    # 0.7249f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f39a027    # 0.7251f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12

    .line 2618
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2620
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    goto :goto_2

    .line 2622
    :cond_12
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3efae148    # 0.49f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f028f5c    # 0.51f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_13

    .line 2623
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2624
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2625
    :cond_13
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e7ef9db    # 0.249f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e808312    # 0.251f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_f

    .line 2626
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2627
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2629
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2639
    :cond_14
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v4, v7, :cond_17

    .line 2640
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v4, p3, :cond_15

    .line 2641
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2642
    const/16 v3, 0x7530

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2643
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2644
    iput p3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2646
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, p3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2647
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:,2000 --> 30000  reading colorBalance:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2649
    :cond_15
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, p3, :cond_16

    const/4 v3, -0x1

    :cond_16
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2650
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2651
    const/16 v3, 0xb

    const/4 v4, 0x7

    invoke-virtual {p0, v3, p2, p3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2653
    :cond_17
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v4, 0x7530

    if-ne v3, v4, :cond_1

    .line 2654
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v3, v6, v8

    if-lez v3, :cond_18

    .line 2655
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2656
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2657
    const v3, 0x9c40

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2658
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2659
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON Done(30000 -> 40000)"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2661
    :cond_18
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2662
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2663
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2664
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v6, 0x10

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2668
    :cond_19
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2669
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2670
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    .line 2671
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2672
    const/16 v3, 0x1a90

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2673
    const/16 v3, -0x14

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2674
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch ON done!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2676
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2677
    const v3, 0x9c40

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2678
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_0

    .line 2682
    :cond_1a
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_1

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v4, :cond_1

    .line 2683
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-eqz v4, :cond_1b

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x1f4

    if-ne v4, v6, :cond_1f

    .line 2684
    :cond_1b
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v3, v6, v8

    if-gez v3, :cond_1e

    .line 2685
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2686
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2687
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2688
    const/16 v1, 0x2b

    .line 2689
    .restart local v1    # "target":I
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2690
    const-string/jumbo v4, "screen_color_mode_settings_value"

    const/4 v6, 0x1

    const/4 v7, -0x2

    .line 2689
    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2691
    .restart local v0    # "status":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1d

    .line 2692
    :cond_1c
    const/16 v1, 0x2d

    .line 2694
    :cond_1d
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2695
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF:stage 0 --> 1000,Matrix be B & W"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2697
    .end local v0    # "status":I
    .end local v1    # "target":I
    :cond_1e
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2698
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2699
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2700
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2701
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v6, 0x8

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2702
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF: mReadingModeClosingStage:-->500,mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2704
    :cond_1f
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x3e8

    if-ne v4, v6, :cond_25

    .line 2705
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v4, p3, :cond_20

    .line 2706
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2707
    const/16 v3, 0x9c4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2708
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 1000 --> 2500,colorBalance default:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2711
    :cond_20
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v4, p3, :cond_24

    const/4 v4, -0x1

    :goto_3
    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2712
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v4, p3, :cond_22

    .line 2713
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, p3, :cond_21

    const/4 v3, -0x1

    :cond_21
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2714
    :cond_22
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const v4, 0x9c40

    if-ne v3, v4, :cond_23

    .line 2715
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2718
    :cond_23
    const/16 v3, 0xb

    const/4 v4, 0x5

    invoke-virtual {p0, v3, p2, p3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    :cond_24
    move v4, v3

    .line 2711
    goto :goto_3

    .line 2720
    :cond_25
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x9c4

    if-ne v4, v6, :cond_2b

    .line 2721
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v3

    const-wide v8, 0x3feff7ced916872bL    # 0.999

    cmpl-double v3, v6, v8

    if-lez v3, :cond_26

    .line 2722
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2723
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2724
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF:stage 2500 --> 5000,be Colors"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2727
    :cond_26
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3d48b439    # 0.049f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_28

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3d50e560    # 0.051f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_28

    .line 2728
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2743
    :cond_27
    :goto_4
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3c4ccccd    # 0.0125f

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2744
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2745
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2746
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v6, 0xf

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2730
    :cond_28
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e7ef9db    # 0.249f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_29

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3e808312    # 0.251f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_29

    .line 2731
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2732
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2733
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2734
    :cond_29
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3efae148    # 0.49f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2a

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f028f5c    # 0.51f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2a

    .line 2735
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2736
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2737
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2738
    :cond_2a
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f3fbe77    # 0.749f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_27

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3f404189    # 0.751f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_27

    .line 2739
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2740
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2741
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2748
    :cond_2b
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x1388

    if-ne v4, v6, :cond_2f

    .line 2749
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2750
    const-string/jumbo v6, "screen_color_mode_settings_value"

    const/4 v7, 0x1

    const/4 v8, -0x2

    .line 2749
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2751
    .restart local v0    # "status":I
    if-ne v0, v3, :cond_2c

    .line 2752
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2753
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2754
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2755
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF:stage:5000 --> 20000,reverstatus"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    :goto_5
    const/16 v3, 0xb

    invoke-virtual {p0, v3, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_0

    .line 2756
    :cond_2c
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2d

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2e

    .line 2757
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2758
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2760
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF: srgb stage:5000 --> 20000,status:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2762
    :cond_2e
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2763
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2764
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2765
    const/16 v3, 0x2b

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2766
    const/16 v3, 0x2710

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2767
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF:stage:5000 --> 10000,status 3"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2770
    .end local v0    # "status":I
    :cond_2f
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v6, 0x2710

    if-ne v4, v6, :cond_32

    .line 2771
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2772
    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v7, 0x2b

    .line 2773
    const/4 v8, -0x2

    .line 2771
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    rsub-int/lit8 v2, v4, 0x64

    .line 2774
    .local v2, "value":I
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v4, v2, :cond_30

    .line 2775
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2776
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF:stage:10000 -> 20000,status 3,be customer colorbalance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :goto_6
    const/16 v3, 0xb

    const/4 v4, 0x0

    const/16 v6, 0xa

    invoke-virtual {p0, v3, p2, v4, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_0

    .line 2778
    :cond_30
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v2, :cond_31

    const/4 v3, -0x1

    :cond_31
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2779
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_6

    .line 2782
    .end local v2    # "value":I
    :cond_32
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-ne v3, v7, :cond_1

    .line 2783
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2784
    const-string/jumbo v4, "screen_color_mode_settings_value"

    const/4 v6, 0x1

    const/4 v7, -0x2

    .line 2783
    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2785
    .restart local v0    # "status":I
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V

    .line 2786
    const/4 v3, 0x5

    if-eq v0, v3, :cond_33

    .line 2787
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2793
    :goto_7
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2794
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "readingModeSwitch OFF done(-->2000)!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2789
    :cond_33
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2790
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2791
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7
.end method

.method private revertStatus()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/16 v7, 0x2b

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 672
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 673
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 674
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v2, :cond_0

    .line 675
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v3, "revertStatus:mCmgr is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void

    .line 678
    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 679
    const-string/jumbo v3, "screen_color_mode_settings_value"

    .line 678
    invoke-static {v2, v3, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 680
    .local v0, "status":I
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "revertStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    packed-switch v0, :pswitch_data_0

    .line 751
    :goto_0
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->saveColorModeInternal()V

    .line 752
    return-void

    .line 684
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 685
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 686
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 687
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 688
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 689
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 690
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 691
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 692
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 693
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    goto :goto_0

    .line 696
    :pswitch_1
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 697
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 698
    invoke-direct {p0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 699
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 700
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 701
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    goto :goto_0

    .line 704
    :pswitch_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 705
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 706
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 707
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 708
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 709
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 710
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 711
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 712
    const-string/jumbo v3, "oem_screen_better_value"

    const/16 v4, 0x39

    .line 711
    invoke-static {v2, v3, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    rsub-int/lit8 v1, v2, 0x64

    .line 714
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 715
    invoke-direct {p0, v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 716
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 717
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "customer value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 720
    .end local v1    # "value":I
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 721
    invoke-direct {p0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 722
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 723
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 724
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 725
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    goto/16 :goto_0

    .line 728
    :pswitch_4
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 729
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 730
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 731
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 732
    invoke-direct {p0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 733
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 734
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 735
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    invoke-direct {p0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 737
    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 738
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 741
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 742
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 743
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 744
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 745
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 746
    invoke-direct {p0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 747
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 748
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    goto/16 :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private saveColorModeInternal()V
    .locals 0

    .prologue
    .line 3521
    return-void
.end method

.method private sendMsgInternal(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 3469
    invoke-virtual {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 3470
    return-void
.end method

.method private setAdaptitionColorMode(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 599
    if-eqz p1, :cond_0

    .line 600
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "AdaptitionColorMode,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string/jumbo v0, "sys.automode"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :goto_0
    return-void

    .line 603
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "AdaptitionColorMode,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string/jumbo v0, "sys.automode"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setColorMartix(F)V
    .locals 8
    .param p1, "factor"    # F

    .prologue
    const v7, 0x3f1c01a3    # 0.6094f

    const v6, 0x3e9e00d2    # 0.3086f

    const v5, 0x3da7ef9e    # 0.082f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 3600
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v6

    add-float/2addr v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3601
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v6

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3602
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v6

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 3603
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 3604
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v7

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 3605
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v7

    add-float/2addr v1, p1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 3606
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v7

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 3607
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v1, 0x7

    aput v4, v0, v1

    .line 3608
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v5

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 3609
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v5

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 3610
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v1, v3, p1

    mul-float/2addr v1, v5

    add-float/2addr v1, p1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 3611
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xb

    aput v4, v0, v1

    .line 3612
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xc

    aput v4, v0, v1

    .line 3613
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xd

    aput v4, v0, v1

    .line 3614
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xe

    aput v4, v0, v1

    .line 3615
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 3616
    return-void
.end method

.method private setColorMartixNight2ReadingBW(FFFFF)V
    .locals 8
    .param p1, "RED"    # F
    .param p2, "Green"    # F
    .param p3, "Blue"    # F
    .param p4, "factor"    # F
    .param p5, "factor2"    # F

    .prologue
    const v7, 0x3e9e00d2    # 0.3086f

    const v6, 0x3da7ef9e    # 0.082f

    const/4 v5, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 3618
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p1, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v7

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    add-float/2addr v1, p5

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3619
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p1, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v7

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3620
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p1, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v7

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 3621
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v1, 0x3

    aput v5, v0, v1

    .line 3622
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p2, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    const v2, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v1, v2

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 3623
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p2, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    const v2, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v1, v2

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    add-float/2addr v1, p5

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 3624
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p2, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    const v2, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v1, v2

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 3625
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v1, 0x7

    aput v5, v0, v1

    .line 3626
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p3, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v6

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 3627
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p3, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v6

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 3628
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p3, v4

    sub-float v2, v3, p4

    mul-float/2addr v1, v2

    add-float/2addr v1, p4

    mul-float/2addr v1, v6

    sub-float v2, v3, p5

    mul-float/2addr v1, v2

    add-float/2addr v1, p5

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 3629
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xb

    aput v5, v0, v1

    .line 3630
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xc

    aput v5, v0, v1

    .line 3631
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xd

    aput v5, v0, v1

    .line 3632
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xe

    aput v5, v0, v1

    .line 3633
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 3634
    return-void
.end method

.method private setColorMatrixNight2Reading(F)V
    .locals 7
    .param p1, "factor"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 3636
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3637
    const-string/jumbo v3, "accessibility_display_daltonizer_enabled"

    .line 3636
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3638
    .local v0, "dal":I
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3639
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 3638
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3640
    .local v1, "rev":I
    if-eq v0, v6, :cond_0

    if-ne v1, v6, :cond_1

    .line 3641
    :cond_0
    return-void

    .line 3643
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 3644
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_2

    .line 3645
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v4, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 3646
    :cond_2
    return-void
.end method

.method private setDTMColorMatrix()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 640
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 641
    const-string/jumbo v3, "accessibility_display_daltonizer_enabled"

    .line 640
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 642
    .local v0, "dal":I
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 643
    const-string/jumbo v3, "accessibility_display_inversion_enabled"

    .line 642
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 645
    .local v1, "rev":I
    if-eq v0, v6, :cond_0

    if-ne v1, v6, :cond_1

    .line 646
    :cond_0
    return-void

    .line 647
    :cond_1
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_2

    .line 648
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v4, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 649
    :cond_2
    return-void
.end method

.method private setDciP3(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 590
    if-eqz p1, :cond_0

    .line 591
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "DCIP3,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string/jumbo v0, "sys.dci3p"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "DCIP3,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string/jumbo v0, "sys.dci3p"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDefaultMode(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    if-eqz p1, :cond_1

    .line 630
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "default mode node,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string/jumbo v0, "sys.default_mode"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "default mode node,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string/jumbo v0, "sys.default_mode"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNightMode(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 618
    if-eqz p1, :cond_0

    .line 619
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "night mode node,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string/jumbo v0, "sys.night_mode"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :goto_0
    return-void

    .line 622
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "night mode node,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string/jumbo v0, "sys.night_mode"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNightModeProp(Ljava/lang/Boolean;)I
    .locals 5
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x1

    .line 453
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 454
    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    .line 453
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 456
    .local v0, "status":I
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    .line 457
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 459
    :cond_1
    return v0

    .line 456
    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method private setPa(I)V
    .locals 8
    .param p1, "pa"    # I

    .prologue
    .line 2335
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v1, :cond_0

    .line 2336
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getPictureAdjustmentParams()Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;

    move-result-object v7

    .line 2337
    .local v7, "PAValues":Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    new-instance v0, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;

    const-class v1, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig$PICTURE_ADJUSTMENT_PARAMS;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 2338
    invoke-virtual {v7}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getHue()I

    move-result v2

    invoke-virtual {v7}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getIntensity()I

    move-result v4

    invoke-virtual {v7}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getContrast()I

    move-result v5

    invoke-virtual {v7}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;->getSaturationThreshold()I

    move-result v6

    move v3, p1

    .line 2337
    invoke-direct/range {v0 .. v6}, Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;-><init>(Ljava/util/EnumSet;IIIII)V

    .line 2339
    .local v0, "newPaConfig":Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v1, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setPictureAdjustmentParams(Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;)I

    .line 2341
    .end local v0    # "newPaConfig":Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    .end local v7    # "PAValues":Lcom/qti/snapdragon/sdk/display/PictureAdjustmentConfig;
    :cond_0
    return-void
.end method

.method private setProp(Ljava/lang/Boolean;)I
    .locals 5
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x1

    .line 441
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 442
    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    .line 441
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 443
    .local v0, "status":I
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_1

    .line 444
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 450
    :goto_0
    return v0

    .line 443
    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 445
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 446
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    goto :goto_0
.end method

.method private setSRGB(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 609
    if-eqz p1, :cond_0

    .line 610
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "SRGB,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string/jumbo v0, "sys.srgb"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :goto_0
    return-void

    .line 613
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "SRGB,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string/jumbo v0, "sys.srgb"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSRGBSensorEnabled(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1874
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSRGBSensorEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v0, :cond_1

    .line 1876
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-nez v0, :cond_2

    .line 1877
    iput-boolean v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    .line 1879
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 1883
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1884
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1885
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "SRGB & LIGHT SENSOR ENABLE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    return v4

    .line 1890
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-eqz v0, :cond_2

    .line 1891
    iput-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    .line 1892
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 1893
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1894
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1895
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "SRGB & LIGHT SENSOR DISABLE!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    return v4

    .line 1900
    :cond_2
    return v3
.end method

.method private setUp()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 463
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 464
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 466
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 467
    const-string/jumbo v6, "colorbalanceservice-night-reading-mode"

    .line 466
    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 468
    .local v2, "mode":I
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "reading_mode_status_manual"

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 469
    .local v1, "isReadingModeActivated":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    and-int/lit8 v3, v2, 0x2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_7

    .line 470
    :cond_0
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "reading_mode_status"

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 471
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "reading_mode_status"

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 472
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v6, "INIT Settings.System.READING_MODE_STATUS TO BE ZERO!"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    :goto_1
    new-instance v3, Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-direct {v3, v6, v7}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 478
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    if-nez v3, :cond_2

    .line 479
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v6, "NightDisplayController is NULL"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_2
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 484
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setUp: currentUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 492
    .local v0, "isNightOn":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->onAutoModeChanged(I)V

    .line 493
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 494
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v3, :cond_8

    .line 495
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v6, "#1 reading mode had been opened!"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 500
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 501
    invoke-virtual {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->onReadingModeActivatedManual(Z)V

    .line 517
    :goto_3
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 518
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    .line 519
    :cond_3
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SetUp mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-ne v2, v8, :cond_4

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    if-ge v3, v8, :cond_4

    .line 525
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 526
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 527
    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 533
    :cond_4
    if-ne v2, v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 534
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v5, "setup: turn on night Mode!"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 537
    :cond_5
    return-void

    .end local v0    # "isNightOn":Ljava/lang/Boolean;
    .end local v1    # "isReadingModeActivated":Ljava/lang/Boolean;
    :cond_6
    move v3, v5

    .line 468
    goto/16 :goto_0

    .line 475
    .restart local v1    # "isReadingModeActivated":Ljava/lang/Boolean;
    :cond_7
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v6, "INIT Settings.System.READING_MODE_STATUS_MANUAL 1!"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 498
    .restart local v0    # "isNightOn":Ljava/lang/Boolean;
    :cond_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_2

    .line 502
    :cond_9
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-nez v3, :cond_b

    .line 503
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v3, :cond_a

    .line 504
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v6, "#1 night mode had been opened!"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 509
    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 510
    invoke-virtual {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->onNightModeActivated(Z)V

    goto/16 :goto_3

    .line 507
    :cond_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_4

    .line 512
    :cond_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 513
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 515
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    goto/16 :goto_3
.end method

.method private setupApplication()V
    .locals 3

    .prologue
    .line 1860
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "Display ColorManager registered.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v0, :cond_0

    .line 1862
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 1863
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 1864
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    .line 1862
    invoke-static {v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 1866
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v0, :cond_0

    .line 1867
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "Failed to get ColorManager instance."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :cond_0
    return-void
.end method

.method private shading(II)I
    .locals 7
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .prologue
    const/4 v6, 0x0

    .line 2261
    move v2, p1

    .line 2262
    .local v2, "i":I
    const/4 v0, 0x1

    .line 2263
    .local v0, "delta":I
    if-le p2, p1, :cond_0

    .line 2264
    :goto_0
    if-ge v2, p2, :cond_1

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v3, :cond_1

    .line 2265
    add-int/lit8 v2, v2, 0x1

    .line 2266
    invoke-direct {p0, v2, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2267
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setColorBalance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    const-wide/16 v4, 0x8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2270
    :catch_0
    move-exception v1

    .line 2271
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2276
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    if-le v2, p2, :cond_1

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v3, :cond_1

    .line 2277
    add-int/lit8 v2, v2, -0x1

    .line 2278
    invoke-direct {p0, v2, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2279
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setColorBalance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const-wide/16 v4, 0x8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2282
    :catch_1
    move-exception v1

    .line 2283
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2287
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return v2
.end method

.method private shadingSeekBar(II)I
    .locals 8
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2208
    move v2, p1

    .line 2209
    .local v2, "i":I
    const/4 v0, 0x1

    .line 2210
    .local v0, "delta":I
    if-le p2, p1, :cond_3

    .line 2213
    :goto_0
    if-gt v2, p2, :cond_0

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v3, :cond_0

    .line 2214
    invoke-direct {p0, v2, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2215
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SeekBar setColorBalance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    const-wide/16 v4, 0x7

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2218
    :catch_0
    move-exception v1

    .line 2219
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2222
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v3, v7, :cond_2

    .line 2223
    :goto_2
    if-gt v2, p2, :cond_1

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v3, v7, :cond_1

    .line 2224
    invoke-direct {p0, v2, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2225
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SeekBar next,setColorBalance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    add-int/lit8 v2, v2, 0x3

    goto :goto_2

    .line 2228
    :cond_1
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2257
    :cond_2
    :goto_3
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mStartSetCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mStopSetCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    return v2

    .line 2229
    :catch_1
    move-exception v1

    .line 2230
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 2236
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_4
    if-lt v2, p2, :cond_4

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v3, :cond_4

    .line 2237
    invoke-direct {p0, v2, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2238
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SeekBar setColorBalance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const-wide/16 v4, 0x7

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2236
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 2241
    :catch_2
    move-exception v1

    .line 2242
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 2245
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v3, v7, :cond_2

    .line 2246
    :goto_6
    if-lt v2, p2, :cond_5

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v3, v7, :cond_5

    .line 2247
    invoke-direct {p0, v2, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2248
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SeekBar next,setColorBalance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    add-int/lit8 v2, v2, -0x3

    goto :goto_6

    .line 2251
    :cond_5
    const-wide/16 v4, 0x64

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 2252
    :catch_3
    move-exception v1

    .line 2253
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private tearDown()V
    .locals 4

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 541
    :try_start_0
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tearDown: currentUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    .line 551
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 552
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 553
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 554
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 555
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 556
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 557
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 568
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "TearDown:Turning off reading mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 571
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 572
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 573
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->readingModeSwitch(ZII)V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 588
    return-void

    .line 575
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "TearDown:Turning off night  mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 578
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 580
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->nightModeSwitch(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 582
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_2
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 583
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 584
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "TearDown:Turn off B & W!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "on"    # Ljava/lang/Boolean;
    .param p2, "isIgnore"    # Ljava/lang/Boolean;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 942
    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 943
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 944
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is on,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 949
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 950
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is off,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private triggerReadingButton(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "on"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 788
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 789
    const-string/jumbo v2, "reading_mode_status_manual"

    .line 788
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 791
    .local v0, "status":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 792
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 793
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 794
    const-string/jumbo v2, "reading_mode_status_manual"

    .line 795
    const-string/jumbo v3, "force-on"

    .line 793
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 797
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 798
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 799
    const-string/jumbo v2, "reading_mode_status_manual"

    .line 800
    const-string/jumbo v3, "force-off"

    .line 798
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 805
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 3
    .param p1, "autoMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1215
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    .line 1216
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    .line 1218
    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    .line 1221
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1222
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    .line 1232
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_1

    .line 1233
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStart()V

    .line 1235
    :cond_1
    return-void

    .line 1223
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1224
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_0

    .line 1226
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 1227
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 356
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    .line 359
    const/16 v0, 0x258

    .line 357
    if-ne p1, v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 362
    const-string/jumbo v1, "power"

    .line 361
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    .line 363
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-nez v0, :cond_1

    .line 366
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    .line 367
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    .line 369
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    .line 370
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "onBootPhase Call the function setUp "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->colorManagerInit()Z

    .line 372
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    .line 374
    :cond_2
    new-instance v0, Lcom/oneplus/display/SDManager;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/display/SDManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    .line 376
    :cond_3
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .prologue
    .line 1248
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 1253
    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .prologue
    .line 1239
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 1244
    :cond_0
    return-void
.end method

.method public onModeSettingChange()V
    .locals 1

    .prologue
    .line 1208
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 1209
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 1210
    return-void
.end method

.method public onNightModeActivated(Z)V
    .locals 7
    .param p1, "activated"    # Z

    .prologue
    .line 808
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNightModeActivated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 810
    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 811
    const-string/jumbo v1, "ColorBalanceService"

    const-string/jumbo v3, "onNightModeActivated ignore being invoked "

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 813
    return-void

    .line 822
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 823
    if-eqz p1, :cond_7

    .line 824
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 830
    :goto_0
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightModeActivated,save mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 832
    const-string/jumbo v3, "colorbalanceservice-night-reading-mode"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v5, -0x2

    .line 831
    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 833
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    const-string/jumbo v1, "ColorBalanceService"

    const-string/jumbo v3, "onNightModeActivated: reading mode disable App!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 836
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerReadingButton(Ljava/lang/Boolean;)V

    .line 841
    :cond_1
    :goto_1
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightModeActivated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " current-status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_6

    .line 843
    :cond_2
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightModeActivated:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 844
    if-eqz p1, :cond_9

    const-string/jumbo v1, " Turning on night display"

    .line 843
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 847
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 848
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v1, :cond_3

    .line 849
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onActivated(Z)V

    .line 851
    :cond_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 853
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 854
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 855
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 856
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 858
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 859
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 860
    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/16 v5, 0x67

    const/4 v6, -0x2

    .line 859
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 858
    sub-int/2addr v1, v3

    .line 861
    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 858
    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 862
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 863
    :cond_4
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 864
    const-string/jumbo v1, "ColorBalanceService"

    const-string/jumbo v3, "turn off reading mode button!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 866
    const-string/jumbo v3, "reading_mode_status_manual"

    .line 867
    const-string/jumbo v4, "force-off"

    const/4 v5, -0x2

    .line 865
    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 869
    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 870
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 871
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerReadingButton(Ljava/lang/Boolean;)V

    .line 872
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 873
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 874
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 875
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 876
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v3, 0xe

    invoke-virtual {p0, v3, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    monitor-exit v2

    .line 937
    return-void

    .line 827
    :cond_7
    :try_start_2
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 809
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 837
    :cond_8
    if-nez p1, :cond_1

    :try_start_3
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerReadingButton(Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 844
    :cond_9
    const-string/jumbo v1, " Turning off night display"

    goto/16 :goto_2

    .line 878
    :cond_a
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 879
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 880
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 881
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 882
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 883
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    .line 887
    :cond_b
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 888
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 889
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 890
    const-string/jumbo v1, "ColorBalanceService"

    const-string/jumbo v3, "onNightModeActivated:Night mode is off,set mIsTimeActivated false!"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 892
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    .line 893
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 894
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 895
    const-string/jumbo v1, "ColorBalanceService"

    const-string/jumbo v3, "onNightModeActivated:Night mode is off, revert to reading mode!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 897
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 898
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v3, 0xd

    invoke-virtual {p0, v3, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 899
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerReadingButton(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 901
    :cond_c
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 918
    .local v0, "isAutoReadingModeOn":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 919
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 921
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 922
    const-string/jumbo v1, "ColorBalanceService"

    const-string/jumbo v3, "Auto Reading mode is on,turn on Reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 924
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 925
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v3, 0xd

    invoke-virtual {p0, v3, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_3

    .line 927
    :cond_d
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 928
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 929
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 931
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method public onNightOrReadingModeDisableByApp(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v0, 0x0

    .line 1162
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1163
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 1164
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 1165
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightOrReadingModeChangeByApp,on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mModeEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mReadingModeStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    if-eq v2, v6, :cond_1

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    if-ne v2, v5, :cond_0

    xor-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 1184
    :cond_1
    if-eqz p1, :cond_3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1187
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1188
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1192
    :goto_1
    const/16 v0, -0x14

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1193
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNightOrReadingModeChangeByApp,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "turn on reading mode!"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1195
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1198
    :goto_3
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1199
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 1202
    return-void

    .line 1184
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 1190
    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1193
    :cond_5
    :try_start_2
    const-string/jumbo v0, "turn off reading mode!"

    goto :goto_2

    .line 1197
    :cond_6
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public onReadingModeActivatedAuto(Z)V
    .locals 6
    .param p1, "activated"    # Z

    .prologue
    const/4 v4, 0x1

    .line 957
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReadingModeActivatedAuto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 959
    :try_start_0
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_0

    monitor-exit v1

    .line 960
    return-void

    .line 962
    :cond_0
    :try_start_1
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadingModeActivatedAuto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 964
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto ignore same status!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 965
    return-void

    .line 967
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 968
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 969
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 971
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 972
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 973
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 974
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 976
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 978
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 979
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 980
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto:switch night into reading mode!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 983
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 984
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 985
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 986
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    .line 1037
    return-void

    .line 988
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 989
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 990
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 991
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 992
    const/16 v0, -0x14

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 993
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto:turning reading mode!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 995
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 996
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 997
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 958
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1001
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-ne v0, v4, :cond_6

    .line 1002
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1003
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1004
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1005
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1006
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerReadingButton(Ljava/lang/Boolean;)V

    .line 1007
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1008
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 1009
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1010
    const-string/jumbo v3, "oem_nightmode_progress_status"

    const/16 v4, 0x67

    const/4 v5, -0x2

    .line 1009
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1008
    sub-int/2addr v0, v2

    .line 1011
    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 1008
    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1012
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1013
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1014
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_0

    .line 1016
    :cond_6
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1017
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1018
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1019
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto Turning off reading mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1021
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1022
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1023
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1025
    :cond_7
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1026
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto: night mode should be off status!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1028
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1030
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1031
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 1032
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public onReadingModeActivatedManual(Z)V
    .locals 6
    .param p1, "activated"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1040
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1041
    :try_start_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 1043
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual ignore being invoked!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1044
    return-void

    .line 1047
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 1048
    if-eqz p1, :cond_2

    .line 1049
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1055
    :goto_0
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadingModeActivatedManual,save mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1057
    const-string/jumbo v2, "colorbalanceservice-night-reading-mode"

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v4, -0x2

    .line 1056
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1058
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1059
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "reaing disable app,ignore!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1061
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1062
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1063
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1064
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1066
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1070
    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    .line 1071
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v1

    .line 1075
    return-void

    .line 1052
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1040
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1067
    :cond_3
    if-nez p1, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 1073
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_2

    .line 1077
    :cond_5
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadingModeActivatedManual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " current-status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_6

    .line 1100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1101
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1106
    const/16 v0, -0x14

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1107
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1108
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1109
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1110
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1112
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1113
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual changing night to reading mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1115
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1116
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1117
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_3
    monitor-exit v1

    .line 1159
    return-void

    .line 1119
    :cond_7
    const/4 v0, 0x2

    :try_start_4
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1120
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Turning on reading mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1122
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1123
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1125
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1126
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    .line 1130
    :cond_8
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1131
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Turning off reading mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-eq v0, v5, :cond_9

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    if-eqz v0, :cond_a

    .line 1134
    :cond_9
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1135
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1136
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1137
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1138
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1139
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 1140
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1141
    const-string/jumbo v3, "oem_nightmode_progress_status"

    const/16 v4, 0x67

    const/4 v5, -0x2

    .line 1140
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1139
    sub-int/2addr v0, v2

    .line 1142
    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 1139
    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1143
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1144
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1145
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1146
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1147
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Revert to night mode!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1149
    :cond_a
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1151
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1152
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1154
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 343
    const-string/jumbo v0, "nightdisplay"

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;)V

    .line 344
    const/4 v2, 0x1

    .line 343
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 345
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 380
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 381
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 383
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 394
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 395
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 396
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 398
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 387
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    .line 388
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 389
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 390
    return-void
.end method

.method public sendMsg(I)V
    .locals 4
    .param p1, "v"    # I

    .prologue
    .line 1823
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1824
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1825
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_0

    .line 1826
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 1827
    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    .line 1828
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1830
    :cond_1
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendMsgWithValue(II)V
    .locals 3
    .param p1, "Msg"    # I
    .param p2, "value"    # I

    .prologue
    .line 1834
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1835
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1839
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1840
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_1

    .line 1841
    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1842
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 1844
    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 1846
    :cond_1
    return-void
.end method

.method public sendMsgWithValueDelayed(IIII)V
    .locals 4
    .param p1, "Msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delay"    # I

    .prologue
    .line 1848
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1849
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1850
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1851
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1852
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_0

    .line 1856
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1858
    :cond_0
    return-void
.end method
