.class public Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "BatteryOptimizationPreferenceController.java"


# static fields
.field private static final KEY_BACKGROUND_ACTIVITY:Ljava/lang/String; = "battery_optimization"

.field static final TAG:Ljava/lang/String; = "BatteryOptimizationPreferenceController"


# instance fields
.field private mBackend:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

.field private mFragment:Landroid/app/Fragment;

.field private mPackageName:Ljava/lang/String;

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1, "settingsActivity"    # Lcom/android/settings/SettingsActivity;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 50
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    .line 51
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerWhitelistBackend;)V
    .locals 0
    .param p1, "settingsActivity"    # Lcom/android/settings/SettingsActivity;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "backend"    # Lcom/android/settings/fuelgauge/PowerWhitelistBackend;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 60
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    .line 61
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    .line 63
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "battery_optimization"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 83
    const-string/jumbo v3, "battery_optimization"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    const/4 v3, 0x0

    return v3

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.settings.action.BACKGROUND_OPTIMIZE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v3, "classname"

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v4, Lcom/android/settings/Settings$BgOptimizeAppListActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3, v2}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 100
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 97
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 98
    .end local v1    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v3, "BatteryOptimizationPreferenceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    .line 73
    .local v0, "isWhitelisted":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0f1075

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 74
    return-void

    .line 73
    :cond_0
    const v1, 0x7f0f1076

    goto :goto_0
.end method
