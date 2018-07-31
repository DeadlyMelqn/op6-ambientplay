.class public Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BgOptimizeSwitch.java"


# static fields
.field private static final KEY_SLEEP_STANDBY:Ljava/lang/String; = "sleep_standby"

.field private static final OPTIMAL_POWER_SAVE_MODE_ENABLED:Ljava/lang/String; = "optimal_power_save_mode_enabled"

.field private static final PREF_BG_OPTIMIZE_SWITCH:Ljava/lang/String; = "bg_optimize_switch"


# instance fields
.field private mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 36
    const-string/jumbo v2, "bg_optimize_switch"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 37
    .local v0, "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlState(I)I

    move-result v2

    if-ne v3, v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 41
    :cond_0
    const-string/jumbo v2, "sleep_standby"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "optimal_power_save_mode_enabled"

    const/4 v6, -0x2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 43
    .local v1, "value":I
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSleepStandby()Z

    move-result v2

    if-nez v2, :cond_3

    .line 44
    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 53
    :cond_1
    :goto_1
    return-void

    .end local v1    # "value":I
    :cond_2
    move v2, v4

    .line 38
    goto :goto_0

    .line 48
    .restart local v1    # "value":I
    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-lez v1, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->addPreferencesFromResource(I)V

    .line 32
    invoke-direct {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->initData()V

    .line 33
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    const-string/jumbo v2, "bg_optimize_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 58
    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 59
    .local v1, "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v4, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlState(II)I

    .line 60
    return v3

    :cond_0
    move v2, v4

    .line 59
    goto :goto_0

    .line 63
    .end local v1    # "switchPreference":Landroid/support/v14/preference/SwitchPreference;
    :cond_1
    const-string/jumbo v2, "sleep_standby"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 65
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "optimal_power_save_mode_enabled"

    if-eqz v0, :cond_2

    move v4, v3

    :cond_2
    const/4 v6, -0x2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 66
    return v3

    .line 69
    .end local v0    # "enabled":Z
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method
