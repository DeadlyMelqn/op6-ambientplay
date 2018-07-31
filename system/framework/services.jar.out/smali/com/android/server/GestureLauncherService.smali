.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$1;,
        Lcom/android/server/GestureLauncherService$2;,
        Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;,
        Lcom/android/server/GestureLauncherService$GestureEventListener;
    }
.end annotation


# static fields
.field static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field private static final CAMERA_POWER_DOUBLE_TAP_MIN_TIME_MS:J = 0x78L

.field private static final DBG:Z = false

.field private static final DBG_CAMERA_LIFT:Z = false

.field private static final EMERGENCY_CALL_POWER_KEY_TAP_INTERVAL:J = 0x190L

.field static final POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "GestureLauncherService"


# instance fields
.field private mCameraDoubleTapPowerEnabled:Z

.field private mCameraGestureLastEventTime:J

.field private mCameraGestureOnTimeMs:J

.field private mCameraGestureSensor1LastOnTimeMs:J

.field private mCameraGestureSensor2LastOnTimeMs:J

.field private mCameraLaunchLastEventExtra:I

.field private mCameraLaunchRegistered:Z

.field private mCameraLaunchSensor:Landroid/hardware/Sensor;

.field private mCameraLiftRegistered:Z

.field private final mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

.field private mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mEmergencyNumber:Ljava/lang/String;

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mHits:[J

.field private mIsEmergencyOnPowerKeyTapEnabled:Z

.field private mLastPowerDown:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPowerButtonConsecutiveTaps:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/GestureLauncherService;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/GestureLauncherService;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/GestureLauncherService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/GestureLauncherService;)Landroid/view/WindowManagerInternal;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/GestureLauncherService;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/GestureLauncherService;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/GestureLauncherService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/GestureLauncherService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/GestureLauncherService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/GestureLauncherService;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/GestureLauncherService;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/GestureLauncherService;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/GestureLauncherService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/GestureLauncherService;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/GestureLauncherService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/GestureLauncherService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/GestureLauncherService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/GestureLauncherService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/GestureLauncherService;-><init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;)V

    .line 153
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsLogger"    # Lcom/android/internal/logging/MetricsLogger;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$GestureEventListener;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 85
    new-instance v0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;)V

    .line 84
    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .line 102
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 105
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 112
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 122
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 491
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 504
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 158
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 160
    return-void
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 359
    const v0, 0x112002a

    .line 358
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 337
    const-string/jumbo v2, "camera_double_tap_power_gesture_disabled"

    .line 336
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 335
    :cond_0
    return v0
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    .line 352
    const v2, 0x10e0020

    .line 351
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 352
    const/4 v3, -0x1

    .line 351
    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 353
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 354
    const-string/jumbo v2, "gesture.disable_camera_launch"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 353
    :cond_0
    return v1

    .line 351
    .end local v0    # "configSet":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "configSet":Z
    goto :goto_0
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 331
    const-string/jumbo v2, "camera_gesture_disabled"

    .line 330
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 329
    :cond_0
    return v0
.end method

.method public static isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 364
    const v1, 0x10e0021

    .line 363
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 364
    const/4 v2, -0x1

    .line 363
    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 365
    .local v0, "configSet":Z
    :goto_0
    return v0

    .line 363
    .end local v0    # "configSet":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "configSet":Z
    goto :goto_0
.end method

.method public static isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 343
    const-string/jumbo v3, "camera_lift_trigger_enabled"

    .line 342
    invoke-static {v2, v3, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 342
    goto :goto_0

    :cond_1
    move v0, v1

    .line 341
    goto :goto_0
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 629
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 630
    const-string/jumbo v2, "emergency_affordance_needed"

    .line 629
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEmergencyOnpowerButtonTapEnabled(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 369
    const-string/jumbo v0, "persist.sys.ecall_pwr_key_press"

    const/4 v1, 0x0

    .line 368
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const v0, 0x1120051

    .line 370
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 378
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    .line 378
    if-nez v0, :cond_0

    .line 380
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isEmergencyOnpowerButtonTapEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 242
    iget-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v4, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 246
    iget-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    iput-wide v4, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 247
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 248
    const-string/jumbo v5, "sensor"

    .line 247
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 250
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    const v4, 0x10e0020

    .line 249
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 251
    .local v0, "cameraLaunchGestureId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 252
    iput-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 254
    const v4, 0x1040128

    .line 253
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "sensorName":Ljava/lang/String;
    invoke-virtual {v2, v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 262
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_1

    .line 263
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 265
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 264
    invoke-virtual {v2, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 277
    .end local v3    # "sensorName":Ljava/lang/String;
    :cond_1
    return-void

    .line 267
    .restart local v3    # "sensorName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 269
    aput-object v3, v5, v6

    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 267
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private registerCameraLiftTrigger(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 293
    iget-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v4, :cond_0

    .line 294
    return-void

    .line 296
    :cond_0
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 297
    const-string/jumbo v5, "sensor"

    .line 296
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 299
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    const v4, 0x10e0021

    .line 298
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 300
    .local v0, "cameraLiftTriggerId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 301
    iput-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 303
    const v4, 0x1040129

    .line 302
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "sensorName":Ljava/lang/String;
    invoke-virtual {v2, v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 311
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    if-eqz v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .line 314
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 313
    invoke-virtual {v2, v4, v5}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 326
    .end local v3    # "sensorName":Ljava/lang/String;
    :cond_1
    return-void

    .line 316
    .restart local v3    # "sensorName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 318
    aput-object v3, v5, v6

    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 316
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 189
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "camera_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 189
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 192
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 195
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    const-string/jumbo v1, "camera_lift_trigger_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 195
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 198
    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 224
    iget-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v1, :cond_0

    .line 225
    iput-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 226
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 227
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 228
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 229
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 230
    iput v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 232
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 233
    const-string/jumbo v2, "sensor"

    .line 232
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 234
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 236
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method private unregisterCameraLiftTrigger()V
    .locals 3

    .prologue
    .line 280
    iget-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v1, :cond_0

    .line 281
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 283
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 284
    const-string/jumbo v2, "sensor"

    .line 283
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 285
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 287
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method private updateCameraRegistered()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLiftTrigger(Landroid/content/res/Resources;)V

    .line 213
    :goto_1
    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    goto :goto_0

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLiftTrigger()V

    goto :goto_1
.end method

.method private updateEmergencyCallTapPowerEnabled()V
    .locals 6

    .prologue
    .line 384
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 386
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->isEmergencyOnpowerButtonTapEnabled(Landroid/content/res/Resources;)Z

    move-result v2

    .line 385
    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mIsEmergencyOnPowerKeyTapEnabled:Z

    .line 388
    const v2, 0x104052c

    .line 387
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mEmergencyNumber:Ljava/lang/String;

    .line 390
    const v2, 0x10e00f2

    .line 389
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 391
    .local v0, "hits":I
    int-to-long v2, v0

    const-wide/16 v4, 0x190

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mDuration:J

    .line 392
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    .line 393
    const-string/jumbo v2, "GestureLauncherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Gesture launcher mEmergencyNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 394
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mEmergencyNumber:Ljava/lang/String;

    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 394
    const-string/jumbo v4, " hits = "

    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method


# virtual methods
.method handleCameraGesture(ZI)Z
    .locals 6
    .param p1, "useWakelock"    # Z
    .param p2, "source"    # I

    .prologue
    const/4 v5, 0x0

    .line 469
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 470
    const-string/jumbo v3, "user_setup_complete"

    const/4 v4, -0x2

    .line 469
    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 471
    .local v1, "userSetupComplete":Z
    :goto_0
    if-nez v1, :cond_1

    .line 475
    return v5

    .line 469
    .end local v1    # "userSetupComplete":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "userSetupComplete":Z
    goto :goto_0

    .line 481
    :cond_1
    if-eqz p1, :cond_2

    .line 483
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 486
    :cond_2
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 485
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 487
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v0, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 488
    const/4 v2, 0x1

    return v2
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "outLaunched"    # Landroid/util/MutableBoolean;

    .prologue
    .line 399
    const/4 v3, 0x0

    .line 400
    .local v3, "launched":Z
    const/4 v2, 0x0

    .line 402
    .local v2, "intercept":Z
    monitor-enter p0

    .line 403
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long v4, v6, v8

    .line 404
    .local v4, "powerTapInterval":J
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->isEmergencyAffordanceNeeded()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mIsEmergencyOnPowerKeyTapEnabled:Z

    .line 407
    iget-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mIsEmergencyOnPowerKeyTapEnabled:Z

    if-eqz v6, :cond_3

    .line 408
    const-wide/16 v6, 0x78

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    .line 410
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    iget-object v7, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    iget-object v8, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v6, v9, v7, v10, v8}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 411
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    iget-object v7, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 412
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 413
    const-string/jumbo v6, "GestureLauncherService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mHits["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    aget-wide v8, v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_0
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/GestureLauncherService;->mDuration:J

    sub-long/2addr v8, v10

    .line 415
    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 417
    const/4 v3, 0x1

    .line 418
    move v2, p2

    .line 419
    .local v2, "intercept":Z
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHits:[J

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Ljava/util/Arrays;->fill([JJ)V

    .line 432
    .end local v0    # "i":I
    .end local v2    # "intercept":Z
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 438
    if-eqz v3, :cond_2

    .line 439
    iget-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mIsEmergencyOnPowerKeyTapEnabled:Z

    if-eqz v6, :cond_6

    .line 440
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mEmergencyNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 439
    if-eqz v6, :cond_6

    .line 441
    const-string/jumbo v6, "GestureLauncherService"

    const-string/jumbo v7, "Power button Triple tap gesture detected, launching Emergency Call"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL_PRIVILEGED"

    .line 443
    const-string/jumbo v7, "tel"

    iget-object v8, p0, Lcom/android/server/GestureLauncherService;->mEmergencyNumber:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 442
    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 444
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 458
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "launched":Z
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v7, "power_consecutive_short_tap_count"

    iget v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 459
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v7, "power_double_tap_interval"

    long-to-int v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 460
    iput-boolean v3, p3, Landroid/util/MutableBoolean;->value:Z

    .line 461
    if-eqz v2, :cond_7

    :goto_3
    return v3

    .line 421
    .local v2, "intercept":Z
    .restart local v3    # "launched":Z
    :cond_3
    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    if-eqz v6, :cond_4

    .line 422
    const-wide/16 v6, 0x12c

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 423
    const-wide/16 v6, 0x78

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 424
    const/4 v3, 0x1

    .line 425
    move v2, p2

    .line 426
    .local v2, "intercept":Z
    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 402
    .end local v2    # "intercept":Z
    .end local v4    # "powerTapInterval":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 427
    .local v2, "intercept":Z
    .restart local v4    # "powerTapInterval":J
    :cond_4
    const-wide/16 v6, 0x1f4

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    .line 428
    :try_start_2
    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    goto :goto_1

    .line 430
    :cond_5
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 447
    .end local v2    # "intercept":Z
    :cond_6
    const-string/jumbo v6, "GestureLauncherService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 448
    const-string/jumbo v8, "ms"

    .line 447
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v6, 0x0

    .line 450
    const/4 v7, 0x1

    .line 449
    invoke-virtual {p0, v6, v7}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v3

    .line 451
    .local v3, "launched":Z
    if-eqz v3, :cond_2

    .line 452
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 454
    long-to-int v7, v4

    .line 453
    const/16 v8, 0xff

    .line 452
    invoke-static {v6, v8, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_2

    .line 461
    .end local v3    # "launched":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    .line 167
    const/16 v1, 0x258

    if-ne p1, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    const-class v1, Landroid/view/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 175
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 176
    const-string/jumbo v2, "power"

    .line 175
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    .line 177
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    .line 178
    const-string/jumbo v2, "GestureLauncherService"

    .line 177
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 179
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 180
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 181
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateEmergencyCallTapPowerEnabled()V

    .line 182
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 183
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 186
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 163
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method updateCameraDoubleTapPowerEnabled()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 218
    .local v0, "enabled":Z
    monitor-enter p0

    .line 219
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 221
    return-void

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
