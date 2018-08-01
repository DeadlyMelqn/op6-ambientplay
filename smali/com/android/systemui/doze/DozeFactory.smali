.class public Lcom/android/systemui/doze/DozeFactory;
.super Ljava/lang/Object;
.source "DozeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private createDozeScreenBrightness(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/systemui/doze/DozeMachine$Service;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "host"    # Lcom/android/systemui/doze/DozeHost;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 78
    const v0, 0x7f1101dd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {p3, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v4

    .line 79
    .local v4, "sensor":Landroid/hardware/Sensor;
    new-instance v0, Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 80
    new-instance v7, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-direct {v7, p1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 79
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    return-object v0
.end method

.method private createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;)Lcom/android/systemui/doze/DozeTriggers;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "host"    # Lcom/android/systemui/doze/DozeHost;
    .param p4, "alarmManager"    # Landroid/app/AlarmManager;
    .param p5, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .param p6, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p9, "machine"    # Lcom/android/systemui/doze/DozeMachine;

    .prologue
    .line 86
    const/4 v10, 0x1

    .line 87
    .local v10, "allowPulseTriggers":Z
    new-instance v0, Lcom/android/systemui/doze/DozeTriggers;

    move-object v1, p1

    move-object/from16 v2, p9

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Z)V

    return-object v0
.end method

.method private createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/systemui/doze/DozeHost;
    .param p3, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p4, "machine"    # Lcom/android/systemui/doze/DozeMachine;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "alarmManager"    # Landroid/app/AlarmManager;

    .prologue
    .line 93
    new-instance v0, Lcom/android/systemui/doze/DozeUi;

    move-object v1, p1

    move-object v2, p6

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;
    .locals 3
    .param p0, "service"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v1

    .local v1, "appCandidate":Landroid/app/Application;
    move-object v0, v1

    .line 98
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 99
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/DozeHost;

    return-object v2
.end method


# virtual methods
.method public assembleMachine(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeMachine;
    .locals 22
    .param p1, "dozeService"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 43
    move-object/from16 v19, p1

    .line 44
    .local v19, "context":Landroid/content/Context;
    const-class v2, Lcom/android/systemui/util/AsyncSensorManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 45
    .local v4, "sensorManager":Landroid/hardware/SensorManager;
    const-class v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 47
    .local v6, "alarmManager":Landroid/app/AlarmManager;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v5

    .line 48
    .local v5, "host":Lcom/android/systemui/doze/DozeHost;
    new-instance v7, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 49
    .local v7, "config":Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    new-instance v8, Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    .line 50
    .local v8, "params":Lcom/android/systemui/statusbar/phone/DozeParameters;
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 51
    .local v9, "handler":Landroid/os/Handler;
    new-instance v10, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    .line 52
    const-string/jumbo v2, "Doze"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v2

    .line 51
    invoke-direct {v10, v9, v2}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .line 54
    .local v10, "wakeLock":Lcom/android/systemui/util/wakelock/WakeLock;
    move-object/from16 v20, p1

    .line 55
    .local v20, "wrappedService":Lcom/android/systemui/doze/DozeMachine$Service;
    new-instance v20, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;

    .end local v20    # "wrappedService":Lcom/android/systemui/doze/DozeMachine$Service;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;)V

    .line 56
    .restart local v20    # "wrappedService":Lcom/android/systemui/doze/DozeMachine$Service;
    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v20

    .line 57
    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v20

    .line 60
    new-instance v11, Lcom/android/systemui/doze/DozeMachine;

    move-object/from16 v0, v20

    invoke-direct {v11, v0, v7, v10}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .line 61
    .local v11, "machine":Lcom/android/systemui/doze/DozeMachine;
    const/4 v2, 0x6

    new-array v0, v2, [Lcom/android/systemui/doze/DozeMachine$Part;

    move-object/from16 v21, v0

    .line 62
    new-instance v2, Lcom/android/systemui/doze/DozePauser;

    new-instance v3, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v9, v11, v6, v3}, Lcom/android/systemui/doze/DozePauser;-><init>(Landroid/os/Handler;Lcom/android/systemui/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    const/4 v3, 0x0

    aput-object v2, v21, v3

    .line 63
    new-instance v2, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;-><init>(Lcom/android/systemui/classifier/FalsingManager;)V

    const/4 v3, 0x1

    aput-object v2, v21, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 64
    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/doze/DozeFactory;->createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;)Lcom/android/systemui/doze/DozeTriggers;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v21, v3

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v5

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move-object/from16 v18, v6

    .line 66
    invoke-direct/range {v12 .. v18}, Lcom/android/systemui/doze/DozeFactory;->createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v21, v3

    .line 67
    new-instance v2, Lcom/android/systemui/doze/DozeScreenState;

    move-object/from16 v0, v20

    invoke-direct {v2, v0, v9}, Lcom/android/systemui/doze/DozeScreenState;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;)V

    const/4 v3, 0x4

    aput-object v2, v21, v3

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, v20

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v9

    .line 68
    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/doze/DozeFactory;->createDozeScreenBrightness(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v21, v3

    .line 61
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/systemui/doze/DozeMachine;->setParts([Lcom/android/systemui/doze/DozeMachine$Part;)V

    .line 71
    return-object v11
.end method
