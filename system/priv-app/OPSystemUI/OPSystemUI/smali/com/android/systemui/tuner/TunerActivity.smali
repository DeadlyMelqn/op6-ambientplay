.class public Lcom/android/systemui/tuner/TunerActivity;
.super Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.source "TunerActivity.java"

# interfaces
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_tuner_TunerActivity_2214(Lcom/android/systemui/fragments/FragmentService;)V
    .locals 0
    .param p0, "s"    # Lcom/android/systemui/fragments/FragmentService;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentService;->destroyAll()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onBackPressed()V

    .line 74
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lcom/android/systemui/Dependency;->initDependencies(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "tuner"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 45
    const-string/jumbo v3, "com.android.settings.action.DEMO_MODE"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    :goto_0
    if-eqz v2, :cond_2

    new-instance v1, Lcom/android/systemui/tuner/DemoModeFragment;

    invoke-direct {v1}, Lcom/android/systemui/tuner/DemoModeFragment;-><init>()V

    .line 48
    .local v1, "fragment":Landroid/support/v14/preference/PreferenceFragment;
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 49
    const-string/jumbo v4, "tuner"

    .line 48
    const v5, 0x7f0a009c

    invoke-virtual {v3, v5, v1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 51
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "fragment":Landroid/support/v14/preference/PreferenceFragment;
    :cond_0
    return-void

    .line 44
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "showDemoMode":Z
    goto :goto_0

    .line 47
    .end local v2    # "showDemoMode":Z
    :cond_2
    new-instance v1, Lcom/android/systemui/tuner/TunerFragment;

    invoke-direct {v1}, Lcom/android/systemui/tuner/TunerFragment;-><init>()V

    .restart local v1    # "fragment":Landroid/support/v14/preference/PreferenceFragment;
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onDestroy()V

    .line 56
    const-class v0, Lcom/android/systemui/fragments/FragmentService;

    sget-object v1, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;->$INST$1:Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency;->destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 57
    invoke-static {}, Lcom/android/systemui/Dependency;->clearDependencies()V

    .line 58
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 62
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->onBackPressed()V

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 79
    :try_start_0
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 80
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 81
    .local v3, "fragment":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 82
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v5, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 85
    .local v4, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/tuner/TunerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    const v5, 0x7f0a009c

    invoke-virtual {v4, v5, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 87
    const-string/jumbo v5, "PreferenceFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 88
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return v7

    .line 90
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fragment":Landroid/app/Fragment;
    .end local v4    # "transaction":Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v5, "TunerActivity"

    const-string/jumbo v6, "Problem launching fragment"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v5, 0x0

    return v5
.end method

.method public onPreferenceStartScreen(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/PreferenceScreen;)Z
    .locals 6
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    const/4 v5, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 99
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;

    invoke-direct {v1}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;-><init>()V

    .line 100
    .local v1, "fragment":Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 101
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v3, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 104
    const v3, 0x7f0a009c

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 105
    const-string/jumbo v3, "PreferenceFragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 106
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 107
    return v5
.end method
