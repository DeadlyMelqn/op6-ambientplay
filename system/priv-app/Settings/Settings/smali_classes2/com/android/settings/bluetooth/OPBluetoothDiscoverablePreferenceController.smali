.class public Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "OPBluetoothDiscoverablePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_DISCOVERABLE_DEVICE:Ljava/lang/String; = "discoverable_device"

.field private static final SETTINGS_SYSTEM_BLUETOOTH_DEFAULT_SCAN_MODE:Ljava/lang/String; = "bluetooth_default_scan_mode"


# instance fields
.field private mBluetoothScanMode:I

.field mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    const/16 v1, 0x17

    iput v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    .line 57
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 58
    .local v0, "mLocalManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 59
    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 60
    return-void
.end method

.method private saveScanModeToSettingsProvider(I)V
    .locals 2
    .param p1, "scanMode"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "bluetooth_default_scan_mode"

    .line 89
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 65
    new-instance v0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    .line 66
    const-string/jumbo v1, "discoverable_device"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 65
    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;-><init>(Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    .line 67
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, "discoverable_device"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/16 v4, 0x17

    const/16 v3, 0x15

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "discoverable_device"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return v2

    .line 98
    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 99
    return v2

    .line 101
    :cond_1
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 104
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->saveScanModeToSettingsProvider(I)V

    .line 109
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 107
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->saveScanModeToSettingsProvider(I)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/16 v4, 0x15

    const/16 v3, 0x17

    .line 119
    instance-of v1, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v1, :cond_0

    .line 120
    return-void

    :cond_0
    move-object v0, p1

    .line 122
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 124
    .local v0, "enableSwitch":Landroid/support/v14/preference/SwitchPreference;
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 125
    const-string/jumbo v2, "bluetooth_default_scan_mode"

    .line 123
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    .line 127
    iget v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    if-ne v1, v3, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 130
    const v1, 0x7f0f062a

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    iget v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    if-ne v1, v4, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 134
    const v1, 0x7f0f062b

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
