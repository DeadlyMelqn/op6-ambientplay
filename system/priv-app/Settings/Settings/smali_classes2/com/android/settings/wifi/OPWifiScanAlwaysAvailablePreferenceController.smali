.class public Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "OPWifiScanAlwaysAvailablePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "wifi_scan_always_available"


# instance fields
.field private mSettingObserver:Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 51
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 56
    new-instance v0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

    const-string/jumbo v1, "wifi_scan_always_available"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;-><init>(Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

    .line 57
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "wifi_scan_always_available"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wifi_scan_always_available"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    return v0

    .line 83
    :cond_0
    instance-of v2, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v2, :cond_1

    .line 84
    return v0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 87
    const-string/jumbo v3, "wifi_scan_always_enabled"

    .line 88
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 86
    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    return v1
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 71
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    instance-of v3, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v3, :cond_0

    .line 101
    return-void

    :cond_0
    move-object v0, p1

    .line 103
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 105
    .local v0, "enableSwitchNetwork":Landroid/support/v14/preference/SwitchPreference;
    iget-object v3, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 106
    const-string/jumbo v4, "wifi_scan_always_enabled"

    .line 105
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 108
    return-void

    :cond_1
    move v1, v2

    .line 105
    goto :goto_0
.end method
