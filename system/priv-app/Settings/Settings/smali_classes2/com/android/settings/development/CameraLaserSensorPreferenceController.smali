.class public Lcom/android/settings/development/CameraLaserSensorPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "CameraLaserSensorPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BUILD_TYPE:Ljava/lang/String; = "ro.build.type"

.field static final DISABLED:I = 0x2

.field static final ENABLED:I = 0x0

.field private static final KEY_CAMERA_LASER_SENSOR_SWITCH:Ljava/lang/String; = "camera_laser_sensor_switch"

.field static final PROPERTY_CAMERA_LASER_SENSOR:Ljava/lang/String; = "persist.camera.stats.disablehaf"


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

.method private isLaserSensorEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    const-string/jumbo v1, "persist.camera.stats.disablehaf"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "prop":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    const-string/jumbo v0, "camera_laser_sensor_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->updatePreference()Z

    .line 56
    return-void
.end method

.method public enablePreference(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "camera_laser_sensor_switch"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 77
    const-string/jumbo v3, "camera_laser_sensor_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 78
    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 79
    .local v0, "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "persist.camera.stats.disablehaf"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v2, 0x1

    return v2

    .line 79
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 83
    .end local v0    # "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    :cond_1
    return v2
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    .line 65
    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "buildType":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 66
    :goto_0
    return v1

    .line 67
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updatePreference()Z
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const/4 v1, 0x0

    return v1

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->isLaserSensorEnabled()Z

    move-result v0

    .line 97
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 98
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;->updatePreference()Z

    .line 73
    return-void
.end method
