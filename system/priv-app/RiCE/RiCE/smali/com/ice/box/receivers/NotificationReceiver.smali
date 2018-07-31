.class public Lcom/ice/box/receivers/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# instance fields
.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 29
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notification"

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    const-string v1, "isS8"

    const/4 v2, 0x0

    .line 31
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "isS9"

    .line 32
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    const-string v3, "isARHD"

    .line 33
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/4 v7, 0x4

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "systemui"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v2, v3

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "systemui_later"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "romupdate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :sswitch_3
    const-string v0, "romupdate_later"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "appupdate_later"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v2, v5

    goto :goto_1

    :sswitch_5
    const-string v0, "reboot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v2, v7

    goto :goto_1

    :sswitch_6
    const-string v0, "nightlyupdate_later"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_7
    const-string v0, "reboot_later"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v2, v6

    goto :goto_1

    :sswitch_8
    const-string v0, "nightlyupdate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "appupdate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/high16 p2, 0x10000000

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 83
    :pswitch_0
    iget-object p0, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_3

    :pswitch_1
    if-eqz v1, :cond_1

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://renovate-ice.com/nightlies_g95x.html"

    invoke-static/range {v2 .. v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_2

    .line 76
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://renovate-ice.com/nightlies_g96x.html"

    invoke-static/range {v2 .. v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    :goto_2
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    iget-object p0, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_3

    .line 70
    :pswitch_2
    iget-object p0, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 64
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ice/box/helpers/RestartSystemUI;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    iget-object p0, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 61
    :pswitch_4
    iget-object p0, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 55
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ice/box/helpers/RestartOS;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    iget-object p0, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 52
    :pswitch_6
    iget-object p0, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 45
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=com.ice.box"

    invoke-static/range {v2 .. v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    iget-object p0, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 42
    :pswitch_8
    iget-object p0, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 36
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://renovate-ice.com/"

    invoke-static/range {v2 .. v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    iget-object p0, p0, Lcom/ice/box/receivers/NotificationReceiver;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6cd429d6 -> :sswitch_9
        -0x65290b52 -> :sswitch_8
        -0x5baef28e -> :sswitch_7
        -0x5077a045 -> :sswitch_6
        -0x37ba085b -> :sswitch_5
        0x12753437 -> :sswitch_4
        0x5ca06566 -> :sswitch_3
        0x65235699 -> :sswitch_2
        0x75aec850 -> :sswitch_1
        0x75c8b103 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
