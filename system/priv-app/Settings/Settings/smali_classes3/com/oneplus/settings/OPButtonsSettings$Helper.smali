.class public Lcom/oneplus/settings/OPButtonsSettings$Helper;
.super Ljava/lang/Object;
.source "OPButtonsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHWButtonsLightsState(Landroid/content/Context;ZZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "store"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 702
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 703
    const v7, 0x7f110017

    .line 702
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 705
    .local v1, "defaultBrightness":I
    if-eqz p2, :cond_3

    .line 706
    const-string/jumbo v6, "pre_navbar_button_backlight"

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 709
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 711
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_2

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 713
    const-string/jumbo v7, "buttons_brightness"

    .line 712
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 714
    .local v0, "currentBrightness":I
    const-string/jumbo v6, "pre_navbar_button_backlight"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 715
    const-string/jumbo v6, "pre_navbar_button_backlight"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 717
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 718
    const-string/jumbo v7, "buttons_brightness"

    .line 717
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 727
    .end local v0    # "currentBrightness":I
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 732
    .end local v1    # "defaultBrightness":I
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 720
    .restart local v1    # "defaultBrightness":I
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    const-string/jumbo v5, "pre_navbar_button_backlight"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 721
    .local v3, "oldBright":I
    if-eq v3, v8, :cond_1

    .line 722
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 723
    const-string/jumbo v6, "buttons_brightness"

    .line 722
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 724
    const-string/jumbo v5, "pre_navbar_button_backlight"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 729
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "oldBright":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 730
    const-string/jumbo v7, "buttons_brightness"

    if-nez p1, :cond_4

    move v1, v5

    .line 729
    .end local v1    # "defaultBrightness":I
    :cond_4
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private static setHWKeysState(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "disabled"    # Z

    .prologue
    .line 741
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWKeysState(Landroid/content/Context;ZZ)V

    .line 742
    return-void
.end method

.method private static setHWKeysState(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "disabled"    # Z
    .param p2, "homeOff"    # Z

    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 746
    const-string/jumbo v2, "oem_acc_key_lock_mode"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    .line 745
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 752
    return-void

    .line 746
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSWKeysState(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 736
    const-string/jumbo v2, "buttons_show_on_screen_navkeys"

    .line 735
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 737
    .local v0, "onScreenNavKeysEnabled":Z
    :goto_0
    invoke-static {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;Z)V

    .line 738
    return-void

    .line 735
    .end local v0    # "onScreenNavKeysEnabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "onScreenNavKeysEnabled":Z
    goto :goto_0
.end method

.method public static updateSettings(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onScreenNavKeysEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 677
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v1, v1}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;ZZZZ)V

    .line 678
    return-void
.end method

.method public static updateSettings(Landroid/content/Context;ZZZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onScreenNavKeysEnabled"    # Z
    .param p2, "handleLights"    # Z
    .param p3, "skipOnScreenNavKeys"    # Z
    .param p4, "lightsOnly"    # Z

    .prologue
    const/4 v1, 0x1

    .line 685
    if-nez p3, :cond_0

    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 687
    const-string/jumbo v3, "buttons_show_on_screen_navkeys"

    if-eqz p1, :cond_1

    move v0, v1

    .line 686
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 690
    :cond_0
    if-nez p2, :cond_2

    .line 691
    return-void

    .line 687
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 694
    :cond_2
    if-nez p4, :cond_3

    .line 695
    invoke-static {p0, p1}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWKeysState(Landroid/content/Context;Z)V

    .line 698
    :cond_3
    xor-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWButtonsLightsState(Landroid/content/Context;ZZ)V

    .line 699
    return-void
.end method
