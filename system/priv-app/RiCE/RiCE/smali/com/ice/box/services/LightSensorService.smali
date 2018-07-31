.class public Lcom/ice/box/services/LightSensorService;
.super Landroid/app/Service;
.source "LightSensorService.java"


# static fields
.field public static thresholdValue:I = 0x2710


# instance fields
.field private final NOTIFICATION_ID:I

.field private final broadcastReceiverScreenOff:Landroid/content/BroadcastReceiver;

.field private final broadcastReceiverScreenOn:Landroid/content/BroadcastReceiver;

.field private intentBooleanExtra:Z

.field private intentMaxLux:I

.field mAllowRebind:Z

.field mBinder:Landroid/os/IBinder;

.field private mLight:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mStartMode:I

.field private notification:Landroid/app/Notification;

.field private final sensorListener:Landroid/hardware/SensorEventListener;

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct/range {p0 .. p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x219

    .line 53
    iput v0, p0, Lcom/ice/box/services/LightSensorService;->NOTIFICATION_ID:I

    .line 186
    new-instance v0, Lcom/ice/box/services/LightSensorService$1;

    invoke-direct {v0, p0}, Lcom/ice/box/services/LightSensorService$1;-><init>(Lcom/ice/box/services/LightSensorService;)V

    iput-object v0, p0, Lcom/ice/box/services/LightSensorService;->sensorListener:Landroid/hardware/SensorEventListener;

    .line 205
    new-instance v0, Lcom/ice/box/services/LightSensorService$2;

    invoke-direct {v0, p0}, Lcom/ice/box/services/LightSensorService$2;-><init>(Lcom/ice/box/services/LightSensorService;)V

    iput-object v0, p0, Lcom/ice/box/services/LightSensorService;->broadcastReceiverScreenOff:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lcom/ice/box/services/LightSensorService$3;

    invoke-direct {v0, p0}, Lcom/ice/box/services/LightSensorService$3;-><init>(Lcom/ice/box/services/LightSensorService;)V

    iput-object v0, p0, Lcom/ice/box/services/LightSensorService;->broadcastReceiverScreenOn:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/services/LightSensorService;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/services/LightSensorService;->updateNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ice/box/services/LightSensorService;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/ice/box/services/LightSensorService;->intentMaxLux:I

    return p0
.end method

.method static synthetic access$200(Lcom/ice/box/services/LightSensorService;IF)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p2}, Lcom/ice/box/services/LightSensorService;->turnOnHbm(IF)V

    return-void
.end method

.method static synthetic access$300(Lcom/ice/box/services/LightSensorService;)Landroid/hardware/SensorManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ice/box/services/LightSensorService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ice/box/services/LightSensorService;)Landroid/hardware/SensorEventListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ice/box/services/LightSensorService;->sensorListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ice/box/services/LightSensorService;)Landroid/hardware/Sensor;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ice/box/services/LightSensorService;->mLight:Landroid/hardware/Sensor;

    return-object p0
.end method

.method private startForeground()V
    .locals 2

    const-string v0, ""

    .line 108
    invoke-direct {p0, v0}, Lcom/ice/box/services/LightSensorService;->startNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x219

    invoke-virtual {p0, v1, v0}, Lcom/ice/box/services/LightSensorService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private startNotification(Ljava/lang/String;)Landroid/app/Notification;
    .locals 8

    const v0, 0x7f1000ab

    .line 112
    invoke-virtual {p0, v0}, Lcom/ice/box/services/LightSensorService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/app/NotificationChannel;

    const v2, 0x7f1000ac

    .line 114
    invoke-virtual {p0, v2}, Lcom/ice/box/services/LightSensorService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v0, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 117
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ice/box/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v5, "notification"

    .line 119
    invoke-virtual {p0, v5}, Lcom/ice/box/services/LightSensorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {v5 .. v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/services/LightSensorService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0800ce

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/services/LightSensorService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f100023

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v2}, Lcom/ice/box/services/LightSensorService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v2, 0x80

    .line 125
    invoke-static {v1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/services/LightSensorService;->notification:Landroid/app/Notification;

    return-object p1
.end method

.method private turnOnHbm(IF)V
    .locals 2

    .line 227
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dataForHbmFragment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-ge p1, p2, :cond_0

    const-string p1, "echo 5 > /sys/devices/platform/soc/ae00000.qcom,mdss_mdp/drm/card0/card0-DSI-1/hbm"

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "hbm_turnon"

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "echo 0 > /sys/devices/platform/soc/ae00000.qcom,mdss_mdp/drm/card0/card0-DSI-1/hbm"

    .line 234
    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "hbm_turnon"

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string p1, "luxint"

    .line 238
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0, v0}, Lcom/ice/box/services/LightSensorService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateNotification(Ljava/lang/String;)V
    .locals 1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LUX"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-direct {p0, p1}, Lcom/ice/box/services/LightSensorService;->startNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    const-string v0, "notification"

    .line 139
    invoke-virtual {p0, v0}, Lcom/ice/box/services/LightSensorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 140
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0x219

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/ice/box/services/LightSensorService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 67
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/services/LightSensorService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "sensor"

    .line 68
    invoke-virtual {p0, v0}, Lcom/ice/box/services/LightSensorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/ice/box/services/LightSensorService;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v0, "notification"

    .line 69
    invoke-virtual {p0, v0}, Lcom/ice/box/services/LightSensorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 70
    iget-object v0, p0, Lcom/ice/box/services/LightSensorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/services/LightSensorService;->mLight:Landroid/hardware/Sensor;

    const-string v0, "ICEDEBUG"

    const-string v1, "LightSernsorService.class onCreate"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/ice/box/services/LightSensorService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "hbm_threshold"

    sget v1, Lcom/ice/box/services/LightSensorService;->thresholdValue:I

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/ice/box/services/LightSensorService;->thresholdValue:I

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 176
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "ICEDEBUG"

    const-string v1, "LightSernsorService.class onDestroy"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-boolean v0, p0, Lcom/ice/box/services/LightSensorService;->intentBooleanExtra:Z

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ice/box/services/LightSensorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "enabled"

    .line 180
    iget-boolean v2, p0, Lcom/ice/box/services/LightSensorService;->intentBooleanExtra:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Lcom/ice/box/services/LightSensorService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    const-string v0, "ICEDEBUG"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LightSernsorService.class onDestroy intentBooleanExtra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ice/box/services/LightSensorService;->intentBooleanExtra:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string p2, "enabled"

    const/4 p3, 0x0

    .line 80
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ice/box/services/LightSensorService;->intentBooleanExtra:Z

    const-string p2, "sticky"

    const/4 p3, 0x1

    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string p3, "luxthreshold"

    .line 82
    sget v0, Lcom/ice/box/services/LightSensorService;->thresholdValue:I

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/services/LightSensorService;->intentMaxLux:I

    const-string p1, "ICEDEBUG"

    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LightSernsorService.class onStartCommand extras: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/ice/box/services/LightSensorService;->intentBooleanExtra:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " sticky: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-boolean p1, p0, Lcom/ice/box/services/LightSensorService;->intentBooleanExtra:Z

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/ice/box/services/LightSensorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p3, p0, Lcom/ice/box/services/LightSensorService;->sensorListener:Landroid/hardware/SensorEventListener;

    iget-object v0, p0, Lcom/ice/box/services/LightSensorService;->mLight:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, p3, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 88
    iget-object p1, p0, Lcom/ice/box/services/LightSensorService;->broadcastReceiverScreenOff:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/ice/box/services/LightSensorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    iget-object p1, p0, Lcom/ice/box/services/LightSensorService;->broadcastReceiverScreenOn:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/ice/box/services/LightSensorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/services/LightSensorService;->startForeground()V

    goto :goto_1

    .line 93
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ice/box/services/LightSensorService;->broadcastReceiverScreenOff:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/ice/box/services/LightSensorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    iget-object p1, p0, Lcom/ice/box/services/LightSensorService;->broadcastReceiverScreenOn:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/ice/box/services/LightSensorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    iget-object p1, p0, Lcom/ice/box/services/LightSensorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p3, p0, Lcom/ice/box/services/LightSensorService;->sensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ICEDEBUG"

    const-string p3, "receivers and listeners are already unregistered"

    .line 97
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/services/LightSensorService;->stopSelf()V

    :goto_1
    return p2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/ice/box/services/LightSensorService;->mAllowRebind:Z

    return p0
.end method
