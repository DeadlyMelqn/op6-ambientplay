.class public Lcom/android/settings/wifi/WifiWakeupPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "WifiWakeupPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_ENABLE_WIFI_WAKEUP:Ljava/lang/String; = "enable_wifi_wakeup"


# instance fields
.field private mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 53
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 58
    new-instance v0, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    const-string/jumbo v1, "enable_wifi_wakeup"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;-><init>(Lcom/android/settings/wifi/WifiWakeupPreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    .line 59
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "enable_wifi_wakeup"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "enable_wifi_wakeup"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    return v0

    .line 88
    :cond_0
    instance-of v2, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v2, :cond_1

    .line 89
    return v0

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 92
    const-string/jumbo v3, "wifi_wakeup_enabled"

    .line 93
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 91
    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    return v1
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 77
    iget-object v2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    const v3, 0x10e00cb

    .line 77
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 79
    .local v0, "defaultValue":I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 80
    const-string/jumbo v3, "wifi_wakeup_available"

    .line 79
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiWakeupPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 104
    instance-of v3, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v3, :cond_0

    .line 105
    return-void

    :cond_0
    move-object v0, p1

    .line 107
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 109
    .local v0, "enableWifiWakeup":Landroid/support/v14/preference/SwitchPreference;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 110
    const-string/jumbo v6, "wifi_wakeup_enabled"

    .line 109
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 112
    iget-object v3, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 113
    const-string/jumbo v6, "wifi_scan_always_enabled"

    .line 112
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v2, 0x1

    .line 115
    .local v2, "wifiScanningEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 116
    const-string/jumbo v6, "network_recommendations_enabled"

    .line 114
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4

    const/4 v1, 0x1

    .line 117
    .local v1, "networkRecommendationsEnabled":Z
    :goto_2
    if-eqz v1, :cond_1

    move v5, v2

    :cond_1
    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 119
    if-nez v1, :cond_5

    .line 120
    const v3, 0x7f0f12b0

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 126
    :goto_3
    return-void

    .end local v1    # "networkRecommendationsEnabled":Z
    .end local v2    # "wifiScanningEnabled":Z
    :cond_2
    move v3, v5

    .line 109
    goto :goto_0

    .line 112
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "wifiScanningEnabled":Z
    goto :goto_1

    .line 114
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "networkRecommendationsEnabled":Z
    goto :goto_2

    .line 121
    :cond_5
    if-nez v2, :cond_6

    .line 122
    const v3, 0x7f0f1268

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 124
    :cond_6
    const v3, 0x7f0f1267

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3
.end method
