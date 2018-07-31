.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$1;,
        Lcom/android/server/display/AutomaticBrightnessController$2;,
        Lcom/android/server/display/AutomaticBrightnessController$3;,
        Lcom/android/server/display/AutomaticBrightnessController$4;,
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0x7d0

.field private static final BRIGHTENING_FAST_THRESHOLD:F = 3000.0f

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.0f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final BRIGHTNESS_RAMP_RATE_CAMEARA_1023:I = 0x32

.field private static final BRIGHTNESS_RAMP_RATE_CAMEARA_255:I = 0x1e

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.0f

.field static DEBUG:Z = false

.field private static DEBUG_BACKLIGHT:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final OP_SYS_HBM_PROPERTY:Ljava/lang/String; = "sys.hbm"

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static mAutoBrightnessConfig_1023:[I

.field private static mAutoBrightnessConfig_255:[I

.field public static mManualSetBrightness:Z

.field private static sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;


# instance fields
.field flinger:Landroid/os/IBinder;

.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLightZone:I

.field private mAmbientLux:F

.field private mAmbientLuxMax:F

.field private mAmbientLuxMin:F

.field private mAmbientLuxValid:Z

.field private mAmbientState:I

.field private mAppState:Z

.field private mBoot_Start:Z

.field private final mBrighteningLightDebounceConfig:J

.field private final mBrighteningLightFastDebounceConfig:J

.field private mBrighteningLuxThreshold:F

.field private mBrightnessAdjustmentSampleOldAdjustment:F

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldGamma:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mCurrentLightSensorRate:I

.field private final mDarkeningLightDebounceConfig:J

.field private mDarkeningLuxThreshold:F

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private final mDynamicHysteresis:Lcom/android/server/display/HysteresisLevels;

.field private mFastRate:Z

.field private mFirst_Class:Z

.field private mFirst_PickupState:Z

.field private mFirst_lux:Z

.field public mFirst_time:Z

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mHbmState:Z

.field private mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private final mInitialLightSensorRate:I

.field private mLastAmbientLightZone:I

.field private mLastAmbientLuxMax:F

.field private mLastAmbientLuxMin:F

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLast_AmbientLux:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private mManulBrightnessSlide:Z

.field private final mNormalLightSensorRate:I

.field private final mPickUpSensor:Landroid/hardware/Sensor;

.field private final mPickUpSensorListener:Landroid/hardware/SensorEventListener;

.field private mPickupState:Z

.field private mProximityPositive:Z

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximity_State:Z

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field public mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private mScreenAutoBrightnessAdjustmentMaxGamma:F

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private mScreenAutoRate:I

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mStartManual:Z

.field private mTimePickup:J

.field public mUpdate_Fast:Z

.field private final mWeightingIntercept:I

.field private mZeroStartTime:J

.field private mZeroTask:Ljava/util/TimerTask;

.field private mZeroTimer:Ljava/util/Timer;

.field private mbStartTimer:Z

.field private zeroHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmState:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLightZone:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMax:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMin:F

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickupState:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/display/AutomaticBrightnessController;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    return-wide v0
.end method

.method static synthetic -get27(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    return v0
.end method

.method static synthetic -get28()Lcom/android/server/oneplus/display/BrightnessControllerUtility;
    .locals 1

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->zeroHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/AutomaticBrightnessController;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAppState:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_PickupState:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    return-wide p1
.end method

.method static synthetic -set12(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastRate:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_PickupState:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickupState:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->startZeroTimer()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->stopZeroTimer()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    .line 62
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 248
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->mManualSetBrightness:Z

    .line 264
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessConfig_1023:[I

    .line 265
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessConfig_255:[I

    .line 54
    return-void

    .line 264
    :array_0
    .array-data 4
        0x28
        0x50
        0xa0
        0x168
        0x1f4
        0x320
        0x3ff
        0x3ff
    .end array-data

    .line 265
    :array_1
    .array-data 4
        0xa
        0x14
        0x28
        0x5a
        0x7d
        0xc8
        0xff
        0xff
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIIJJJZIFLcom/android/server/display/HysteresisLevels;)V
    .locals 8
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p6, "lightSensorWarmUpTime"    # I
    .param p7, "brightnessMin"    # I
    .param p8, "brightnessMax"    # I
    .param p9, "dozeScaleFactor"    # F
    .param p10, "lightSensorRate"    # I
    .param p11, "initialLightSensorRate"    # I
    .param p12, "brighteningLightDebounceConfig"    # J
    .param p14, "brighteningLightFastDebounceConfig"    # J
    .param p16, "darkeningLightDebounceConfig"    # J
    .param p18, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p19, "ambientLightHorizon"    # I
    .param p20, "autoBrightnessAdjustmentMaxGamma"    # F
    .param p21, "dynamicHysteresis"    # Lcom/android/server/display/HysteresisLevels;

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 191
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 198
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 218
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 219
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 223
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    .line 224
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    .line 225
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMin:F

    .line 226
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMax:F

    .line 227
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    .line 228
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I

    .line 229
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLightZone:I

    .line 232
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    .line 237
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 238
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    .line 247
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 249
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity_State:Z

    .line 255
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickupState:Z

    .line 256
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFastRate:Z

    .line 257
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_PickupState:Z

    .line 258
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_Class:Z

    .line 259
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    .line 260
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLast_AmbientLux:F

    .line 261
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_time:Z

    .line 262
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTimePickup:J

    .line 263
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAppState:Z

    .line 269
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->flinger:Landroid/os/IBinder;

    .line 271
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmState:Z

    .line 272
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBoot_Start:Z

    .line 321
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->zeroHandler:Landroid/os/Handler;

    .line 1201
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1388
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1411
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$4;

    invoke-direct {v3, p0}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensorListener:Landroid/hardware/SensorEventListener;

    .line 357
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 358
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 359
    iput-object p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 360
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 361
    move/from16 v0, p8

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 362
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 363
    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 364
    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    .line 365
    move/from16 v0, p11

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 366
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 367
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 368
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 369
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 370
    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    .line 371
    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 372
    move/from16 v0, p20

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    .line 373
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDynamicHysteresis:Lcom/android/server/display/HysteresisLevels;

    .line 375
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 377
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v4, v4

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    .line 376
    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 379
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v4, v4

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    .line 378
    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 382
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 387
    iput-object p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 388
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightFastDebounceConfig:J

    .line 389
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 390
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 392
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->getInstance()Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    move-result-object v3

    sput-object v3, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    .line 393
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->init(Landroid/content/Context;)V

    .line 394
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    invoke-virtual {v3}, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->readAutoBrightnessLuxConfig()V

    .line 398
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x1fa2652

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensor:Landroid/hardware/Sensor;

    .line 399
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->flinger:Landroid/os/IBinder;

    .line 401
    return-void
.end method

.method private adjustLightSensorRate(I)V
    .locals 5
    .param p1, "lightSensorRate"    # I

    .prologue
    .line 621
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    if-eq p1, v0, :cond_1

    .line 622
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 623
    const-string/jumbo v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adjustLightSensorRate: previousRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 624
    const-string/jumbo v2, ", currentRate="

    .line 623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 627
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 628
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 629
    mul-int/lit16 v3, p1, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 628
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 631
    :cond_1
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 602
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 605
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 609
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 617
    return-void
.end method

.method private calculateAmbientLux(JJ)F
    .locals 25
    .param p1, "now"    # J
    .param p3, "horizon"    # J

    .prologue
    .line 686
    sget-boolean v19, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v19, :cond_0

    .line 687
    const-string/jumbo v19, "AutomaticBrightnessController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "calculateAmbientLux("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v4

    .line 690
    .local v4, "N":I
    if-nez v4, :cond_1

    .line 691
    const-string/jumbo v19, "AutomaticBrightnessController"

    const-string/jumbo v20, "calculateAmbientLux: No ambient light readings available"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/high16 v19, -0x40800000    # -1.0f

    return v19

    .line 696
    :cond_1
    const/4 v5, 0x0

    .line 697
    .local v5, "endIndex":I
    sub-long v10, p1, p3

    .line 698
    .local v10, "horizonStartTime":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v20

    cmp-long v19, v20, v10

    if-gtz v19, :cond_2

    .line 700
    add-int/lit8 v5, v5, 0x1

    .line 698
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 705
    :cond_2
    sget-boolean v19, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v19, :cond_3

    .line 706
    const-string/jumbo v19, "AutomaticBrightnessController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "calculateAmbientLux: selected endIndex="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", point=("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v22

    .line 706
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 707
    const-string/jumbo v21, ", "

    .line 706
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v21

    .line 706
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 709
    const-string/jumbo v21, ")"

    .line 706
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_3
    const/16 v16, 0x0

    .line 712
    .local v16, "sum":F
    const/16 v17, 0x0

    .line 713
    .local v17, "totalWeight":F
    const-wide/16 v6, 0x64

    .line 714
    .local v6, "endTime":J
    add-int/lit8 v12, v4, -0x1

    :goto_1
    if-lt v12, v5, :cond_7

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v8

    .line 716
    .local v8, "eventTime":J
    if-ne v12, v5, :cond_4

    cmp-long v19, v8, v10

    if-gez v19, :cond_4

    .line 719
    move-wide v8, v10

    .line 728
    :cond_4
    sub-long v14, v8, p1

    .line 729
    .local v14, "startTime":J
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-gez v19, :cond_5

    .line 730
    const-wide/16 v14, 0x0

    .line 734
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v18

    .line 735
    .local v18, "weight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v13

    .line 736
    .local v13, "lux":F
    sget-boolean v19, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v19, :cond_6

    .line 737
    const-string/jumbo v19, "AutomaticBrightnessController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "calculateAmbientLux: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 738
    const-string/jumbo v21, ", "

    .line 737
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 739
    const-string/jumbo v21, "]: lux="

    .line 737
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 739
    const-string/jumbo v21, ", weight="

    .line 737
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_6
    add-float v17, v17, v18

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v19

    mul-float v19, v19, v18

    add-float v16, v16, v19

    .line 743
    move-wide v6, v14

    .line 714
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 745
    .end local v8    # "eventTime":J
    .end local v13    # "lux":F
    .end local v14    # "startTime":J
    .end local v18    # "weight":F
    :cond_7
    sget-boolean v19, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v19, :cond_8

    .line 746
    const-string/jumbo v19, "AutomaticBrightnessController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "calculateAmbientLux: totalWeight="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 747
    const-string/jumbo v21, ", newAmbientLux="

    .line 746
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 747
    div-float v21, v16, v17

    .line 746
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_8
    div-float v19, v16, v17

    return v19
.end method

.method private calculateWeight(JJ)F
    .locals 3
    .param p1, "startDelta"    # J
    .param p3, "endDelta"    # J

    .prologue
    .line 753
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    .prologue
    .line 1150
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 1151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1152
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1154
    :cond_0
    return-void
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1131
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 1130
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1157
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_1

    .line 1158
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1159
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ltz v0, :cond_1

    .line 1160
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1161
    const-string/jumbo v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Auto-brightness adjustment changed by user: adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1162
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1163
    const-string/jumbo v2, ", lux="

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1163
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1164
    const-string/jumbo v2, ", brightness="

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1164
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1165
    const-string/jumbo v2, ", gamma="

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1165
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1166
    const-string/jumbo v2, ", ring="

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1166
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 1161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 1170
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1171
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1172
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1173
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1174
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1175
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1176
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1177
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1169
    const v1, 0x88b8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1180
    :cond_1
    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 593
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->adjustLightSensorRate(I)V

    .line 597
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 598
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 599
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(JF)J
    .locals 11
    .param p1, "time"    # J
    .param p3, "ambientLux"    # F

    .prologue
    .line 791
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 792
    .local v0, "N":I
    move-wide v4, p1

    .line 793
    .local v4, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 794
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v6

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 799
    :cond_0
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    sub-float/2addr v6, p3

    const v7, 0x453b8000    # 3000.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 800
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightFastDebounceConfig:J

    .line 803
    .local v2, "debounceDelay":J
    :goto_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 804
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v9, v0, -0x2

    invoke-virtual {v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 805
    return-wide v4

    .line 797
    .end local v2    # "debounceDelay":J
    :cond_1
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    .line 793
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 800
    :cond_2
    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .restart local v2    # "debounceDelay":J
    goto :goto_1

    .line 809
    :cond_3
    add-long v6, v4, v2

    return-wide v6
.end method

.method private nextAmbientLightDarkeningTransition(JF)J
    .locals 9
    .param p1, "time"    # J
    .param p3, "ambientLux"    # F

    .prologue
    .line 813
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 814
    .local v0, "N":I
    move-wide v2, p1

    .line 815
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 816
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 823
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 824
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v7, v0, -0x2

    invoke-virtual {v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 825
    return-wide v2

    .line 819
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 815
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 829
    :cond_2
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1135
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-nez v0, :cond_1

    .line 1136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 1137
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    .line 1138
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 1139
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 1140
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    .line 1145
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 1146
    const-wide/16 v2, 0x2710

    .line 1145
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1147
    return-void

    .line 1138
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    goto :goto_1
.end method

.method private resetAutoBrightness(FFI)V
    .locals 9
    .param p1, "ambientLux"    # F
    .param p2, "manulAtAmbientLux"    # F
    .param p3, "manulBrihgtness"    # I

    .prologue
    .line 1574
    const/4 v3, 0x0

    .line 1575
    .local v3, "scal":F
    const/4 v4, 0x0

    .line 1576
    .local v4, "step":I
    sget-object v6, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    invoke-virtual {v6, p1}, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->resetAmbientLux(F)I

    move-result v2

    .line 1577
    .local v2, "nowlux":I
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v6, p2}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    .line 1578
    .local v5, "value":F
    sget v6, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v0

    .line 1579
    .local v0, "brightness":I
    sget-object v6, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    invoke-virtual {v6, p2}, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->resetAmbientLux(F)I

    move-result v1

    .line 1580
    .local v1, "manullux":I
    if-eqz v0, :cond_0

    .line 1581
    sub-int v6, p3, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 1582
    const v6, 0x3e99999a    # 0.3f

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_0

    .line 1583
    const v3, 0x3e99999a    # 0.3f

    .line 1585
    :cond_0
    sub-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_1

    .line 1586
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    .line 1587
    sub-int v7, v2, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    .line 1586
    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1589
    :cond_1
    if-le p3, v0, :cond_4

    .line 1590
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1594
    :cond_2
    :goto_0
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-direct {p0, v6}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1595
    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1596
    const-string/jumbo v6, "AutomaticBrightnessController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "brightness = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " manulBrihgtness = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1597
    const-string/jumbo v8, " manullux = "

    .line 1596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1597
    const-string/jumbo v8, " nowlux = "

    .line 1596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1598
    const-string/jumbo v8, " mScreenAutoBrightness = "

    .line 1596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1598
    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1598
    const-string/jumbo v8, " step = "

    .line 1596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1599
    const-string/jumbo v8, " scal = "

    .line 1596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_3
    return-void

    .line 1591
    :cond_4
    if-ge p3, v0, :cond_2

    .line 1592
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_0
.end method

.method private setAmbientLux(F)V
    .locals 4
    .param p1, "lux"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 677
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 678
    const-string/jumbo v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLux("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 681
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    .line 682
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    .line 683
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 494
    if-eqz p1, :cond_2

    .line 495
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v1, :cond_3

    .line 496
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 497
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 498
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 499
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 513
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->mUseAutoBrightness:Z

    .line 514
    sget v1, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    if-ne v1, v2, :cond_1

    .line 515
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$6;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$6;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 529
    const-string/jumbo v4, "LightSensorEnableThread"

    .line 515
    invoke-direct {v0, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 530
    .local v0, "thread":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 531
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 540
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_1
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    .line 541
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    .line 542
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMin:F

    .line 543
    iput v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMax:F

    .line 544
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLast_AmbientLux:F

    .line 545
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 546
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickupState:Z

    .line 547
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_PickupState:Z

    .line 548
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_Class:Z

    .line 549
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBoot_Start:Z

    .line 551
    return v2

    :cond_0
    move v1, v3

    .line 496
    goto :goto_0

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 534
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 533
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 535
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 536
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 535
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 537
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensor:Landroid/hardware/Sensor;

    .line 538
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v6, v6, 0x3e8

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 537
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_1

    .line 554
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v1, :cond_3

    .line 555
    sput-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 556
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 557
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 558
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 559
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 560
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 561
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 562
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 563
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 567
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 568
    sput-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->mManualSetBrightness:Z

    .line 569
    sput v3, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 570
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 571
    sput-boolean v3, Lcom/android/server/power/PowerManagerService;->mUseAutoBrightness:Z

    .line 572
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 573
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    .line 574
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    .line 575
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 579
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 580
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_PickupState:Z

    .line 581
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity_State:Z

    .line 582
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBoot_Start:Z

    .line 583
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    if-eqz v1, :cond_3

    .line 584
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->stopZeroTimer()V

    .line 587
    :cond_3
    return v3
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 7
    .param p1, "adjustment"    # F

    .prologue
    const v6, 0x44bb8000    # 1500.0f

    const/high16 v5, 0x44af0000    # 1400.0f

    const v4, 0x44a28000    # 1300.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 634
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    .line 635
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 639
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_2

    .line 640
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    .line 641
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    .line 642
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/high16 v1, 0x44c80000    # 1600.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 643
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 644
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 645
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 649
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 671
    :cond_0
    :goto_1
    return v3

    .line 647
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    goto :goto_0

    .line 650
    :cond_2
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    .line 651
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAppState:Z

    .line 652
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_3

    .line 653
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    goto :goto_1

    .line 654
    :cond_3
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 655
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    goto :goto_1

    .line 657
    :cond_4
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_6

    .line 658
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAppState:Z

    .line 659
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_5

    .line 660
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    goto :goto_1

    .line 661
    :cond_5
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 662
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    goto :goto_1

    .line 664
    :cond_6
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_7

    .line 665
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmState:Z

    goto :goto_1

    .line 666
    :cond_7
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/high16 v1, 0x44c80000    # 1600.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 667
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHbmState:Z

    goto :goto_1

    .line 673
    :cond_8
    return v2
.end method

.method private startZeroTimer()V
    .locals 6

    .prologue
    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 282
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController$5;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 296
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopZeroTimer()V
    .locals 4

    .prologue
    .line 299
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    if-nez v1, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    monitor-enter p0

    .line 304
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 306
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 313
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 319
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_1
    const-string/jumbo v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopZeroTimer null pointer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 834
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 835
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v4, v3

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 836
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 837
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 19
    .param p1, "time"    # J

    .prologue
    .line 842
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v14, :cond_3

    .line 844
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v14, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 845
    .local v12, "timeWhenSensorWarmedUp":J
    cmp-long v14, p1, v12

    if-gez v14, :cond_1

    .line 846
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 847
    const-string/jumbo v14, "AutomaticBrightnessController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateAmbientLux: Sensor not  ready yet: time="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 849
    const-string/jumbo v16, ", timeWhenSensorWarmedUp="

    .line 847
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v12, v13}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 853
    return-void

    .line 855
    :cond_1
    const-wide/16 v14, 0x7d0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 856
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 857
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 858
    const-string/jumbo v14, "AutomaticBrightnessController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v16, v0

    .line 858
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 860
    const-string/jumbo v16, ", mAmbientLux="

    .line 858
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 860
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v16, v0

    .line 858
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 866
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 903
    .end local v12    # "timeWhenSensorWarmedUp":J
    :cond_3
    const-wide/16 v14, 0x7d0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v4

    .line 907
    .local v4, "ambientLux":F
    const/4 v5, 0x0

    .local v5, "lux_index":I
    :goto_0
    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget v14, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    if-ge v5, v14, :cond_4

    .line 908
    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->rint(D)D

    move-result-wide v14

    sget-object v16, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v16, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v16, v16, v5

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_d

    .line 911
    :cond_4
    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget v14, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    if-ge v5, v14, :cond_e

    .line 912
    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v14, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v14, v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_5

    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v14, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v14, v14, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_5

    .line 913
    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v14, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v14, v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    .line 914
    sget-object v14, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v14, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v14, v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    .line 921
    :cond_5
    :goto_1
    sget v14, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    const/4 v15, 0x4

    if-ge v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_Class:Z

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLast_AmbientLux:F

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_6

    .line 922
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLast_AmbientLux:F

    cmpl-float v14, v4, v14

    if-lez v14, :cond_6

    const/high16 v14, 0x41a00000    # 20.0f

    cmpl-float v14, v4, v14

    if-lez v14, :cond_6

    .line 923
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    .line 924
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    if-eqz v14, :cond_6

    .line 925
    const-string/jumbo v14, "AutomaticBrightnessController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mUpdate_Fast is true sBrightnessBoost="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/server/power/PowerManagerService;->sBrightnessBoost:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_6
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLast_AmbientLux:F

    .line 929
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(JF)J

    move-result-wide v6

    .line 930
    .local v6, "nextBrightenTransition":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(JF)J

    move-result-wide v8

    .line 932
    .local v8, "nextDarkenTransition":J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 933
    const-wide/16 p1, 0x0

    .line 935
    :cond_7
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_8

    .line 936
    const-string/jumbo v15, "AutomaticBrightnessController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Pre-updateAmbientLux: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 937
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v14, v4, v14

    if-lez v14, :cond_f

    const-string/jumbo v14, "Brightened"

    .line 936
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 937
    const-string/jumbo v16, ": "

    .line 936
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 938
    const-string/jumbo v16, "mBrighteningLuxThreshold="

    .line 936
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 938
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    move/from16 v16, v0

    .line 936
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 939
    const-string/jumbo v16, ", mAmbientLightRingBuffer="

    .line 936
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v16, v0

    .line 936
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 940
    const-string/jumbo v16, ", mAmbientLux="

    .line 936
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 940
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v16, v0

    .line 936
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 940
    const-string/jumbo v16, ", mAmbientState="

    .line 936
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 940
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    move/from16 v16, v0

    .line 936
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v14, v4, v14

    if-ltz v14, :cond_10

    cmp-long v14, v6, p1

    if-gtz v14, :cond_10

    .line 944
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    .line 948
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 949
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_a

    .line 950
    const-string/jumbo v15, "AutomaticBrightnessController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateAmbientLux: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 951
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v14, v4, v14

    if-lez v14, :cond_13

    const-string/jumbo v14, "Brightened"

    .line 950
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 951
    const-string/jumbo v16, ": "

    .line 950
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 952
    const-string/jumbo v16, "mBrighteningLuxThreshold="

    .line 950
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    move/from16 v16, v0

    .line 950
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 953
    const-string/jumbo v16, ", mAmbientLightRingBuffer="

    .line 950
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v16, v0

    .line 950
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 954
    const-string/jumbo v16, ", mAmbientLux="

    .line 950
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 954
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v16, v0

    .line 950
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    .line 957
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMin:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMin:F

    .line 958
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxMax:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxMax:F

    .line 959
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightZone:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLightZone:I

    .line 960
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_Class:Z

    .line 961
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 962
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(JF)J

    move-result-wide v6

    .line 963
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(JF)J

    move-result-wide v8

    .line 967
    :cond_b
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 975
    .local v10, "nextTransitionTime":J
    cmp-long v14, v10, p1

    if-lez v14, :cond_14

    .line 976
    :goto_5
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_c

    .line 977
    const-string/jumbo v14, "AutomaticBrightnessController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 978
    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v16

    .line 977
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 981
    return-void

    .line 907
    .end local v6    # "nextBrightenTransition":J
    .end local v8    # "nextDarkenTransition":J
    .end local v10    # "nextTransitionTime":J
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 917
    :cond_e
    sget-boolean v14, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v14, :cond_5

    .line 918
    const-string/jumbo v14, "AutomaticBrightnessController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "The lux_index is illegal ambientLux = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " lux_index="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 937
    .restart local v6    # "nextBrightenTransition":J
    .restart local v8    # "nextDarkenTransition":J
    :cond_f
    const-string/jumbo v14, "Darkened"

    goto/16 :goto_2

    .line 945
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v14, v4, v14

    if-gtz v14, :cond_11

    cmp-long v14, v8, p1

    if-gtz v14, :cond_11

    .line 946
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientState:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_9

    :cond_11
    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-nez v14, :cond_12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 943
    if-nez v14, :cond_9

    .line 947
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    .line 943
    if-eqz v14, :cond_b

    goto/16 :goto_3

    .line 951
    :cond_13
    const-string/jumbo v14, "Darkened"

    goto/16 :goto_4

    .line 975
    .restart local v10    # "nextTransitionTime":J
    :cond_14
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v14, v14

    add-long v10, p1, v14

    goto/16 :goto_5
.end method

.method private updateAutoBrightness(Z)V
    .locals 9
    .param p1, "sendUpdate"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 991
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBoot_Start:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 992
    :cond_1
    return-void

    .line 996
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    .line 997
    .local v3, "value":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1025
    .local v1, "gamma":F
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    if-eqz v4, :cond_5

    .line 1026
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    if-eqz v4, :cond_4

    .line 1027
    :cond_3
    const-string/jumbo v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PowerManagerService.mManualBrightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1028
    sget v6, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 1027
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1028
    const-string/jumbo v6, " mAmbientLux = "

    .line 1027
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1028
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 1027
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_4
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sput v4, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    .line 1030
    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 1031
    iput-boolean v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mManulBrightnessSlide:Z

    .line 1032
    sput-boolean v8, Lcom/android/server/display/AutomaticBrightnessController;->mManualSetBrightness:Z

    .line 1033
    sput-boolean v8, Lcom/android/server/power/PowerManagerService;->mManualSetAutoBrightness:Z

    .line 1034
    sget v4, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1035
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1127
    :goto_0
    return-void

    .line 1037
    :cond_5
    sput-boolean v7, Lcom/android/server/power/PowerManagerService;->mManualSetAutoBrightness:Z

    .line 1039
    sget v4, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v2

    .line 1040
    .local v2, "newScreenAutoBrightness":I
    sget-object v4, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    invoke-virtual {v4, v2}, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->getNightBrightness(I)I

    move-result v2

    .line 1043
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-eq v4, v2, :cond_c

    .line 1044
    sget v4, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v5, 0x3ff

    if-ne v4, v5, :cond_6

    .line 1045
    sget-object v4, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v4, v5, v2}, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->calculateRate_for_Brightness(II)I

    move-result v4

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    .line 1047
    :cond_6
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    if-eqz v4, :cond_8

    .line 1048
    :cond_7
    const-string/jumbo v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mScreenAutoBrightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1049
    const-string/jumbo v6, " newScreenAutoBrightness = "

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1050
    const-string/jumbo v6, " PowerManagerService.mManualBrightness = "

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1051
    sget v6, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1051
    const-string/jumbo v6, " mStartManual = "

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1052
    iget-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1053
    const-string/jumbo v6, " PowerManagerService.mManualBrightnessBackup = "

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1054
    sget v6, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1055
    const-string/jumbo v6, " PowerManagerService.mDisplayStateOn = "

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1056
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1057
    const-string/jumbo v6, " mBrightnessOverride = "

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1057
    sget v6, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    .line 1048
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_8
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1059
    .local v0, "autoBrightness":I
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 997
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1060
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 1061
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    if-eqz v4, :cond_9

    .line 1062
    sget v4, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    if-eqz v4, :cond_9

    .line 1063
    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 1064
    sget v4, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    sput v4, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 1065
    sget v4, Lcom/android/server/power/PowerManagerService;->mManualAmbientLuxBackup:F

    sput v4, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    .line 1066
    sput v7, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    .line 1067
    const/4 v4, 0x0

    sput v4, Lcom/android/server/power/PowerManagerService;->mManualAmbientLuxBackup:F

    .line 1070
    :cond_9
    sget v4, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 1071
    sget v4, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    if-eqz v4, :cond_a

    .line 1072
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 1070
    if-eqz v4, :cond_a

    .line 1073
    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 1074
    sget v4, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    sput v4, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 1075
    sput v7, Lcom/android/server/power/PowerManagerService;->mBrightnessOverride:I

    .line 1076
    sput v7, Lcom/android/server/power/PowerManagerService;->mBrightnessOverrideAdj:I

    .line 1079
    :cond_a
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v4, :cond_b

    .line 1080
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v5, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_e

    .line 1081
    sget v4, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1095
    :cond_b
    :goto_1
    if-eqz p1, :cond_c

    .line 1096
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v4}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 1100
    .end local v0    # "autoBrightness":I
    :cond_c
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v4, :cond_d

    .line 1101
    sget v4, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    if-eqz v4, :cond_d

    .line 1102
    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    .line 1103
    sget v4, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    sput v4, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 1104
    sput v7, Lcom/android/server/power/PowerManagerService;->mManualBrightnessBackup:I

    .line 1106
    :cond_d
    sput-boolean v7, Lcom/android/server/power/PowerManagerService;->mDisplayStateOn:Z

    goto/16 :goto_0

    .line 1083
    .restart local v0    # "autoBrightness":I
    :cond_e
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v5, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    .line 1084
    sget v6, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 1083
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->resetAutoBrightness(FFI)V

    .line 1085
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v5, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    .line 1086
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1087
    sget v5, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 1086
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_1

    .line 1088
    :cond_f
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v5, Lcom/android/server/power/PowerManagerService;->mManulAtAmbientLux:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b

    .line 1089
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 1090
    sget v5, Lcom/android/server/power/PowerManagerService;->mManualBrightness:I

    .line 1089
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_1
.end method

.method private weightIntegral(J)F
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 759
    long-to-float v0, p1

    long-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZFZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z
    .param p4, "userInitiatedChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 449
    iput-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    .line 450
    if-eqz p1, :cond_2

    xor-int/lit8 v1, p3, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v0

    .line 451
    .local v0, "changed":Z
    if-eqz p1, :cond_0

    xor-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    .line 454
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 455
    if-eqz v0, :cond_1

    .line 456
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 458
    :cond_1
    return-void

    .end local v0    # "changed":Z
    :cond_2
    move v1, v2

    .line 450
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 461
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 462
    const-string/jumbo v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 472
    const-string/jumbo v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLightHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mInitialHorizonAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialHorizonAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenAutoBrightnessAdjustmentMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustmentMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 8

    .prologue
    const/16 v7, 0x3ff

    const/16 v6, 0xff

    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "lux_index":I
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v2, :cond_0

    .line 408
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2

    .line 410
    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 411
    .local v0, "AutoBrightness":I
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAppState:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mStartManual:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 412
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget v2, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    if-ge v1, v2, :cond_1

    .line 413
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLast_AmbientLux:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    sget-object v4, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget-object v4, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->mAmbientLuxConfig:[F

    aget v4, v4, v1

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    .line 416
    :cond_1
    sget-object v2, Lcom/android/server/display/AutomaticBrightnessController;->sBrightnessControllerUtility:Lcom/android/server/oneplus/display/BrightnessControllerUtility;

    sget v2, Lcom/android/server/oneplus/display/BrightnessControllerUtility;->BRIGHTNESS_LEVELS:I

    if-ge v1, v2, :cond_5

    .line 417
    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v2, v7, :cond_4

    .line 418
    sget-object v2, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessConfig_1023:[I

    aget v0, v2, v1

    .line 419
    if-le v0, v7, :cond_2

    .line 420
    const/16 v0, 0x3ff

    .line 431
    :cond_2
    :goto_1
    return v0

    .line 412
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_4
    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-ne v2, v6, :cond_2

    .line 422
    sget-object v2, Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessConfig_255:[I

    aget v0, v2, v1

    .line 423
    if-le v0, v6, :cond_2

    .line 424
    const/16 v0, 0xff

    goto :goto_1

    .line 427
    :cond_5
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 428
    const-string/jumbo v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The Last_AmbientLux is illegal mLast_AmbientLux = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLast_AmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " lux_index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAutomaticScreenRate()I
    .locals 1

    .prologue
    .line 1603
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoRate:I

    return v0
.end method

.method public setAutomaticScreenBrightness(I)I
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 438
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    return p1
.end method
