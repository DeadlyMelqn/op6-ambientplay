.class public Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeSensors$1;,
        Lcom/android/systemui/doze/DozeSensors$Callback;,
        Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;,
        Lcom/android/systemui/doze/DozeSensors$ProxSensor;,
        Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandWaveSensor:Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;

.field private final mHandler:Landroid/os/Handler;

.field private final mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mProxCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/doze/DozeSensors;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/doze/DozeSensors;)[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandWaveSensor:Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/doze/DozeSensors;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "dozeParameters"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p5, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .param p6, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p7, "callback"    # Lcom/android/systemui/doze/DozeSensors$Callback;
    .param p9, "policy"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "Landroid/hardware/SensorManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/internal/hardware/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeSensors$Callback;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p8, "proxCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$1;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors;->mAlarmManager:Landroid/app/AlarmManager;

    .line 79
    iput-object p3, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 80
    iput-object p4, p0, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 81
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 82
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 83
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    .line 86
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;

    .line 87
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 88
    const-string/jumbo v3, "doze_pulse_on_hand_wave"

    .line 89
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnHandWaveAvailable()Z

    move-result v4

    .line 86
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mHandWaveSensor:Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;

    .line 91
    const/4 v1, 0x4

    new-array v10, v1, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 92
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 93
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 95
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v5

    .line 94
    const/4 v4, 0x0

    .line 96
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    move-object v2, p0

    .line 92
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v2, 0x0

    aput-object v1, v10, v2

    .line 98
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 99
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 100
    const-string/jumbo v4, "doze_pulse_on_pick_up"

    .line 101
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v5

    .line 102
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 103
    const/4 v8, 0x0

    move-object v2, p0

    .line 98
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    iput-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v2, 0x1

    aput-object v1, v10, v2

    .line 104
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 105
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v3

    .line 106
    const-string/jumbo v4, "doze_pulse_on_double_tap"

    .line 109
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->doubleTapReportsTouchCoordinates()Z

    move-result v7

    .line 107
    const/4 v5, 0x1

    .line 108
    const/4 v6, 0x4

    .line 110
    const/4 v8, 0x1

    move-object v2, p0

    .line 104
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v2, 0x2

    aput-object v1, v10, v2

    .line 111
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 112
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v3

    .line 113
    const-string/jumbo v4, "doze_pulse_on_long_press"

    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v6, 0x1

    .line 116
    const/4 v7, 0x5

    .line 117
    const/4 v8, 0x1

    .line 118
    const/4 v9, 0x1

    move-object v2, p0

    .line 111
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZ)V

    const/4 v2, 0x3

    aput-object v1, v10, v2

    .line 91
    iput-object v10, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 121
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    move-object/from16 v0, p9

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    iput-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    .line 122
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    .line 123
    return-void
.end method

.method static findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 5
    .param p0, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    return-object v4

    .line 133
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 134
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

    .line 135
    .local v0, "s":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    return-object v0

    .line 139
    .end local v0    # "s":Landroid/hardware/Sensor;
    :cond_2
    return-object v4
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 206
    .local v0, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    const-string/jumbo v4, "Sensor: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_0
    const-string/jumbo v1, "ProxSensor: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public isProximityCurrentlyFar()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onUserSwitched()V
    .locals 4

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 177
    .local v0, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mHandWaveSensor:Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->updateListener()V

    .line 180
    return-void
.end method

.method public reregisterAllSensors()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 166
    .local v0, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 169
    .restart local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v0, v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mHandWaveSensor:Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->setListening(Z)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mHandWaveSensor:Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;

    invoke-virtual {v1, v5}, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->setListening(Z)V

    .line 173
    return-void
.end method

.method public setDisableSensorsInterferingWithProximity(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setDisabled(Z)V

    .line 201
    return-void
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listen"    # Z

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 144
    .local v0, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->registerSettingsObserver(Landroid/database/ContentObserver;)V

    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_1
    if-nez p1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mHandWaveSensor:Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;

    invoke-virtual {v1, p1}, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->setListening(Z)V

    .line 153
    return-void
.end method

.method public setProxListening(Z)V
    .locals 1
    .param p1, "listen"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRequested(Z)V

    .line 184
    return-void
.end method

.method public setTouchscreenSensorsListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 158
    .local v0, "sensor":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    iget-boolean v4, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresTouchscreen:Z

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "sensor":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_1
    return-void
.end method
