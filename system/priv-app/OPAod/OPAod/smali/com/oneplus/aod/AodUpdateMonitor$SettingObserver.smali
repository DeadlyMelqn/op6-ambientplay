.class final Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AodUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 723
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 724
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 728
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 729
    sget-object v0, Lcom/oneplus/aod/Utils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get8(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/Utils;->updateNotificationWakeState(Landroid/content/Context;I)V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    sget-object v0, Lcom/oneplus/aod/Utils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get8(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/Utils;->updateAlwaysOnState(Landroid/content/Context;I)V

    goto :goto_0

    .line 733
    :cond_2
    sget-object v0, Lcom/oneplus/aod/Utils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get8(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/Utils;->updateMotionAwakeState(Landroid/content/Context;I)V

    goto :goto_0

    .line 735
    :cond_3
    const-string/jumbo v0, "display_time_start"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 736
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get9(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/settings/TextTime;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_time_start"

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->-get8(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_4
    const-string/jumbo v0, "display_time_end"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get10(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/settings/TextTime;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_time_end"

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor$SettingObserver;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->-get8(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
