.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$1;,
        Lcom/android/server/VibratorService$2;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$VibratorShellCommand;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final INTENSITY_MIDDLE:I

.field private final INTENSITY_STRONG:I

.field private final INTENSITY_WEAK:I

.field private VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

.field private final intensityMiddle:I

.field private intensityStrong:I

.field private intensityWeak:I

.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mBinderDiedToken:Ljava/util/HashMap;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:[Landroid/os/VibrationEffect;

.field private final mH:Landroid/os/Handler;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsLinkToDeath:Z

.field private mLidState:I

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mSupportsAmplitudeControl:Z

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService;

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBinderDiedToken:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService;

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService;

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService;

    .prologue
    iget v0, p0, Lcom/android/server/VibratorService;->mLidState:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/VibratorService;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService;

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService;

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService;

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService;

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/VibratorService;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/VibratorService;->mLidState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/VibratorService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/VibratorService;JIII)V
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService;
    .param p1, "millis"    # J
    .param p3, "amplitude"    # I
    .param p4, "uid"    # I
    .param p5, "usageHint"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/VibratorService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/VibratorService;
    .param p1, "amplitude"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/VibratorService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 214
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 91
    new-instance v8, Landroid/os/WorkSource;

    invoke-direct {v8}, Landroid/os/WorkSource;-><init>()V

    iput-object v8, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 92
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 93
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    .line 106
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 111
    iput v11, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 124
    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mIsLinkToDeath:Z

    .line 125
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/VibratorService;->mBinderDiedToken:Ljava/util/HashMap;

    .line 386
    iput v11, p0, Lcom/android/server/VibratorService;->INTENSITY_WEAK:I

    .line 387
    const/4 v8, -0x2

    iput v8, p0, Lcom/android/server/VibratorService;->INTENSITY_MIDDLE:I

    .line 388
    const/4 v8, -0x3

    iput v8, p0, Lcom/android/server/VibratorService;->INTENSITY_STRONG:I

    .line 389
    const/16 v8, 0x32c

    iput v8, p0, Lcom/android/server/VibratorService;->intensityWeak:I

    .line 390
    const/16 v8, 0x5e4

    iput v8, p0, Lcom/android/server/VibratorService;->intensityMiddle:I

    .line 391
    const/16 v8, 0xe0c

    iput v8, p0, Lcom/android/server/VibratorService;->intensityStrong:I

    .line 392
    const-string/jumbo v8, "/sys/class/timed_output/vibrator/vmax"

    iput-object v8, p0, Lcom/android/server/VibratorService;->VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

    .line 562
    new-instance v8, Lcom/android/server/VibratorService$1;

    invoke-direct {v8, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v8, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    .line 1022
    iput v10, p0, Lcom/android/server/VibratorService;->mLidState:I

    .line 1024
    new-instance v8, Lcom/android/server/VibratorService$2;

    invoke-direct {v8, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v8, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    .line 218
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 220
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    .line 222
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 223
    const-string/jumbo v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 224
    .local v5, "pm":Landroid/os/PowerManager;
    const-string/jumbo v8, "*vibrator*"

    invoke-virtual {v5, v10, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 225
    iget-object v8, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 228
    const-string/jumbo v8, "appops"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v8

    .line 227
    iput-object v8, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 230
    const-string/jumbo v8, "batterystats"

    .line 229
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 232
    iget-object v8, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 233
    const v9, 0x10e0076

    .line 232
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 235
    iget-object v8, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 236
    const v9, 0x10e0034

    .line 235
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 238
    iget-object v8, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 239
    const v9, 0x112000b

    .line 238
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    .line 241
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 243
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v8, "android.intent.action.LID_SWITCH"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v8, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 252
    const v9, 0x107004d

    .line 251
    invoke-static {v8, v9}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    .line 253
    .local v1, "clickEffectTimings":[J
    invoke-static {v1}, Lcom/android/server/VibratorService;->createEffect([J)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 255
    .local v0, "clickEffect":Landroid/os/VibrationEffect;
    const/4 v8, 0x4

    new-array v8, v8, [J

    fill-array-data v8, :array_0

    .line 254
    invoke-static {v8, v11}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 256
    .local v2, "doubleClickEffect":Landroid/os/VibrationEffect;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 257
    const v9, 0x107001d

    .line 256
    invoke-static {v8, v9}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v7

    .line 258
    .local v7, "tickEffectTimings":[J
    invoke-static {v7}, Lcom/android/server/VibratorService;->createEffect([J)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 260
    .local v6, "tickEffect":Landroid/os/VibrationEffect;
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/os/VibrationEffect;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    aput-object v2, v8, v10

    const/4 v9, 0x2

    aput-object v6, v8, v9

    iput-object v8, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    .line 263
    const-string/jumbo v8, "enchilada"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 264
    const-string/jumbo v8, "/sys/class/leds/vibrator/vmax_mv"

    iput-object v8, p0, Lcom/android/server/VibratorService;->VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

    .line 265
    const/16 v8, 0x910

    iput v8, p0, Lcom/android/server/VibratorService;->intensityStrong:I

    .line 267
    const/16 v4, 0x244

    .line 270
    :cond_0
    return-void

    .line 255
    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method private WriteNodeValue(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 396
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/VibratorService;->VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    return-void

    .line 400
    :cond_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 401
    .local v2, "writer":Ljava/io/FileWriter;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 8
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v0, v2, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 534
    :cond_0
    new-instance v1, Lcom/android/server/VibratorService$VibrationInfo;

    .line 535
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v7

    .line 534
    invoke-direct/range {v1 .. v7}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;IILjava/lang/String;)V

    .line 536
    .local v1, "mVibrationInfo":Lcom/android/server/VibratorService$VibrationInfo;
    const-string/jumbo v0, "VibratorService"

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 539
    return-void
.end method

.method private static createEffect([J)Landroid/os/VibrationEffect;
    .locals 4
    .param p0, "timings"    # [J

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 273
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 274
    :cond_0
    return-object v1

    .line 275
    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 276
    aget-wide v0, p0, v3

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 278
    :cond_2
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 570
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 571
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    .line 573
    iput-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 576
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 577
    return-void
.end method

.method private doVibratorExists()Z
    .locals 1

    .prologue
    .line 793
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 4

    .prologue
    .line 829
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 833
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    .line 834
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 835
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_0

    .line 836
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 837
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 843
    return-void

    .line 829
    .end local v1    # "vibratorCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private doVibratorOn(JIII)V
    .locals 5
    .param p1, "millis"    # J
    .param p3, "amplitude"    # I
    .param p4, "uid"    # I
    .param p5, "usageHint"    # I

    .prologue
    .line 797
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    .line 798
    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    .line 799
    :try_start_0
    iget p3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 805
    :cond_0
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 806
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 807
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_1

    .line 809
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 810
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 811
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v1    # "i":I
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 817
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v4

    .line 820
    return-void

    .line 797
    .end local v2    # "vibratorCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .locals 14
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 846
    iget-object v13, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v13

    .line 847
    :try_start_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v9

    check-cast v9, Landroid/os/VibrationEffect$Prebaked;

    .line 849
    .local v9, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 850
    .local v12, "vibratorCount":I
    if-nez v12, :cond_0

    .line 851
    invoke-virtual {v9}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v10

    .line 852
    .local v10, "timeout":J
    const-wide/16 v4, 0x0

    cmp-long v1, v10, v4

    if-lez v1, :cond_0

    .line 853
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-direct {p0, v1, v10, v11}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    .line 854
    return-wide v10

    .line 857
    .end local v10    # "timeout":J
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 858
    const-wide/16 v4, 0x0

    monitor-exit v13

    return-wide v4

    .line 860
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v8

    .line 861
    .local v8, "id":I
    if-ltz v8, :cond_2

    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    array-length v1, v1

    if-lt v8, v1, :cond_3

    .line 862
    :cond_2
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 863
    const-wide/16 v4, 0x0

    monitor-exit v13

    return-wide v4

    .line 861
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    aget-object v1, v1, v8

    if-eqz v1, :cond_2

    .line 865
    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    aget-object v3, v1, v8

    .line 867
    .local v3, "effect":Landroid/os/VibrationEffect;
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V

    .line 868
    .local v0, "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v13

    .line 870
    const-wide/16 v4, 0x0

    return-wide v4

    .line 846
    .end local v0    # "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    .end local v3    # "effect":Landroid/os/VibrationEffect;
    .end local v8    # "id":I
    .end local v9    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    .end local v12    # "vibratorCount":I
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1
.end method

.method private doVibratorSetAmplitude(I)V
    .locals 1
    .param p1, "amplitude"    # I

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_0

    .line 824
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    .line 826
    :cond_0
    return-void
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .locals 7
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 676
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 677
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    .line 676
    const/4 v6, 0x3

    invoke-interface {v2, v6, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 678
    .local v1, "mode":I
    if-nez v1, :cond_0

    .line 679
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    .line 680
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 679
    invoke-interface {v2, v3, v6, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 686
    :cond_0
    :goto_0
    return v1

    .line 682
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VibratorService"

    const-string/jumbo v3, "Failed to get appop mode for vibration!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    const/4 v1, 0x1

    .restart local v1    # "mode":I
    goto :goto_0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 374
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 375
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 376
    return-object v3

    .line 378
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 379
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 380
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_1
    return-object v2
.end method

.method private isAllowedToVibrate(Lcom/android/server/VibratorService$Vibration;)Z
    .locals 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 642
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-nez v0, :cond_0

    .line 643
    return v2

    .line 645
    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 646
    return v2

    .line 648
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    if-nez v0, :cond_2

    .line 649
    return v3

    .line 651
    :cond_2
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 652
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 655
    :cond_3
    return v2

    .line 653
    :cond_4
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    .line 658
    return v3
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .locals 3
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .prologue
    const/4 v2, 0x0

    .line 516
    instance-of v1, p0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 517
    check-cast v0, Landroid/os/VibrationEffect$Waveform;

    .line 518
    .local v0, "waveform":Landroid/os/VibrationEffect$Waveform;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v1

    if-ltz v1, :cond_0

    .line 519
    const/4 v1, 0x1

    return v1

    .line 522
    .end local v0    # "waveform":Landroid/os/VibrationEffect$Waveform;
    :cond_0
    return v2
.end method

.method private noteVibratorOffLocked()V
    .locals 3

    .prologue
    .line 882
    iget v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    if-ltz v1, :cond_0

    .line 884
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 888
    :cond_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private noteVibratorOnLocked(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "millis"    # J

    .prologue
    .line 875
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 876
    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_0
    return-void

    .line 877
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private reportFinishVibrationLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 690
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_0

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    .line 693
    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    .line 694
    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    .line 693
    const/4 v5, 0x3

    .line 692
    invoke-interface {v1, v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_0
    iput-object v6, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 698
    :cond_0
    return-void

    .line 695
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private shouldVibrateForRingtone()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 662
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 663
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 666
    .local v1, "ringerMode":I
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_when_ringing"

    .line 665
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 667
    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 669
    :cond_1
    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 10
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 621
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v1

    instance-of v1, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v1, :cond_1

    .line 622
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 623
    .local v0, "oneShot":Landroid/os/VibrationEffect$OneShot;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    .line 624
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 639
    .end local v0    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v1

    instance-of v1, v1, Landroid/os/VibrationEffect$Waveform;

    if-eqz v1, :cond_2

    .line 628
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v7

    check-cast v7, Landroid/os/VibrationEffect$Waveform;

    .line 629
    .local v7, "waveform":Landroid/os/VibrationEffect$Waveform;
    new-instance v1, Lcom/android/server/VibratorService$VibrateThread;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-direct {v1, p0, v7, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 630
    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_0

    .line 631
    .end local v7    # "waveform":Landroid/os/VibrationEffect$Waveform;
    :cond_2
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v1

    instance-of v1, v1, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v1, :cond_3

    .line 632
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v8

    .line 633
    .local v8, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 637
    .end local v8    # "timeout":J
    :cond_3
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Unknown vibration type, ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrate(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    return-void

    .line 599
    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 600
    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 599
    if-eqz v1, :cond_1

    .line 604
    return-void

    .line 607
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    .line 608
    .local v0, "mode":I
    if-eqz v0, :cond_3

    .line 609
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 612
    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_2
    return-void

    .line 616
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 617
    return-void
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 701
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    .line 702
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 704
    :cond_0
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "changed":Z
    const/4 v5, 0x0

    .line 723
    .local v5, "vibrateInputDevices":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 724
    const-string/jumbo v8, "vibrate_input_devices"

    const/4 v9, -0x2

    .line 722
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lez v7, :cond_3

    const/4 v5, 0x1

    .line 727
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v5, v7, :cond_0

    .line 728
    const/4 v0, 0x1

    .line 729
    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    .line 732
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v7, :cond_4

    .line 733
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v7, :cond_1

    .line 734
    iput-boolean v11, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 735
    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v8, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v7, p0, v8}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 744
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 745
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v7, :cond_6

    .line 746
    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v7}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    .line 747
    .local v3, "ids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v7, v3

    if-ge v2, v7, :cond_5

    .line 748
    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v8, v3, v2

    invoke-virtual {v7, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 749
    .local v1, "device":Landroid/view/InputDevice;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    .line 750
    .local v6, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 751
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 722
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v2    # "i":I
    .end local v3    # "ids":[I
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 738
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v7, :cond_1

    .line 739
    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 740
    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v7, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_1

    .line 754
    .restart local v2    # "i":I
    .restart local v3    # "ids":[I
    :cond_5
    return v11

    .line 756
    .end local v2    # "i":I
    .end local v3    # "ids":[I
    :cond_6
    return v0

    .line 725
    :catch_0
    move-exception v4

    .local v4, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private updateLowPowerModeLocked()Z
    .locals 3

    .prologue
    .line 760
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 761
    const/4 v2, 0x2

    .line 760
    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v0, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 762
    .local v0, "lowPowerMode":Z
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_0

    .line 763
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 764
    const/4 v1, 0x1

    return v1

    .line 766
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrators()V
    .locals 4

    .prologue
    .line 707
    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 708
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v0

    .line 709
    .local v0, "devicesUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v1

    .line 711
    .local v1, "lowPowerModeUpdated":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 716
    return-void

    .line 707
    .end local v0    # "devicesUpdated":Z
    .end local v1    # "lowPowerModeUpdated":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 341
    return-void

    .line 343
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 344
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 347
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 346
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 348
    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .locals 4
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .prologue
    const/4 v3, 0x0

    .line 359
    if-nez p0, :cond_0

    .line 361
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return v3

    .line 365
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    const/4 v1, 0x1

    return v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    return v3
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformEffect(JJ)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 543
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 544
    const-string/jumbo v3, "android.permission.VIBRATE"

    .line 545
    const-string/jumbo v4, "cancelVibrate"

    .line 543
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 548
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 552
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 554
    .local v0, "ident":J
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "ident":J
    :cond_0
    monitor-exit v3

    .line 560
    return-void

    .line 555
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    .line 556
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 555
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 547
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1058
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "VibratorService"

    invoke-static {v2, v3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1060
    :cond_0
    const-string/jumbo v2, "Previous vibrations:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1062
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1063
    .local v0, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1061
    .end local v0    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 1067
    return-void
.end method

.method public hasAmplitudeControl()Z
    .locals 2

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 772
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 777
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 782
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1073
    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$VibratorShellCommand;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService$VibratorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1074
    return-void
.end method

.method public onVibrationFinished()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 589
    return-void

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 284
    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 286
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 287
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 288
    new-instance v1, Lcom/android/server/VibratorService$3;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    .line 287
    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    const-string/jumbo v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 300
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 304
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/VibratorService$4;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    .line 309
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    const/4 v4, 0x0

    .line 304
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 311
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 312
    return-void
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    .locals 20
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "usageHint"    # I
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 416
    :cond_0
    if-nez p5, :cond_1

    .line 417
    const-string/jumbo v3, "VibratorService"

    const-string/jumbo v4, "token must not be null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 420
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 421
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 422
    return-void

    .line 427
    :cond_2
    move-object/from16 v0, p3

    instance-of v3, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v3, :cond_3

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v3, :cond_3

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v3

    instance-of v3, v3, Landroid/os/VibrationEffect$OneShot;

    .line 427
    if-eqz v3, :cond_3

    move-object/from16 v18, p3

    .line 430
    check-cast v18, Landroid/os/VibrationEffect$OneShot;

    .line 432
    .local v18, "newOneShot":Landroid/os/VibrationEffect$OneShot;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v10

    check-cast v10, Landroid/os/VibrationEffect$OneShot;

    .line 433
    .local v10, "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual/range {v18 .. v18}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 434
    invoke-virtual/range {v18 .. v18}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 438
    return-void

    .line 446
    .end local v10    # "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    .end local v18    # "newOneShot":Landroid/os/VibrationEffect$OneShot;
    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v3

    .line 446
    if-eqz v3, :cond_4

    .line 451
    return-void

    .line 455
    :cond_4
    move-object/from16 v0, p3

    instance-of v3, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_5

    .line 456
    const-string/jumbo v19, "Middle"

    .local v19, "vibrateIntensity":Ljava/lang/String;
    move-object/from16 v13, p3

    .line 457
    check-cast v13, Landroid/os/VibrationEffect$Waveform;

    .line 458
    .local v13, "mEffect":Landroid/os/VibrationEffect$Waveform;
    iget-object v0, v13, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    move-object/from16 v17, v0

    .line 459
    .local v17, "mTimings":[J
    iget v0, v13, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    move/from16 v16, v0

    .line 460
    .local v16, "mRepeat":I
    const/4 v3, 0x0

    aget-wide v4, v17, v3

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 461
    const-string/jumbo v19, "weak"

    .line 462
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->intensityWeak:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    .line 463
    const/4 v3, 0x0

    aget-wide v4, v17, v3

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v17

    .line 475
    :goto_0
    :try_start_0
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 483
    .end local v13    # "mEffect":Landroid/os/VibrationEffect$Waveform;
    .end local v16    # "mRepeat":I
    .end local v17    # "mTimings":[J
    .end local v19    # "vibrateIntensity":Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V

    .line 485
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mBinderDiedToken:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 486
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsLinkToDeath:Z

    .line 494
    :goto_1
    move-object/from16 v0, p3

    instance-of v3, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService;->mIsLinkToDeath:Z

    if-eqz v3, :cond_6

    .line 496
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 505
    .local v14, "ident":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 506
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 507
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 508
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 511
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    return-void

    .line 464
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v14    # "ident":J
    .restart local v13    # "mEffect":Landroid/os/VibrationEffect$Waveform;
    .restart local v16    # "mRepeat":I
    .restart local v17    # "mTimings":[J
    .restart local v19    # "vibrateIntensity":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    aget-wide v4, v17, v3

    const-wide/16 v6, -0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    .line 465
    const/16 v3, 0x5e4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    .line 466
    const/4 v3, 0x0

    aget-wide v4, v17, v3

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v17

    goto/16 :goto_0

    .line 467
    :cond_8
    const/4 v3, 0x0

    aget-wide v4, v17, v3

    const-wide/16 v6, -0x3

    cmp-long v3, v4, v6

    if-nez v3, :cond_9

    .line 468
    const-string/jumbo v19, "Strong"

    .line 469
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/VibratorService;->intensityStrong:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    .line 470
    const/4 v3, 0x0

    aget-wide v4, v17, v3

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v17

    goto/16 :goto_0

    .line 472
    :cond_9
    const/16 v3, 0x4fc

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    goto/16 :goto_0

    .line 476
    :catch_0
    move-exception v12

    .line 477
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating vibration waveform with pattern: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 478
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    .line 477
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void

    .line 488
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "mEffect":Landroid/os/VibrationEffect$Waveform;
    .end local v16    # "mRepeat":I
    .end local v17    # "mTimings":[J
    .end local v19    # "vibrateIntensity":Ljava/lang/String;
    .restart local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService;->mBinderDiedToken:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/VibratorService;->mIsLinkToDeath:Z

    goto/16 :goto_1

    .line 497
    :catch_1
    move-exception v11

    .line 498
    .local v11, "e":Landroid/os/RemoteException;
    return-void

    .line 505
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v14    # "ident":J
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 510
    :catchall_1
    move-exception v3

    .line 511
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    throw v3
.end method
