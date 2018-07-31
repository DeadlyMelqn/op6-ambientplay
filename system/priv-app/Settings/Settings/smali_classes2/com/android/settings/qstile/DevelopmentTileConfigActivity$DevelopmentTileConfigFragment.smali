.class public Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DevelopmentTileConfigActivity.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/qstile/DevelopmentTileConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevelopmentTileConfigFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 60
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 60
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 62
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 64
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v9, 0x200

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 63
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 65
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 67
    .local v8, "sInfo":Landroid/content/pm/ServiceInfo;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 68
    .local v2, "enabledSetting":I
    const/4 v9, 0x1

    if-eq v2, v9, :cond_0

    .line 69
    if-nez v2, :cond_1

    .line 70
    iget-boolean v0, v8, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 72
    :goto_1
    new-instance v7, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v7, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 73
    .local v7, "preference":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v8, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 77
    invoke-virtual {v7, v12}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 78
    invoke-virtual {v7, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 68
    .end local v7    # "preference":Landroid/support/v14/preference/SwitchPreference;
    :cond_0
    const/4 v0, 0x1

    .local v0, "checked":Z
    goto :goto_1

    .line 69
    .end local v0    # "checked":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "checked":Z
    goto :goto_1

    .line 81
    .end local v0    # "checked":Z
    .end local v2    # "enabledSetting":I
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "sInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 90
    new-instance v0, Landroid/content/ComponentName;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/qstile/DevelopmentTileConfigActivity$DevelopmentTileConfigFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 96
    return v2

    .line 94
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
