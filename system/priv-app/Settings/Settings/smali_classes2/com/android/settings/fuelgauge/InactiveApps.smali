.class public Lcom/android/settings/fuelgauge/InactiveApps;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InactiveApps.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mUsageStats:Landroid/app/usage/UsageStatsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    .line 60
    .local v8, "screen":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 61
    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 63
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 64
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const-class v10, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStatsManager;

    .line 66
    .local v9, "usm":Landroid/app/usage/UsageStatsManager;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v4, "launcherIntent":Landroid/content/Intent;
    const-string/jumbo v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {v7, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 70
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 71
    .local v6, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 72
    .local v5, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, v5}, Lcom/android/settings/fuelgauge/InactiveApps;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 76
    invoke-virtual {v5, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    invoke-virtual {v8, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 80
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    .end local v5    # "p":Landroid/support/v7/preference/Preference;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "p"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result v0

    .line 84
    .local v0, "inactive":Z
    if-eqz v0, :cond_0

    .line 85
    const v1, 0x7f0f015d

    .line 84
    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 87
    return-void

    .line 86
    :cond_0
    const v1, 0x7f0f015e

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xee

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    .line 49
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/InactiveApps;->addPreferencesFromResource(I)V

    .line 50
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v2, v0}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/usage/UsageStatsManager;->setAppInactive(Ljava/lang/String;Z)V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/InactiveApps;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 94
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->init()V

    .line 56
    return-void
.end method
