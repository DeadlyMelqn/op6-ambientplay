.class public Lcom/android/settings/aoscp/sound/AmbientPlayLockscreenPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AmbientPlayLockscreenPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "ambient_play_lockscreen"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 52
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 54
    .local v0, "value":Z
    iget-object v1, p0, Lcom/android/settings/aoscp/sound/AmbientPlayLockscreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ambient_play_lockscreen"

    if-eqz v0, :cond_0

    move v1, v2

    .line 53
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 55
    return v2

    .line 54
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    iget-object v3, p0, Lcom/android/settings/aoscp/sound/AmbientPlayLockscreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "ambient_play_lockscreen"

    .line 45
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, "value":I
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 48
    return-void

    :cond_0
    move v1, v2

    .line 47
    goto :goto_0
.end method
