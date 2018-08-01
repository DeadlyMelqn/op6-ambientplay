.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .line 141
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 142
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get3(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "network_traffic_state"

    .line 146
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 150
    const-string/jumbo v1, "network_traffic_autohide_threshold"

    .line 149
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 152
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-wrap2(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-wrap3(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    .line 161
    return-void
.end method
