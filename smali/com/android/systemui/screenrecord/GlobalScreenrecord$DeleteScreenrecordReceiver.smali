.class public Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteScreenrecordReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenrecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenrecord/GlobalScreenrecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteScreenrecordReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 494
    const-string/jumbo v2, "android:screenrecord_uri_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 495
    return-void

    .line 498
    :cond_0
    const-string/jumbo v2, "android:screenrecord_uri_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 501
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 502
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 504
    new-instance v2, Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteVideoInBackgroundTask;

    invoke-direct {v2, p1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteVideoInBackgroundTask;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteVideoInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 505
    return-void
.end method
