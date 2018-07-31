.class public Lcom/oneplus/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/doze/DozeService$1;,
        Lcom/oneplus/doze/DozeService$2;,
        Lcom/oneplus/doze/DozeService$3;,
        Lcom/oneplus/doze/DozeService$LightCheck;,
        Lcom/oneplus/doze/DozeService$MotionCheck;,
        Lcom/oneplus/doze/DozeService$ProximityCheck;,
        Lcom/oneplus/doze/DozeService$TriggerSensor;
    }
.end annotation


# static fields
.field private static final ACTION_BASE:Ljava/lang/String; = "com.oneplus.aod.doze"

.field private static final DEBUG:Z = true

.field private static final PULSE_ACTION:Ljava/lang/String; = "com.oneplus.aod.doze.pulse"

.field private static final REREGISTER_ALL_SENSORS_ON_SCREEN_OFF:Z = true

.field static final SCREEN_MODE_DARK:I = 0x0

.field static final SCREEN_MODE_LIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DozeService"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field private mCarMode:Z

.field private mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mDisplayStateSupported:Z

.field private final mDozeParameters:Lcom/oneplus/doze/DozeParameters;

.field private mDreaming:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Lcom/oneplus/doze/DozeHost;

.field private final mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

.field private mLight:Lcom/oneplus/doze/DozeService$LightCheck;

.field private mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

.field private mNotificationPulseTime:J

.field private mPickupSensor:Lcom/oneplus/doze/DozeService$TriggerSensor;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveActive:Z

.field private mPulsing:Z

.field private mReason:I

.field private mScreenMode:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensors:[Lcom/oneplus/doze/DozeService$TriggerSensor;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mTag:Ljava/lang/String;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/oneplus/doze/DozeService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/doze/DozeService;)I
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget v0, p0, Lcom/oneplus/doze/DozeService;->mScreenMode:I

    return v0
.end method

.method static synthetic -get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeParameters;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/doze/DozeService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$MotionCheck;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/doze/DozeService;)J
    .locals 2
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-wide v0, p0, Lcom/oneplus/doze/DozeService;->mNotificationPulseTime:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/oneplus/doze/DozeService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    return v0
.end method

.method static synthetic -get8(Lcom/oneplus/doze/DozeService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    return v0
.end method

.method static synthetic -get9(Lcom/oneplus/doze/DozeService;)I
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    iget v0, p0, Lcom/oneplus/doze/DozeService;->mReason:I

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/doze/DozeService;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/doze/DozeService;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/doze/DozeService;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    return p1
.end method

.method static synthetic -set3(Lcom/oneplus/doze/DozeService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/oneplus/doze/DozeService;->mScreenMode:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    invoke-static {p0}, Lcom/oneplus/doze/DozeService;->triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->checkLightSensor()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->turnDisplayOff()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->turnDisplayOn()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/doze/DozeService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishForCarMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishToSavePower()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->requestNotificationPulse()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/doze/DozeService;IZ)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;
    .param p1, "reason"    # I
    .param p2, "performedProxCheck"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/doze/DozeService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->requestPulse(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->requestThreeKeyStatePulse()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/doze/DozeService;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/doze/DozeService;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->reregisterAllSensors()V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 81
    const-string/jumbo v0, "DozeService.%08x"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    .line 82
    iput-object p0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/oneplus/doze/DozeParameters;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/doze/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mHandler:Landroid/os/Handler;

    .line 106
    iput v3, p0, Lcom/oneplus/doze/DozeService;->mScreenMode:I

    .line 474
    new-instance v0, Lcom/oneplus/doze/DozeService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeService$1;-><init>(Lcom/oneplus/doze/DozeService;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    new-instance v0, Lcom/oneplus/doze/DozeService$2;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/doze/DozeService$2;-><init>(Lcom/oneplus/doze/DozeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 516
    new-instance v0, Lcom/oneplus/doze/DozeService$3;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeService$3;-><init>(Lcom/oneplus/doze/DozeService;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

    .line 111
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "new DozeService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, v4}, Lcom/oneplus/doze/DozeService;->setDebug(Z)V

    .line 113
    return-void
.end method

.method private checkLightSensor()V
    .locals 1

    .prologue
    .line 943
    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    return-void

    .line 947
    :cond_0
    new-instance v0, Lcom/oneplus/doze/DozeService$6;

    invoke-direct {v0, p0, p0}, Lcom/oneplus/doze/DozeService$6;-><init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService;)V

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeService$6;->check()V

    .line 979
    return-void
.end method

.method private continuePulsing(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    .line 324
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 328
    :cond_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    new-instance v1, Lcom/oneplus/doze/DozeService$5;

    invoke-direct {v1, p0}, Lcom/oneplus/doze/DozeService$5;-><init>(Lcom/oneplus/doze/DozeService;)V

    invoke-interface {v0, v1, p1}, Lcom/oneplus/doze/DozeHost;->pulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V

    .line 354
    return-void
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 560
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    return-object v5

    .line 563
    :cond_0
    iget-object v3, p0, Lcom/oneplus/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 564
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 565
    .local v0, "s":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 566
    return-object v0

    .line 569
    .end local v0    # "s":Landroid/hardware/Sensor;
    :cond_2
    return-object v5
.end method

.method private finishForCarMode()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Exiting ambient mode, not allowed in car mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->finish()V

    .line 376
    return-void
.end method

.method private finishToSavePower()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Exiting ambient mode due to low power battery saver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->finish()V

    .line 371
    return-void
.end method

.method public static isProximityDozeEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 866
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 868
    const-string/jumbo v2, "prox_wake_enabled"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 866
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private listenForBroadcasts(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .prologue
    .line 411
    if-eqz p1, :cond_0

    .line 412
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.oneplus.aod.doze.pulse"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 427
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    .line 437
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 435
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    goto :goto_0
.end method

.method private listenForNotifications(Z)V
    .locals 2
    .param p1, "listen"    # Z

    .prologue
    .line 440
    if-eqz p1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/oneplus/doze/DozeHost;->addCallback(Lcom/oneplus/doze/DozeHost$Callback;)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mHostCallback:Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/oneplus/doze/DozeHost;->removeCallback(Lcom/oneplus/doze/DozeHost$Callback;)V

    goto :goto_0
.end method

.method private listenForPulseSignals(Z)V
    .locals 3
    .param p1, "listen"    # Z

    .prologue
    .line 379
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listenForPulseSignals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->isProximityDozeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeService$MotionCheck;->setListening(Z)V

    .line 394
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->listenForNotifications(Z)V

    .line 395
    return-void
.end method

.method private requestNotificationPulse()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "requestNotificationPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/doze/DozeService;->mNotificationPulseTime:J

    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->requestPulse(I)V

    .line 453
    return-void
.end method

.method private requestPulse(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V

    .line 256
    return-void
.end method

.method private requestPulse(IZ)V
    .locals 8
    .param p1, "reason"    # I
    .param p2, "performedProxCheck"    # Z

    .prologue
    const/4 v3, 0x1

    .line 259
    const-string/jumbo v0, "DozeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestPulseL: mHost = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mDreaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mPulsing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    const-string/jumbo v2, ", reason="

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    const-string/jumbo v2, ", check="

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iput p1, p0, Lcom/oneplus/doze/DozeService;->mReason:I

    .line 264
    if-eq p1, v3, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->continePulse(I)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 272
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 275
    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    .line 277
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v0

    if-nez v0, :cond_3

    .line 279
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    .line 280
    return-void

    .line 283
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 284
    .local v4, "start":J
    if-eqz p2, :cond_4

    .line 287
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v0

    if-nez v0, :cond_6

    .line 292
    new-instance v1, Lcom/oneplus/doze/DozeService$4;

    move-object v2, p0

    move-object v3, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/doze/DozeService$4;-><init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService;JIZ)V

    invoke-virtual {v1}, Lcom/oneplus/doze/DozeService$4;->check()V

    .line 319
    .end local v4    # "start":J
    :cond_5
    :goto_0
    return-void

    .line 315
    .restart local v4    # "start":J
    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService;->continuePulsing(I)V

    goto :goto_0
.end method

.method private requestThreeKeyStatePulse()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "requestNotificationPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService;->requestPulse(I)V

    .line 459
    return-void
.end method

.method private reregisterAllSensors()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method private static triggerEventToString(Landroid/hardware/TriggerEvent;)Ljava/lang/String;
    .locals 7
    .param p0, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/16 v6, 0x2c

    const/4 v2, 0x0

    .line 462
    if-nez p0, :cond_0

    return-object v2

    .line 463
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TriggerEvent["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    iget-wide v4, p0, Landroid/hardware/TriggerEvent;->timestamp:J

    .line 463
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    iget-object v3, p0, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 466
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    if-eqz v2, :cond_1

    .line 467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/TriggerEvent;->values:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 468
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/TriggerEvent;->values:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v0    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private turnDisplayOff()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Display off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeService;->setDozeScreenState(I)V

    .line 359
    return-void
.end method

.method private turnDisplayOn()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Display on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDisplayStateSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeService;->setDozeScreenState(I)V

    .line 366
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "  mDreaming: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 119
    const-string/jumbo v0, "  mPulsing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPulsing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 120
    const-string/jumbo v0, "  mWakeLock: held="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 121
    const-string/jumbo v0, "  mHost: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 122
    const-string/jumbo v0, "  mBroadcastReceiverRegistered: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mBroadcastReceiverRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 130
    const-string/jumbo v0, "  mMotion:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 131
    const-string/jumbo v0, "  mLight:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mLight:Lcom/oneplus/doze/DozeService$LightCheck;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 133
    const-string/jumbo v0, "  mDisplayStateSupported: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDisplayStateSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 134
    const-string/jumbo v0, "  mPowerSaveActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 135
    const-string/jumbo v0, "  mCarMode: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 136
    const-string/jumbo v0, "  mNotificationPulseTime: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/oneplus/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/oneplus/doze/DozeService;->mNotificationPulseTime:J

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 137
    sub-long/2addr v2, v4

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 137
    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v0, p2}, Lcom/oneplus/doze/DozeParameters;->dump(Ljava/io/PrintWriter;)V

    .line 140
    return-void
.end method

.method synthetic lambda$-com_oneplus_doze_DozeService_8629()V
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->startDozing()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 192
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 144
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 147
    invoke-static {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getDozeHost()Lcom/oneplus/doze/DozeHost;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    .line 148
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-nez v0, :cond_0

    const-string/jumbo v0, "DozeService"

    const-string/jumbo v1, "No doze service host found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->init()V

    .line 150
    invoke-virtual {p0, v2}, Lcom/oneplus/doze/DozeService;->setWindowless(Z)V

    .line 152
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 153
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 176
    new-instance v0, Lcom/oneplus/doze/DozeService$MotionCheck;

    invoke-direct {v0, p0}, Lcom/oneplus/doze/DozeService$MotionCheck;-><init>(Lcom/oneplus/doze/DozeService;)V

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mMotion:Lcom/oneplus/doze/DozeService$MotionCheck;

    .line 179
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    .line 180
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 181
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "DozeService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 182
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 183
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mDozeParameters:Lcom/oneplus/doze/DozeParameters;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mDisplayStateSupported:Z

    .line 184
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/oneplus/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    .line 185
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->turnDisplayOff()V

    .line 186
    return-void
.end method

.method public onDreamingStarted()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 198
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->finish()V

    .line 200
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    .line 203
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    .line 204
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDreamingStarted canDoze="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->canDoze()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPowerSaveActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 205
    iget-boolean v3, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 205
    const-string/jumbo v3, " mCarMode="

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 205
    iget-boolean v3, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mPowerSaveActive:Z

    if-eqz v0, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishToSavePower()V

    .line 208
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService;->mCarMode:Z

    if-eqz v0, :cond_3

    .line 211
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService;->finishForCarMode()V

    .line 212
    return-void

    .line 215
    :cond_3
    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    .line 216
    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService;->listenForPulseSignals(Z)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Lcom/oneplus/doze/-$Lambda$Ui9NJ_mYzmvoKQditpmvul44yEs;

    invoke-direct {v2, p0}, Lcom/oneplus/doze/-$Lambda$Ui9NJ_mYzmvoKQditpmvul44yEs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/doze/DozeHost;->startDozing(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public onDreamingStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDreamingStopped isDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService;->isDozing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 236
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    if-nez v0, :cond_0

    .line 237
    return-void

    .line 240
    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/doze/DozeService;->mDreaming:Z

    .line 241
    invoke-direct {p0, v3}, Lcom/oneplus/doze/DozeService;->listenForPulseSignals(Z)V

    .line 244
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost;->stopDozing()V

    .line 245
    return-void
.end method

.method public onWakingUp(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/oneplus/doze/DozeService;->mHost:Lcom/oneplus/doze/DozeHost;

    invoke-interface {v0, p1}, Lcom/oneplus/doze/DozeHost;->onWakingUp(Ljava/lang/String;)V

    .line 251
    return-void
.end method
