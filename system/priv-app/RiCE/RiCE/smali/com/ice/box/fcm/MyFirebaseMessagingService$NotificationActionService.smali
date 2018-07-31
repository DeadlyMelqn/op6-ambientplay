.class public Lcom/ice/box/fcm/MyFirebaseMessagingService$NotificationActionService;
.super Landroid/app/IntentService;
.source "MyFirebaseMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/fcm/MyFirebaseMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationActionService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 189
    const-class v0, Lcom/ice/box/fcm/MyFirebaseMessagingService$NotificationActionService;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 194
    invoke-super/range {p0 .. p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "notificationID"

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 201
    invoke-static {}, Lcom/ice/box/fcm/MyFirebaseMessagingService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "action_ok"

    .line 202
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 204
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    invoke-static {}, Lcom/ice/box/GlobalStaticContext;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 206
    invoke-static {}, Lcom/ice/box/fcm/MyFirebaseMessagingService;->access$100()Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    const-string p1, "action_cancel"

    .line 208
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 209
    invoke-static {}, Lcom/ice/box/fcm/MyFirebaseMessagingService;->access$100()Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return-void
.end method
