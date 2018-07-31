.class public Lcom/android/settings/development/CameraHalHdrplusPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "CameraHalHdrplusPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BUILD_TYPE:Ljava/lang/String; = "ro.build.type"

.field static final DISABLED:Ljava/lang/String; = "0"

.field static final ENABLED:Ljava/lang/String; = "1"

.field private static final KEY_CAMERA_HAL_HDRPLUS_SWITCH:Ljava/lang/String; = "camera_hal_hdrplus_switch"

.field static final PROPERTY_CAMERA_HAL_HDRPLUS:Ljava/lang/String; = "persist.camera.hdrplus.enable"


# instance fields
.field private mPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private isHalHdrplusEnabled()Z
    .locals 2

    .prologue
    .line 104
    const-string/jumbo v0, "persist.camera.hdrplus.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v0, "camera_hal_hdrplus_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 56
    iget-object v0, p0, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->isHalHdrplusEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public enablePreference(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "camera_hal_hdrplus_switch"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 77
    const-string/jumbo v1, "camera_hal_hdrplus_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 78
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 79
    .local v0, "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    const-string/jumbo v2, "persist.camera.hdrplus.enable"

    .line 80
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    .line 79
    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f0f12cc

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 83
    return v3

    .line 80
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0

    .line 85
    .end local v0    # "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public updatePreference()Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x0

    return v1

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->isHalHdrplusEnabled()Z

    move-result v0

    .line 99
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 100
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/development/CameraHalHdrplusPreferenceController;->updatePreference()Z

    .line 73
    return-void
.end method
