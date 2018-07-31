.class public Lcom/ice/box/services/UpdateService;
.super Landroid/app/IntentService;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/services/UpdateService$romUpdate;,
        Lcom/ice/box/services/UpdateService$nightlyUpdate;
    }
.end annotation


# instance fields
.field NOTIFICATION_ID:I

.field sharedPref:Landroid/content/SharedPreferences;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "UpdateService"

    .line 54
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x311

    .line 50
    iput v0, p0, Lcom/ice/box/services/UpdateService;->NOTIFICATION_ID:I

    return-void
.end method

.method static synthetic access$200(Lcom/ice/box/services/UpdateService;)Lcom/ice/box/helpers/TweaksHelper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/ice/box/services/UpdateService;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .line 59
    invoke-super/range {p0 .. p0}, Landroid/app/IntentService;->onCreate()V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/services/UpdateService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/app/NotificationChannel;

    const v2, 0x7f1000f8

    invoke-virtual {p0, v2}, Lcom/ice/box/services/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v0, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v3, "notification"

    .line 65
    invoke-virtual {p0, v3}, Lcom/ice/box/services/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 67
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f100023

    invoke-virtual {p0, v0}, Lcom/ice/box/services/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v2}, Lcom/ice/box/services/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 70
    iget v1, p0, Lcom/ice/box/services/UpdateService;->NOTIFICATION_ID:I

    invoke-virtual {p0, v1, v0}, Lcom/ice/box/services/UpdateService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 81
    invoke-static/range {p1 .. p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 83
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/services/UpdateService;->sharedPref:Landroid/content/SharedPreferences;

    .line 84
    iget-object p1, p0, Lcom/ice/box/services/UpdateService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isNightly"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 85
    iget-object v0, p0, Lcom/ice/box/services/UpdateService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "isICE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    new-instance v2, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/services/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ice/box/services/UpdateService;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 93
    new-instance p1, Lcom/ice/box/services/UpdateService$romUpdate;

    invoke-direct {p1, p0, v0}, Lcom/ice/box/services/UpdateService$romUpdate;-><init>(Lcom/ice/box/services/UpdateService;Lcom/ice/box/services/UpdateService$1;)V

    new-array p0, v1, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/ice/box/services/UpdateService$romUpdate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Lcom/ice/box/services/UpdateService$nightlyUpdate;

    invoke-direct {p1, p0, v0}, Lcom/ice/box/services/UpdateService$nightlyUpdate;-><init>(Lcom/ice/box/services/UpdateService;Lcom/ice/box/services/UpdateService$1;)V

    new-array p0, v1, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/ice/box/services/UpdateService$nightlyUpdate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method
