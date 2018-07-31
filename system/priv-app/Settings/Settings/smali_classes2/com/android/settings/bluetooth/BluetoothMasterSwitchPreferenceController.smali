.class public Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BluetoothMasterSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final KEY_TOGGLE_BLUETOOTH:Ljava/lang/String; = "toggle_bluetooth"


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mBtPreference:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mFragment:Landroid/app/Fragment;

.field private mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/app/Fragment;Lcom/android/settings/SettingsActivity;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bluetoothManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .param p3, "fragment"    # Landroid/app/Fragment;
    .param p4, "activity"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 58
    new-instance v3, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/app/Fragment;Lcom/android/settings/SettingsActivity;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/RestrictionUtils;Landroid/app/Fragment;Lcom/android/settings/SettingsActivity;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bluetoothManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .param p3, "restrictionUtils"    # Lcom/android/settings/bluetooth/RestrictionUtils;
    .param p4, "fragment"    # Landroid/app/Fragment;
    .param p5, "activity"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 67
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    .line 68
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 69
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 70
    iput-object p5, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    .line 73
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 78
    const-string/jumbo v0, "toggle_bluetooth"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBtPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    .line 79
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 80
    new-instance v2, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBtPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v2, v3}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    .line 81
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 83
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 82
    const/16 v5, 0x366

    .line 79
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;ILcom/android/settings/bluetooth/RestrictionUtils;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 84
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string/jumbo v0, "toggle_bluetooth"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 88
    const-string/jumbo v0, "toggle_bluetooth"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v5, v3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x7f0f0628

    move-object v4, v2

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsActivity;->startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V

    .line 91
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->register(Z)V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->register(Z)V

    .line 109
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 128
    :cond_0
    return-void
.end method

.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBtPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothMasterSwitchPreferenceController;->mBtPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    return-void
.end method
