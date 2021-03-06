.class final Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ConfigureNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field private final NOTIFICATION_BADGING_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/notification/ConfigureNotificationSettings;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 409
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 400
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 399
    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 402
    const-string/jumbo v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 401
    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 404
    const-string/jumbo v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 403
    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 406
    const-string/jumbo v0, "notification_badging"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 405
    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    .line 410
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 426
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap3(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap1(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap2(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    .line 442
    :cond_3
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 413
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 414
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 416
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 417
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 418
    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
