.class public Lcom/android/settings/development/TelephonyMonitorPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "TelephonyMonitorPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BUILD_TYPE:Ljava/lang/String; = "ro.build.type"

.field static final DISABLED_STATUS:Ljava/lang/String; = "disabled"

.field static final ENABLED_STATUS:Ljava/lang/String; = "enabled"

.field private static final KEY_TELEPHONY_MONITOR_SWITCH:Ljava/lang/String; = "telephony_monitor_switch"

.field static final PROPERTY_TELEPHONY_MONITOR:Ljava/lang/String; = "persist.radio.enable_tel_mon"

.field static final USER_DISABLED_STATUS:Ljava/lang/String; = "user_disabled"

.field static final USER_ENABLED_STATUS:Ljava/lang/String; = "user_enabled"


# instance fields
.field private mPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private isTelephonyMonitorEnabled()Z
    .locals 3

    .prologue
    .line 111
    const-string/jumbo v1, "persist.radio.enable_tel_mon"

    const-string/jumbo v2, "disabled"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "tmStatus":Ljava/lang/String;
    const-string/jumbo v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "user_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "telephony_monitor_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 61
    iget-object v0, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->isTelephonyMonitorEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public enablePreference(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "telephony_monitor_switch"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 84
    const-string/jumbo v1, "telephony_monitor_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 85
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 86
    .local v0, "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    const-string/jumbo v2, "persist.radio.enable_tel_mon"

    .line 87
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "user_enabled"

    .line 86
    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f0f12cb

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 90
    return v3

    .line 87
    :cond_0
    const-string/jumbo v1, "user_disabled"

    goto :goto_0

    .line 92
    .end local v0    # "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePreference()Z
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x0

    return v1

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->isTelephonyMonitorEnabled()Z

    move-result v0

    .line 106
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 107
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/development/TelephonyMonitorPreferenceController;->updatePreference()Z

    .line 80
    return-void
.end method
