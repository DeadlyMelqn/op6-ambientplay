.class public Lcom/android/systemui/statusbar/phone/OPFacelockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OPFacelockController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/OPFacelockController$1;,
        Lcom/android/systemui/statusbar/phone/OPFacelockController$2;,
        Lcom/android/systemui/statusbar/phone/OPFacelockController$3;,
        Lcom/android/systemui/statusbar/phone/OPFacelockController$4;,
        Lcom/android/systemui/statusbar/phone/OPFacelockController$5;,
        Lcom/android/systemui/statusbar/phone/OPFacelockController$6;,
        Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static FACELOCK_PACKAGE_NAME:Ljava/lang/String;

.field private static FACELOCK_SERVICE_NAME:Ljava/lang/String;

.field private static FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;


# instance fields
.field private LIGHTING_MODE_BRIGHTNESS:I

.field private LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

.field private LIGHTING_MODE_SENSOR_THRESHOLD:I

.field private final MSG_CAMERA_ERROR:I

.field private final MSG_FAIL:I

.field private final MSG_NO_FACE:I

.field private final MSG_NO_PERMISSION:I

.field private final MSG_RESET_FACELOCK_PENDING:I

.field private final MSG_RESET_LOCKOUT:I

.field private final MSG_SKIP_BOUNCER:I

.field private final MSG_START_FACELOCK:I

.field private final MSG_STOP_FACELOCK:I

.field private final MSG_UNLOCK:I

.field private final MSG_UPDATE_FACE_ADDED:I

.field private mBinding:Z

.field private mBindingSetting:Z

.field private mBouncer:Z

.field private mBoundToService:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCloseLightView:Landroid/widget/Button;

.field private mCameraLaunching:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEndStopFacelockRunnable:Ljava/lang/Runnable;

.field mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mFaceLockActive:Z

.field private mFacelockThread:Landroid/os/HandlerThread;

.field private mFailAttempts:I

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIsGoingToSleep:Z

.field private mIsKeyguardShowing:Z

.field private mIsScreenOffUnlock:Z

.field private mIsScreenTurnedOn:Z

.field private mIsSleep:Z

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

.field private mLightingModeEnabled:Z

.field private mLockout:Z

.field private mNeedToPendingStopFacelock:Z

.field private final mOPFacelockCallback:Lcom/android/internal/policy/IOPFacelockCallback;

.field private mPendingStopFacelock:Z

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mPowerManager:Landroid/os/IPowerManager;

.field private final mResetScreenOnRunnable:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRate:I

.field private mService:Lcom/android/internal/policy/IOPFacelockService;

.field private mSettingConnection:Landroid/content/ServiceConnection;

.field private mSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

.field private mStartFacelockWhenScreenOn:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/internal/policy/IOPFaceSettingService;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/android/internal/policy/IOPFacelockService;)Lcom/android/internal/policy/IOPFacelockService;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "-value"    # Lcom/android/internal/policy/IOPFacelockService;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/android/internal/policy/IOPFacelockService;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/android/internal/policy/IOPFaceSettingService;)Lcom/android/internal/policy/IOPFaceSettingService;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "-value"    # Lcom/android/internal/policy/IOPFaceSettingService;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleRecognizeFail()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleResetFacelockPending()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateIsFaceAdded()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "alpha"    # I
    .param p2, "updateState"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "type"    # I
    .param p2, "color"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleResetLockout()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleSkipBouncer()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStartFacelock()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->playFacelockIndicationTextAnim()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "register"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->unlockKeyguard()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    .line 56
    const-string/jumbo v0, "com.oneplus.faceunlock"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "com.oneplus.faceunlock.FaceUnlockService"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SERVICE_NAME:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "com.oneplus.faceunlock.FaceSettingService"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardViewMediator"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p3, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p4, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .param p5, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p6, "fpc"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 140
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 93
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    .line 94
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    .line 95
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 96
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    .line 97
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    .line 98
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 99
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    .line 100
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 101
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 102
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 104
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 108
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 109
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 113
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 116
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 125
    iput v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    .line 126
    const-wide v4, 0x3fd2d0e560418937L    # 0.294

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

    .line 127
    const/16 v3, 0x12c

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 128
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    .line 193
    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$1;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_START_FACELOCK:I

    .line 208
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_STOP_FACELOCK:I

    .line 209
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_UNLOCK:I

    .line 210
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_FAIL:I

    .line 211
    iput v7, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_NO_FACE:I

    .line 212
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_RESET_LOCKOUT:I

    .line 213
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_SKIP_BOUNCER:I

    .line 215
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_RESET_FACELOCK_PENDING:I

    .line 220
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_CAMERA_ERROR:I

    .line 222
    const/16 v3, 0xb

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_NO_PERMISSION:I

    .line 223
    const/16 v3, 0xc

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_UPDATE_FACE_ADDED:I

    .line 297
    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$2;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    .line 983
    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mConnection:Landroid/content/ServiceConnection;

    .line 1001
    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    .line 1019
    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/android/internal/policy/IOPFacelockCallback;

    .line 1121
    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 143
    const-string/jumbo v3, "OPFacelockController"

    const-string/jumbo v4, "new facelock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 148
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 149
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 151
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 152
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 153
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 155
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "FacelockThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    .line 156
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 157
    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    .line 159
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mWM:Landroid/view/IWindowManager;

    .line 162
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0a00ee

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    .line 163
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0a00f0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/widget/Button;

    .line 165
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-nez v3, :cond_0

    .line 167
    const-string/jumbo v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLightView == null, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    new-instance v3, Landroid/hardware/SystemSensorManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 172
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    .line 173
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 174
    const v4, 0x10e000e

    .line 173
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorRate:I

    .line 175
    const-string/jumbo v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    .line 177
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 178
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    .line 179
    .local v1, "maxBrightness":I
    int-to-double v4, v1

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 182
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.oneplus.faceunlock.action.FACE_SETTING_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    return-void

    .line 169
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "maxBrightness":I
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->init()V

    goto :goto_0
.end method

.method private bindFacelock()V
    .locals 7

    .prologue
    .line 903
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    if-eqz v3, :cond_0

    return-void

    .line 905
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 906
    .local v2, "serviceIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 910
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    .line 911
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mConnection:Landroid/content/ServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 910
    invoke-virtual {v3, v2, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 912
    const-string/jumbo v3, "OPFacelockController"

    const-string/jumbo v4, "Binding ok"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    .line 920
    :goto_0
    return-void

    .line 915
    :cond_1
    const-string/jumbo v3, "OPFacelockController"

    const-string/jumbo v4, "Binding fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 917
    :catch_0
    move-exception v1

    .line 918
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bindFacelock fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bindFacelockSetting()V
    .locals 7

    .prologue
    .line 923
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    if-eqz v3, :cond_0

    return-void

    .line 925
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 926
    .local v2, "serviceIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    sget-object v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .local v0, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 930
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    .line 931
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 930
    invoke-virtual {v3, v2, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 932
    const-string/jumbo v3, "OPFacelockController"

    const-string/jumbo v4, "Binding setting ok"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    .line 940
    :goto_0
    return-void

    .line 935
    :cond_1
    const-string/jumbo v3, "OPFacelockController"

    const-string/jumbo v4, "Binding setting fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 937
    :catch_0
    move-exception v1

    .line 938
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bind setting fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleRecognizeFail()V
    .locals 4

    .prologue
    .line 333
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, "playFailAnimation":Z
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    rem-int/lit8 v2, v2, 0x5

    if-eqz v2, :cond_3

    .line 338
    const/4 v1, 0x7

    .line 343
    .local v1, "type":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    .line 344
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_1

    .line 346
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OPFacelockController"

    const-string/jumbo v3, "enter Bouncer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$7;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->playFacelockIndicationTextAnim()V

    .line 361
    :cond_2
    const/high16 v2, -0x10000

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 363
    return-void

    .line 340
    .end local v1    # "type":I
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_0

    .line 357
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private handleResetFacelockPending()V
    .locals 3

    .prologue
    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 768
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleResetFacelockPending, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    if-eqz v0, :cond_1

    .line 770
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 772
    :cond_1
    return-void
.end method

.method private handleResetLockout()V
    .locals 2

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 319
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 323
    return-void
.end method

.method private handleSkipBouncer()V
    .locals 2

    .prologue
    .line 326
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "handleSkipBouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 328
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 330
    return-void
.end method

.method private handleStartFacelock()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 684
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v0

    .line 686
    .local v0, "cameraError":Z
    const-string/jumbo v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handle startFacelock, active:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", pendingStop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", live wp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cameraError:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/android/internal/policy/IOPFacelockService;

    if-nez v3, :cond_0

    .line 689
    const-string/jumbo v3, "OPFacelockController"

    const-string/jumbo v4, "not start Facelock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-void

    .line 694
    :cond_0
    if-eqz v0, :cond_1

    .line 695
    const-string/jumbo v3, "OPFacelockController"

    const-string/jumbo v4, "not start when camera error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void

    .line 700
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v3, :cond_2

    .line 701
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 702
    invoke-direct {p0, v9, v8}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 703
    return-void

    .line 707
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 708
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 709
    const-string/jumbo v3, "OPFacelockController"

    const-string/jumbo v4, "pending start to screen on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void

    .line 712
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 714
    invoke-direct {p0, v9, v8}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 716
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 718
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 721
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    .line 725
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 726
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 727
    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V

    .line 728
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 729
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 733
    :cond_4
    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/android/internal/policy/IOPFacelockService;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/android/internal/policy/IOPFacelockCallback;

    invoke-interface {v3, v4}, Lcom/android/internal/policy/IOPFacelockService;->registerCallback(Lcom/android/internal/policy/IOPFacelockCallback;)V

    .line 736
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/android/internal/policy/IOPFacelockService;

    invoke-interface {v3}, Lcom/android/internal/policy/IOPFacelockService;->prepare()V

    .line 737
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/android/internal/policy/IOPFacelockService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/policy/IOPFacelockService;->startFaceUnlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 753
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    const/16 v6, 0x8

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 756
    return-void

    .line 744
    :catch_0
    move-exception v2

    .line 745
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_1
    const-string/jumbo v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startFacelock mService null, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 748
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 749
    return-void

    .line 738
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 739
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startFacelock fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 742
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 743
    return-void

    .line 733
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private handleStopFacelock()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 782
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-nez v4, :cond_0

    .line 783
    const-string/jumbo v2, "OPFacelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not stop facelock, active:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void

    .line 788
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    if-eqz v4, :cond_2

    .line 789
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 790
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "OPFacelockController"

    const-string/jumbo v3, "pending stop facelock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_1
    return-void

    .line 793
    :cond_2
    const-string/jumbo v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handle stopFacelock, hasRunnable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEndStopFacelockRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_4

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 796
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 799
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 801
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    .line 803
    monitor-enter p0

    .line 805
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/android/internal/policy/IOPFacelockService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/android/internal/policy/IOPFacelockCallback;

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IOPFacelockService;->unregisterCallback(Lcom/android/internal/policy/IOPFacelockCallback;)V

    .line 806
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/android/internal/policy/IOPFacelockService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IOPFacelockService;->stopFaceUnlock(I)V

    .line 807
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/android/internal/policy/IOPFacelockService;

    invoke-interface {v2}, Lcom/android/internal/policy/IOPFacelockService;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    .line 815
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEndStopFacelockRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 817
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEndStopFacelockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 818
    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEndStopFacelockRunnable:Ljava/lang/Runnable;

    .line 822
    :cond_3
    return-void

    :cond_4
    move v2, v3

    .line 793
    goto :goto_0

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_1
    const-string/jumbo v2, "OPFacelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopFacelock mService null, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 803
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 808
    :catch_1
    move-exception v0

    .line 809
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "OPFacelockController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopFacelock fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private playFacelockIndicationTextAnim()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    :cond_0
    return-void
.end method

.method private registerLightSensor(Z)V
    .locals 5
    .param p1, "register"    # Z

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1142
    :cond_0
    if-eqz p1, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    .line 1145
    iget v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    .line 1144
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1149
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private stopFacelock()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 779
    return-void
.end method

.method private unlockKeyguard()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 853
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v2

    .line 854
    .local v2, "liveWP":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    .line 855
    .local v0, "bouncerShow":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    .line 857
    .local v1, "interActive":Z
    const-string/jumbo v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unlockKeyguard, bouncer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", live wp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", interactive = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", offUnlock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iput v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 859
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFacelockUnlocking(Z)V

    .line 861
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;ZZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 892
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 893
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 894
    return-void
.end method

.method private updateFacelockLightMode(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 1152
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-nez v1, :cond_0

    return-void

    .line 1153
    :cond_0
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1154
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "OPFacelockController"

    const-string/jumbo v2, "not enter when prevent mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_1
    return-void

    .line 1159
    :cond_2
    if-eqz p1, :cond_3

    .line 1160
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1186
    return-void

    .line 1162
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFacelockLightMode, overrideScreenBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateIsFaceAdded()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 618
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

    if-nez v4, :cond_0

    .line 619
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 620
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelockSetting()V

    .line 621
    return-void

    .line 624
    :cond_0
    const/4 v3, 0x1

    .line 626
    .local v3, "state":I
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/internal/policy/IOPFaceSettingService;->checkState(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 631
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v1

    .line 633
    .local v1, "preAdded":Z
    if-nez v3, :cond_4

    const/4 v0, 0x1

    .line 634
    .local v0, "isAdded":Z
    :goto_1
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isFaceAdded:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", pre:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    .line 638
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 637
    if-eqz v4, :cond_2

    .line 639
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v4, :cond_2

    .line 641
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 642
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateBouncerPromptReason()V

    .line 643
    const-string/jumbo v4, "OPFacelockController"

    const-string/jumbo v5, "face is added and not allowed, update Prompt reason"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 650
    if-eq v0, v1, :cond_3

    .line 651
    if-eqz v0, :cond_5

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    .line 658
    :cond_3
    :goto_2
    return-void

    .line 627
    .end local v0    # "isAdded":Z
    .end local v1    # "preAdded":Z
    :catch_0
    move-exception v2

    .line 628
    .local v2, "re":Ljava/lang/Exception;
    const-string/jumbo v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateIsFaceAdded fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 633
    .end local v2    # "re":Ljava/lang/Exception;
    .restart local v1    # "preAdded":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isAdded":Z
    goto/16 :goto_1

    .line 654
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    goto :goto_2
.end method

.method private updateKeyguardAlpha(IZ)V
    .locals 5
    .param p1, "alpha"    # I
    .param p2, "updateState"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 826
    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", live wp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    if-nez p1, :cond_0

    .line 830
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 845
    if-ne p1, v4, :cond_1

    .line 846
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 847
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 849
    :cond_1
    return-void
.end method

.method private updateNotifyMessage(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "color"    # I

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockNotifyMsgId(I)I

    move-result v0

    .line 945
    .local v0, "msgId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;III)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 981
    return-void
.end method

.method private updateRecognizedState(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "color"    # I

    .prologue
    const/4 v1, 0x1

    .line 308
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    if-eqz v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateNotifyMessage(II)V

    .line 312
    if-ne p1, v1, :cond_1

    .line 313
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 315
    :cond_1
    return-void
.end method


# virtual methods
.method public canLaunchFacelock()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    if-eqz v0, :cond_0

    .line 601
    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "not start when camera launching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v2

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 604
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "not allow to facelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1
    return v2

    .line 606
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockTimeout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "timeout, not allow to facelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return v2

    .line 610
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1209
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1219
    const-string/jumbo v0, "  OPFacelockController: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1220
    const-string/jumbo v0, "  mFailAttempts: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1221
    const-string/jumbo v0, "  mLockout: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1222
    const-string/jumbo v0, "  mBinding: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1223
    const-string/jumbo v0, "  mCameraLaunching: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1224
    const-string/jumbo v0, "  mBoundToService: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1225
    const-string/jumbo v0, "  mFaceLockActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1226
    const-string/jumbo v0, "  mService: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/android/internal/policy/IOPFacelockService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1227
    const-string/jumbo v0, "  isFacelockEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1228
    const-string/jumbo v0, "  isAutoFacelockEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1229
    const-string/jumbo v0, "  isFacelockLightingEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1230
    const-string/jumbo v0, "  FacelockRunningType: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1231
    const-string/jumbo v0, "  isFacelockTimeout: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockTimeout()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1232
    const-string/jumbo v0, "  isFacelockAllowed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1233
    const-string/jumbo v0, "  mIsKeyguardShowing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1234
    const-string/jumbo v0, "  mBouncer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1235
    const-string/jumbo v0, "  mIsScreenTurnedOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1236
    const-string/jumbo v0, "  mNeedToPendingStopFacelock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1237
    const-string/jumbo v0, "  mPendingStopFacelock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1238
    const-string/jumbo v0, "  hasRunnable: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEndStopFacelockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1239
    const-string/jumbo v0, "  mIsScreenOffUnlock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1240
    const-string/jumbo v0, "  mStartFacelockWhenScreenOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1241
    const-string/jumbo v0, "  mIsSleep: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1242
    const-string/jumbo v0, "  mLightingModeEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1243
    const-string/jumbo v0, "  LIGHTING_MODE_SENSOR_THRESHOLD: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1244
    const-string/jumbo v0, "  LIGHTING_MODE_BRIGHTNESS: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1246
    return-void

    .line 1238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFacelockRunning()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    return v0
.end method

.method public isFacelockTimeout()Z
    .locals 2

    .prologue
    .line 898
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 899
    .local v0, "allowed":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    if-nez v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLighModeEnabled()Z
    .locals 1

    .prologue
    .line 1204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return v0
.end method

.method public notifyCameraLaunching(ZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "isCameraLaunching"    # Z
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 663
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v1, :cond_0

    .line 664
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 668
    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 669
    .local v0, "hasRunnable":Z
    :goto_0
    const-string/jumbo v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyCameraLaunching, hasRunnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", facelockActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", keyguard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-nez v1, :cond_3

    .line 672
    if-eqz v0, :cond_1

    .line 673
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 681
    :cond_1
    :goto_1
    return-void

    .line 668
    .end local v0    # "hasRunnable":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasRunnable":Z
    goto :goto_0

    .line 676
    :cond_3
    if-eqz v0, :cond_4

    .line 677
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mEndStopFacelockRunnable:Ljava/lang/Runnable;

    .line 679
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    goto :goto_1
.end method

.method public onClearFailedFacelockAttempts()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 560
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClearFailedFacelockAttempts, failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lockout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 562
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 563
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1194
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "onClick to stop Lighting mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    .line 1196
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 507
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceProvisioned, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_1

    .line 509
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 513
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 3
    .param p1, "dreaming"    # Z

    .prologue
    .line 469
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDreamingStateChanged, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    const/4 v3, 0x0

    .line 456
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishedGoingToSleep, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 462
    const-string/jumbo v0, "persist.sys.facelock.lsensor"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    .line 463
    const-string/jumbo v0, "persist.sys.facelock.bright"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 465
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "isBouncer"    # Z

    .prologue
    .line 549
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardBouncerChanged , bouncer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    .line 552
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    .line 556
    :cond_1
    return-void
.end method

.method public onKeyguardReset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 475
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_0

    .line 476
    return-void

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_3

    .line 479
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v0, :cond_2

    .line 480
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "onKeyguardReset to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 483
    :cond_2
    return-void

    .line 486
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-eqz v0, :cond_5

    .line 487
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "onKeyguardReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 492
    :cond_5
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 7
    .param p1, "showing"    # Z

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 518
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardVisibilityChanged, show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 521
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    .line 522
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 527
    if-eqz p1, :cond_4

    .line 529
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 544
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    .line 545
    return-void

    .line 537
    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 539
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 540
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onPasswordLockout()V
    .locals 2

    .prologue
    .line 575
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "onPasswordLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 577
    return-void
.end method

.method public onPreStartedGoingToSleep()V
    .locals 2

    .prologue
    .line 432
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "onPreStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 434
    return-void
.end method

.method public onPreStartedWakingUp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 378
    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreStartedWakingUp, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 380
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 381
    :cond_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 387
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 427
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 429
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 406
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenTurnedOn, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    if-eqz v0, :cond_2

    .line 411
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 415
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 416
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 423
    :cond_2
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 6
    .param p1, "why"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 438
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartedGoingToSleep, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 444
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 446
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 447
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 452
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 392
    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartedWakingUp, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lockout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 395
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 402
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 567
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 569
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelockSetting()V

    .line 570
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 498
    if-eqz p1, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 501
    :cond_0
    return-void
.end method

.method public resetFacelockPending()V
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 761
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 762
    return-void
.end method

.method public setClockY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->setClockY(F)V

    .line 1190
    :cond_0
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "indicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1215
    return-void
.end method

.method public stopFacelockLightMode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1199
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    .line 1200
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V

    .line 1201
    return-void
.end method

.method public tryToStartFaceLock()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 581
    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryToStartFaceLock, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 585
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 591
    :cond_1
    return v3
.end method

.method public tryToStartFaceLockAfterScreenOn()V
    .locals 2

    .prologue
    .line 595
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "tryToStartFaceLockAfterScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 597
    return-void
.end method
