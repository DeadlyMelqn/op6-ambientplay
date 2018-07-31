.class public Lcom/oneplus/settings/OPApplicationsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPApplicationsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPApplicationsSettings$1;
    }
.end annotation


# static fields
.field private static final KEY_DISPLAY_SIZE_ADAPTION:Ljava/lang/String; = "display_size_adaption"

.field private static final ONEPLUSE_MULTI_APPLICATIONS_SETTING_KEY:Ljava/lang/String; = "onepluse_multi_applications_setting"

.field private static final ONEPLUS_APPLICATIONS_MANAGER_SETTINGS_KEY:Ljava/lang/String; = "oneplus_applications_manager_settings"

.field private static final ONEPLUS_APPLICATIONS_PERMISSION_MANAGER_SETTINGS_KEY:Ljava/lang/String; = "oneplus_applications_permission_settings"

.field private static final ONEPLUS_DEFAULT_APPLICATIONS_SETTINGS_KEY:Ljava/lang/String; = "onepluse_default_applications_setting"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPApplicationsSettings"

.field private static final USER_ENJOY_PLAY_KEY:Ljava/lang/String; = "user_enjoy_plan"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplaySizeAdaptionPreference:Landroid/support/v7/preference/Preference;

.field private mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

.field private mUserPlanPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/oneplus/settings/OPApplicationsSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPApplicationsSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPApplicationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPApplicationsSettings;->addPreferencesFromResource(I)V

    .line 66
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/settings/OPApplicationsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "onepluse_multi_applications_setting"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPApplicationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 70
    :cond_0
    const-string/jumbo v0, "display_size_adaption"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPApplicationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPApplicationsSettings;->mDisplaySizeAdaptionPreference:Landroid/support/v7/preference/Preference;

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/OPApplicationsSettings;->mDisplaySizeAdaptionPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/settings/OPApplicationsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPApplicationsSettings;->mDisplaySizeAdaptionPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 75
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 84
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v6, "oneplus_applications_permission_settings"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    sget-boolean v4, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 89
    .local v4, "isCtaVersion":Z
    if-eqz v4, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 91
    const-string/jumbo v7, "com.oneplus.security"

    .line 90
    invoke-static {v6, v7}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 89
    if-eqz v6, :cond_0

    .line 92
    new-instance v1, Landroid/content/Intent;

    .line 93
    const-string/jumbo v6, "com.oneplus.security.action.OPPERMISSION"

    .line 92
    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPApplicationsSettings;->startActivity(Landroid/content/Intent;)V

    .line 101
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return v9

    .line 95
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 96
    const-string/jumbo v6, "android.intent.action.MANAGE_PERMISSIONS"

    .line 95
    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 102
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "isCtaVersion":Z
    :cond_1
    const-string/jumbo v6, "onepluse_multi_applications_setting"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v3, "intents":Landroid/content/Intent;
    const-string/jumbo v6, "oneplus.intent.action.ONEPLUS_MULTI_APP_LIST_ACTION"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPApplicationsSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 109
    .end local v3    # "intents":Landroid/content/Intent;
    :goto_2
    return v9

    .line 111
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "display_size_adaption"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    const/4 v1, 0x0

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.settings.action.DISPLAYSIZEADAPTION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    .local v2, "intent":Landroid/content/Intent;
    :try_start_3
    const-string/jumbo v6, "classname"

    .end local v1    # "intent":Landroid/content/Intent;
    const-class v7, Lcom/android/settings/Settings$DisplaySizeAdaptionAppListActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPApplicationsSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .line 120
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_3
    return v9

    .line 117
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_4
    const-string/jumbo v6, "OPApplicationsSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No activity found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 123
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v6

    return v6

    .line 117
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_4

    .line 107
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_2

    .line 99
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v4    # "isCtaVersion":Z
    :catch_3
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 80
    return-void
.end method
