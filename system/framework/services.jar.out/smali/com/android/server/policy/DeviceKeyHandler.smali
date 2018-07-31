.class public Lcom/android/server/policy/DeviceKeyHandler;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DeviceKeyHandler$1;,
        Lcom/android/server/policy/DeviceKeyHandler$2;,
        Lcom/android/server/policy/DeviceKeyHandler$3;,
        Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;,
        Lcom/android/server/policy/DeviceKeyHandler$EventHandler;,
        Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_FRONT_CAMERA:Ljava/lang/String; = "FrontCamera"

.field private static final ACTION_OPEN_APP:Ljava/lang/String; = "OpenApp"

.field private static final ACTION_OPEN_CAMERA:Ljava/lang/String; = "OpenCamera"

.field private static final ACTION_OPEN_SHELF:Ljava/lang/String; = "OpenShelf"

.field private static final ACTION_OPEN_SHORTCUT:Ljava/lang/String; = "OpenShortcut"

.field private static final ACTION_OPEN_TORCH:Ljava/lang/String; = "OpenTorch"

.field private static final ACTION_TAKE_VIDEO:Ljava/lang/String; = "TakeVideo"

.field private static final BLACK_ENBALE_PATH:Ljava/lang/String; = "/proc/touchpanel/gesture_enable"

.field private static final BLACK_VALUE_PATH:Ljava/lang/String; = "/proc/touchpanel/coordinate"

.field private static final CAMERA_ID:Ljava/lang/String; = "0"

.field private static final DEBUG:Z

.field private static final GESTURE_DOUBLE_TAP:Ljava/lang/String; = "1"

.field private static final GESTURE_GTR_SCANCODE:Ljava/lang/String; = "4"

.field private static final GESTURE_LTR_SCANCODE:Ljava/lang/String; = "5"

.field private static final GESTURE_NEW_M_SCANCODE:Ljava/lang/String; = "12"

.field private static final GESTURE_NEW_O_SCANCODE:Ljava/lang/String; = "6"

.field private static final GESTURE_NEW_S_SCANCODE:Ljava/lang/String; = "14"

.field private static final GESTURE_NEW_V_SCANCODE:Ljava/lang/String; = "2"

.field private static final GESTURE_NEW_W_SCANCODE:Ljava/lang/String; = "13"

.field private static final GESTURE_SWIPE_DOWN_SCANCODE:Ljava/lang/String; = "7"

.field private static final GESTURE_SWITCH:Ljava/lang/String; = "/proc/touchpanel/gesture_switch"

.field private static final GESTURE_WAKELOCK_DURATION:I = 0xbb8

.field private static final MAX_WAIT_TIME:I = 0x3e8

.field private static final PROXIMITY_THRESHOLD:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "DeviceKeyHandler"

.field private static final VIBRATE_DURATION_LONG:J = 0x96L

.field private static final VIBRATE_DURATION_SHORT:J = 0x4bL

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private gesture_switch_exist:Z

.field mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBlackEnableState:Z

.field private mBlackKeySettingState:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mDoubleScreenOn:Z

.field private mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

.field private mFlashlightEnabled:Z

.field final mGestureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mKeyguardOcclude:Z

.field mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListenKeyguard:Z

.field private mMusic_control:Z

.field private mMusic_next:Z

.field private mMusic_pause:Z

.field private mMusic_play:Z

.field private mMusic_prev:Z

.field private final mObject:Ljava/lang/Object;

.field private mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

.field private mOld_O:Z

.field private mOld_V:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPocketListener:Landroid/hardware/SensorEventListener;

.field private mPocketmodeEnabled:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSleeping:Z

.field private mSystemReady:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->processKeyEvent()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->updateOemSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "persist.sys.assert.panic"

    .line 83
    const/4 v1, 0x0

    .line 82
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    .line 118
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 119
    const/4 v1, 0x4

    .line 118
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 120
    const/16 v1, 0xd

    .line 118
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    .line 136
    iput v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 137
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackEnableState:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 143
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_O:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_V:Z

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    .line 167
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenKeyguard:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    .line 469
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$1;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 514
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$2;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 942
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$3;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    .line 941
    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 196
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 197
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 198
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$EventHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    .line 199
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 201
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2651

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 202
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 203
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 205
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 206
    const-string/jumbo v1, "ProximityWakeLock"

    .line 205
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 208
    const-string/jumbo v1, "PartialGestureWakeLock"

    .line 207
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 209
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 211
    const-string/jumbo v1, "AcquireCauseWakeUpGestureWakeLock"

    .line 210
    const v2, 0x10000001

    .line 209
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 213
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    .line 215
    const-string/jumbo v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 216
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DeviceKeyHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 217
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 218
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    .line 219
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->registerCameraManagerCallbacks()V

    .line 221
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc/touchpanel/gesture_switch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 222
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 224
    return-void
.end method

.method private SensorProcessMessage()V
    .locals 6

    .prologue
    .line 580
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 581
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    monitor-enter v3

    .line 583
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 585
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit v3

    .line 604
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 605
    return-void

    .line 587
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->enableProximitySensor()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 593
    :goto_1
    :try_start_3
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    if-nez v2, :cond_2

    .line 594
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 595
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v4, "SensorProcessMessage(): sensor value change."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 598
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 600
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->disableProximitySensor()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 590
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private acquireGestureWakeLock(Ljava/lang/String;)V
    .locals 4
    .param p1, "gesture"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0xbb8

    .line 623
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 623
    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 627
    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 631
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->isAWakeUpGesture(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 632
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 640
    :cond_2
    :goto_0
    return-void

    .line 636
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method private disableProximitySensor()V
    .locals 4

    .prologue
    .line 563
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 564
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "disableProximitySensor() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 569
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 571
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 572
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 577
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 573
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    .line 574
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    throw v2
.end method

.method private dispatchMediaKeyWithWakeLockToAudioService(I)V
    .locals 10
    .param p1, "keycode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 977
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 978
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 979
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_1

    .line 980
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 981
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p1

    move v8, v6

    .line 980
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 982
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 983
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 984
    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 991
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 986
    .restart local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :cond_1
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 987
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "MediaSessionLegacyHelper instance is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableProximitySensor()V
    .locals 6

    .prologue
    .line 544
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 545
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "enableProximitySensor() called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 552
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 553
    const/4 v5, 0x0

    .line 552
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 555
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 556
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    .line 557
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 556
    throw v2
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 922
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    .line 923
    .local v4, "ids":[Ljava/lang/String;
    const/4 v6, 0x0

    array-length v7, v4

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v4, v6

    .line 925
    .local v3, "id":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 926
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 927
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 928
    .local v5, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 929
    if-eqz v5, :cond_0

    .line 930
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 931
    return-object v3

    .line 933
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v5    # "lensFacing":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 934
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DeviceKeyHandler"

    const-string/jumbo v7, "Couldn\'t get torch mode characteristics."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 935
    return-object v10

    .line 923
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v5    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 938
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    return-object v10
.end method

.method private getCameraType(Ljava/lang/String;)I
    .locals 2
    .param p1, "keyValue"    # Ljava/lang/String;

    .prologue
    .line 797
    const-string/jumbo v1, "OpenCamera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    const v0, 0x10000100

    .line 811
    .local v0, "param":I
    :goto_0
    return v0

    .line 797
    .end local v0    # "param":I
    :cond_0
    const-string/jumbo v1, "FrontCamera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 802
    const v0, 0x10000200

    .line 803
    .restart local v0    # "param":I
    goto :goto_0

    .line 797
    .end local v0    # "param":I
    :cond_1
    const-string/jumbo v1, "TakeVideo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 805
    const v0, 0x10000400

    .line 806
    .restart local v0    # "param":I
    goto :goto_0

    .line 808
    .end local v0    # "param":I
    :cond_2
    const v0, 0x10000100

    .line 809
    .restart local v0    # "param":I
    goto :goto_0
.end method

.method private getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 830
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 831
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 832
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 833
    const-string/jumbo v3, "DeviceKeyHandler"

    const-string/jumbo v4, "getDefaultHomePackageName: could not get package manager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string/jumbo v3, ""

    return-object v3

    .line 836
    :cond_0
    const/16 v3, 0x80

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 837
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_1

    .line 838
    const-string/jumbo v3, "DeviceKeyHandler"

    const-string/jumbo v4, "getDefaultHomePackageName: could not get ResolveInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-string/jumbo v3, ""

    return-object v3

    .line 841
    :cond_1
    const-string/jumbo v3, "DeviceKeyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isDefaultHome] default home: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v3

    :cond_2
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static getOffset(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "index"    # I

    .prologue
    .line 662
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    and-int/2addr v0, p0

    shr-int/2addr v0, p1

    return v0
.end method

.method private isAWakeUpGesture(Ljava/lang/String;)Z
    .locals 1
    .param p1, "gesture"    # Ljava/lang/String;

    .prologue
    .line 608
    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 608
    :cond_1
    const-string/jumbo v0, "OpenCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FrontCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TakeVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OpenShelf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OpenApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OpenShortcut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method private performVibration()V
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 967
    return-void
.end method

.method private performVibration(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 971
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x4b

    .line 972
    :goto_0
    sget-object v3, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 971
    invoke-virtual {v2, v0, v1, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 974
    :cond_0
    return-void

    .line 971
    :cond_1
    const-wide/16 v0, 0x96

    goto :goto_0
.end method

.method private processKeyEvent()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 666
    const-string/jumbo v8, "/proc/touchpanel/coordinate"

    invoke-static {v8}, Lcom/android/server/policy/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 668
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 669
    return-void

    .line 672
    :cond_0
    const/16 v8, 0x2c

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 673
    .local v2, "at":I
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "keyValue":Ljava/lang/String;
    const-string/jumbo v8, "DeviceKeyHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Receive gesture "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->isInCall()Z

    move-result v8

    if-nez v8, :cond_1

    .line 676
    const-string/jumbo v8, "7"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 678
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 679
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 680
    const/16 v8, 0x55

    invoke-direct {p0, v8}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 706
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 707
    .local v0, "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    if-eqz v0, :cond_2

    .line 708
    const-string/jumbo v8, "DeviceKeyHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Corresponding action is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "actionName":Ljava/lang/String;
    const-string/jumbo v8, "OpenTorch"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 712
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 713
    iget-boolean v7, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/server/policy/DeviceKeyHandler;->setFlashlight(Z)Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 775
    .end local v1    # "actionName":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 676
    .end local v0    # "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    :cond_3
    const-string/jumbo v8, "5"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 683
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 684
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 685
    const/16 v8, 0x58

    invoke-direct {p0, v8}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto :goto_0

    .line 676
    :cond_4
    const-string/jumbo v8, "4"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 688
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 689
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 690
    const/16 v8, 0x57

    invoke-direct {p0, v8}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    goto :goto_0

    .line 676
    :cond_5
    const-string/jumbo v8, "1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 695
    iget-boolean v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    if-eqz v8, :cond_1

    .line 696
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 697
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 698
    iget-object v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 710
    .restart local v0    # "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    .restart local v1    # "actionName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "OpenCamera"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 718
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 721
    const-class v7, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 720
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 722
    .local v4, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraType(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    goto :goto_1

    .line 710
    .end local v4    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_9
    const-string/jumbo v8, "FrontCamera"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string/jumbo v8, "TakeVideo"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string/jumbo v8, "OpenShelf"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 727
    :cond_a
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 728
    const/4 v5, 0x0

    .line 729
    .local v5, "success":Z
    iget-object v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v8, :cond_2

    .line 731
    const-string/jumbo v8, "com.oneplus.soundrecorder"

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 732
    iget-object v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8, v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v8

    .line 731
    if-eqz v8, :cond_e

    .line 732
    iget-boolean v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardOcclude:Z

    xor-int/lit8 v8, v8, 0x1

    .line 731
    if-eqz v8, :cond_e

    .line 735
    const/4 v8, 0x1

    invoke-virtual {p0, v0, v8}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    move-result v5

    .line 736
    .local v5, "success":Z
    if-eqz v5, :cond_b

    .line 737
    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 743
    :cond_b
    :goto_3
    if-eqz v5, :cond_2

    .line 744
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 745
    iget-object v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 747
    iget-object v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v8, :cond_2

    .line 748
    const-string/jumbo v8, "com.oneplus.soundrecorder"

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 749
    iget-object v8, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8, v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v7

    .line 748
    :cond_c
    xor-int/lit8 v7, v7, 0x1

    .line 747
    if-eqz v7, :cond_2

    .line 750
    iget-object v7, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v8, Lcom/android/server/policy/DeviceKeyHandler$4;

    invoke-direct {v8, p0}, Lcom/android/server/policy/DeviceKeyHandler$4;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    invoke-virtual {v7, v8}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    goto/16 :goto_1

    .line 710
    .end local v5    # "success":Z
    :cond_d
    const-string/jumbo v8, "OpenApp"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string/jumbo v8, "OpenShortcut"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    .line 741
    .local v5, "success":Z
    :cond_e
    invoke-virtual {p0, v0, v7}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    move-result v5

    .local v5, "success":Z
    goto :goto_3
.end method

.method private startApp(Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "test"    # Z

    .prologue
    const/4 v4, 0x1

    .line 846
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 847
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 848
    if-eqz p3, :cond_0

    .line 849
    return v4

    .line 851
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 852
    return v4

    .line 854
    :cond_1
    const-string/jumbo v1, "DeviceKeyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed because intent is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v1, 0x0

    return v1
.end method

.method private startShelf(Z)Z
    .locals 4
    .param p1, "test"    # Z

    .prologue
    const/4 v3, 0x1

    .line 815
    if-eqz p1, :cond_0

    return v3

    .line 817
    :cond_0
    const-string/jumbo v1, "net.oneplus.h2launcher"

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/policy/DeviceKeyHandler;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "net.oneplus.h2launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 825
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 826
    return v3

    .line 821
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "net.oneplus.launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "test"    # Z

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 860
    const-string/jumbo v1, "launcherapps"

    .line 859
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 861
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_1

    .line 862
    if-eqz p4, :cond_0

    .line 863
    new-instance v9, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v9}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 864
    .local v9, "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v9, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 865
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 866
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 868
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    .line 869
    const/4 v0, 0x1

    return v0

    .line 870
    :catch_0
    move-exception v7

    .line 871
    .local v7, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "get shortcuts failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v0, 0x0

    return v0

    .line 876
    .end local v7    # "ex":Ljava/lang/IllegalStateException;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 877
    const/4 v0, 0x1

    return v0

    .line 878
    :catch_1
    move-exception v6

    .line 879
    .local v6, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "start shortcut failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v0, 0x0

    return v0

    .line 884
    .end local v6    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "shortcut service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method private updateOemSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 399
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 401
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "oem_acc_blackscreen_gestrue_enable"

    .line 400
    invoke-static {v1, v2, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 404
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 405
    const-string/jumbo v2, "DeviceKeyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateH2OemSettings(): mBlackKeySettingState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x7

    invoke-static {v2, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 409
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x5

    invoke-static {v2, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 410
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x4

    invoke-static {v2, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 411
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 412
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v2, v8}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 413
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v2, v3}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 414
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x6

    invoke-static {v2, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_O:Z

    .line 415
    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v2, v4}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v2

    if-ne v2, v3, :cond_9

    move v2, v3

    :goto_7
    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_V:Z

    .line 419
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    if-eqz v2, :cond_1

    .line 420
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 424
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->makeGestureMap(Landroid/content/ContentResolver;)V

    .line 427
    new-array v0, v8, [B

    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    iget v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 428
    .local v0, "enableByte":[B
    const-string/jumbo v2, "/proc/touchpanel/gesture_enable"

    invoke-static {v2, v0}, Lcom/android/server/policy/FileUtils;->writeByteArray(Ljava/lang/String;[B)Z

    .line 431
    const-string/jumbo v2, "oem_acc_anti_misoperation_screen"

    .line 430
    invoke-static {v1, v2, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_a

    :goto_8
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    .line 433
    return-void

    .end local v0    # "enableByte":[B
    :cond_2
    move v2, v4

    .line 408
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 409
    goto :goto_1

    :cond_4
    move v2, v4

    .line 410
    goto :goto_2

    :cond_5
    move v2, v4

    .line 411
    goto :goto_3

    :cond_6
    move v2, v4

    .line 412
    goto :goto_4

    :cond_7
    move v2, v4

    .line 413
    goto :goto_5

    :cond_8
    move v2, v4

    .line 414
    goto :goto_6

    :cond_9
    move v2, v4

    .line 415
    goto :goto_7

    .restart local v0    # "enableByte":[B
    :cond_a
    move v3, v4

    .line 430
    goto :goto_8
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 498
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 499
    .local v3, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_1

    const/4 v0, 0x1

    .line 500
    .local v0, "actionUp":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    const/4 v4, 0x1

    .line 501
    .local v4, "shouldHandleEvent":Z
    :goto_1
    move v1, v4

    .line 502
    .local v1, "handled":Z
    if-eqz v4, :cond_0

    .line 503
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 504
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_3

    .line 505
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->SensorProcessMessage()V

    .line 511
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_2
    return v1

    .line 499
    .end local v0    # "actionUp":Z
    .end local v1    # "handled":Z
    .end local v4    # "shouldHandleEvent":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "actionUp":Z
    goto :goto_0

    .line 500
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "shouldHandleEvent":Z
    goto :goto_1

    .line 507
    .restart local v1    # "handled":Z
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method isInCall()Z
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method makeGestureMap(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v6, -0x2

    .line 296
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_o"

    .line 295
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "gestureActionO":Ljava/lang/String;
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_v"

    .line 298
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "gestureActionV":Ljava/lang/String;
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_s"

    .line 301
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "gestureActionS":Ljava/lang/String;
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_w"

    .line 304
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "gestureActionW":Ljava/lang/String;
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_m"

    .line 307
    invoke-static {p1, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "gestureActionM":Ljava/lang/String;
    if-nez v3, :cond_0

    iget-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_V:Z

    if-eqz v5, :cond_0

    .line 311
    const-string/jumbo v3, "OpenTorch"

    .line 313
    :cond_0
    if-nez v1, :cond_1

    iget-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_O:Z

    if-eqz v5, :cond_1

    .line 314
    const-string/jumbo v1, "OpenCamera"

    .line 316
    :cond_1
    const-string/jumbo v5, "6"

    invoke-virtual {p0, v5, v1}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v5, "2"

    invoke-virtual {p0, v5, v3}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string/jumbo v5, "14"

    invoke-virtual {p0, v5, v2}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v5, "13"

    invoke-virtual {p0, v5, v4}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v5, "12"

    invoke-virtual {p0, v5, v0}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public onKeyguardDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 461
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "receive keyguard done, process gesture action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    .line 464
    iput-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 466
    :cond_0
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 3
    .param p1, "occluded"    # Z

    .prologue
    .line 1000
    const-string/jumbo v0, "DeviceKeyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardOccludedChangedLw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardOcclude:Z

    .line 1002
    return-void
.end method

.method onScreenTurnedOff()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 437
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    if-eqz v0, :cond_0

    .line 438
    iput-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 439
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 442
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 444
    return-void
.end method

.method onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    .line 448
    return-void
.end method

.method onStartedWakingUp()V
    .locals 2

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 455
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 457
    :cond_0
    return-void
.end method

.method parseSettingData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "gesture"    # Ljava/lang/String;
    .param p2, "settingsValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 324
    if-nez p2, :cond_0

    .line 325
    return-void

    .line 326
    :cond_0
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    invoke-direct {v0, p0, v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;)V

    .line 327
    .local v0, "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    const-string/jumbo v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 329
    .local v1, "colonIndex":I
    if-gez v1, :cond_2

    .line 331
    invoke-virtual {v0, p2}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setActionName(Ljava/lang/String;)V

    .line 347
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-void

    .line 334
    :cond_2
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/String;

    .line 335
    .local v2, "parts":[Ljava/lang/String;
    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 336
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "tmp":[Ljava/lang/String;
    array-length v4, v3

    invoke-static {v3, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    aget-object v4, v2, v6

    invoke-virtual {v0, v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setActionName(Ljava/lang/String;)V

    .line 339
    aget-object v4, v2, v7

    invoke-virtual {v0, v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setPackage(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v4, "OpenApp"

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    aget-object v4, v2, v8

    invoke-virtual {v0, v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setUid(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_3
    const-string/jumbo v4, "OpenShortcut"

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    aget-object v4, v2, v8

    invoke-virtual {v0, v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setShortcutId(Ljava/lang/String;)V

    .line 344
    aget-object v4, v2, v9

    invoke-virtual {v0, v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setUid(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCameraManagerCallbacks()V
    .locals 3

    .prologue
    .line 893
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 894
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "registerCameraManagerCallbacks() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 897
    return-void
.end method

.method public setFlashlight(Z)Z
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 900
    sget-boolean v2, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 901
    const-string/jumbo v2, "DeviceKeyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTorchMode() called: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    monitor-enter p0

    .line 905
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    if-eq v2, p1, :cond_2

    .line 906
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, "cameraId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    .end local v0    # "cameraId":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 909
    .restart local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string/jumbo v0, "0"
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 911
    .end local v0    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 912
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_3
    const-string/jumbo v2, "DeviceKeyHandler"

    const-string/jumbo v3, "CameraAccessException: Couldn\'t set torch mode."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 914
    return v5

    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    monitor-exit p0

    .line 918
    return v5

    .line 904
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setKeyguardDelegate(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0
    .param p1, "keyguard"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 890
    return-void
.end method

.method startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z
    .locals 5
    .param p1, "actionInfo"    # Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    .param p2, "test"    # Z

    .prologue
    .line 783
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "actionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 785
    .local v1, "success":Z
    const-string/jumbo v2, "OpenShelf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 786
    invoke-direct {p0, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startShelf(Z)Z

    move-result v1

    .line 792
    .end local v1    # "success":Z
    :cond_0
    :goto_0
    return v1

    .line 787
    .restart local v1    # "success":Z
    :cond_1
    const-string/jumbo v2, "OpenApp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 788
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startApp(Ljava/lang/String;IZ)Z

    move-result v1

    .local v1, "success":Z
    goto :goto_0

    .line 789
    .local v1, "success":Z
    :cond_2
    const-string/jumbo v2, "OpenShortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getUid()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v1

    .local v1, "success":Z
    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    .line 227
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    .line 230
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->observe()V

    .line 233
    const/4 v2, 0x0

    .line 235
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 236
    const-string/jumbo v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    .line 235
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 241
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v2, :cond_0

    .line 243
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 244
    const-string/jumbo v4, "com.netease.cloudmusic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 243
    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :cond_0
    :goto_1
    return-void

    .line 237
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 239
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
