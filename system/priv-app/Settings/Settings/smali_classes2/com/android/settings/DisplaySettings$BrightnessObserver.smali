.class Lcom/android/settings/DisplaySettings$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field private final SCREEN_TIMEOUT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/DisplaySettings;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    .line 1583
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1577
    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 1578
    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 1579
    const-string/jumbo v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 1580
    const-string/jumbo v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    .line 1584
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1588
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/DisplaySettings$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1589
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1593
    if-eqz p1, :cond_0

    .line 1594
    return-void

    .line 1595
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-get4(Lcom/android/settings/DisplaySettings;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1597
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1598
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap8(Lcom/android/settings/DisplaySettings;)V

    .line 1599
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/DisplaySettings;->-set0(Lcom/android/settings/DisplaySettings;Z)Z

    .line 1600
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap6(Lcom/android/settings/DisplaySettings;)V

    .line 1601
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap10(Lcom/android/settings/DisplaySettings;)V

    .line 1617
    :goto_0
    return-void

    .line 1602
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-get1(Lcom/android/settings/DisplaySettings;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 1603
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap10(Lcom/android/settings/DisplaySettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1615
    :catchall_0
    move-exception v1

    throw v1

    .line 1604
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-get1(Lcom/android/settings/DisplaySettings;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1605
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap10(Lcom/android/settings/DisplaySettings;)V

    goto :goto_0

    .line 1606
    :cond_4
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1607
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-get3(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    .line 1608
    const/16 v3, 0x7530

    .line 1607
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1609
    .local v0, "currentTimeout":I
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-get6(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/TimeoutListPreference;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 1610
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/settings/DisplaySettings;->-wrap11(Lcom/android/settings/DisplaySettings;J)V

    goto :goto_0

    .line 1612
    .end local v0    # "currentTimeout":I
    :cond_5
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap8(Lcom/android/settings/DisplaySettings;)V

    .line 1613
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-wrap10(Lcom/android/settings/DisplaySettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1620
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-get3(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1621
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1622
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1623
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1624
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1625
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->SCREEN_TIMEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1626
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 1629
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$BrightnessObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->-get3(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1630
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1631
    return-void
.end method
