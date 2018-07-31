.class final Lcom/android/settings/notification/SoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final THREE_KEY_MODE_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/notification/SoundSettings;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/SoundSettings;

    .line 987
    invoke-static {p1}, Lcom/android/settings/notification/SoundSettings;->-get3(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 981
    const-string/jumbo v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 980
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 983
    const-string/jumbo v0, "three_Key_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->THREE_KEY_MODE_URI:Landroid/net/Uri;

    .line 988
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1004
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1005
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->-wrap8(Lcom/android/settings/notification/SoundSettings;)V

    .line 1008
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->-wrap7(Lcom/android/settings/notification/SoundSettings;)V

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->THREE_KEY_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    const-string/jumbo v0, "SoundSettings"

    const-string/jumbo v1, "three key mode change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/notification/SoundSettings;->-wrap5(Lcom/android/settings/notification/SoundSettings;)V

    goto :goto_0
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 991
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->-wrap0(Lcom/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 992
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 995
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->THREE_KEY_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1000
    :goto_0
    return-void

    .line 998
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
