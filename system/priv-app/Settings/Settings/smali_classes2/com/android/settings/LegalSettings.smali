.class public Lcom/android/settings/LegalSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LegalSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LegalSettings$1;
    }
.end annotation


# static fields
.field private static final KEY_COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field private static final KEY_LEGAL_NOTICES:Ljava/lang/String; = "op_legal_notices"

.field private static final KEY_LEGAL_NOTICES_TYPE:I = 0x1

.field private static final KEY_LICENSE:Ljava/lang/String; = "license"

.field private static final KEY_LOCATION_INFORMATION:Ljava/lang/String; = "op_location_information"

.field private static final KEY_LOCATION_INFORMATION_TYPE:I = 0x9

.field private static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field private static final KEY_PERMISSION_AGREEMENT:Ljava/lang/String; = "op_permission_agreement"

.field private static final KEY_PERMISSION_AGREEMENT_TYPE:I = 0x4

.field private static final KEY_PRIVACE_POLICY:Ljava/lang/String; = "op_privacy_policy"

.field private static final KEY_PRIVACE_POLICY_TYPE:I = 0x3

.field private static final KEY_TERMS:Ljava/lang/String; = "terms"

.field private static final KEY_USER_AGREEMENT:Ljava/lang/String; = "op_user_agreements"

.field private static final KEY_USER_AGREEMENT_TYPE:I = 0x2

.field private static final KEY_WALLPAPER_ATTRIBUTIONS:Ljava/lang/String; = "wallpaper_attributions"

.field private static final KEY_WEBVIEW_LICENSE:Ljava/lang/String; = "webview_license"

.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final ONEPLUS_A5010:Ljava/lang/String; = "ONEPLUS A5010"

.field private static final ONEPLUS_A6000:Ljava/lang/String; = "ONEPLUS A6000"

.field private static final ONEPLUS_A6003:Ljava/lang/String; = "ONEPLUS A6003"

.field private static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private aBoostParamVal:[I

.field private mBoostFrameworkPer:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/android/settings/LegalSettings$1;

    invoke-direct {v0}, Lcom/android/settings/LegalSettings$1;-><init>()V

    .line 172
    sput-object v0, Lcom/android/settings/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x578

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    const/high16 v0, 0x40800000    # 4.0f

    const v1, 0x40800100    # 4.000122f

    filled-new-array {v0, v2, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LegalSettings;->aBoostParamVal:[I

    .line 52
    return-void
.end method

.method private startLegalActivity(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "op_legal_notices_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string/jumbo v1, "key_from_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/settings/LegalSettings;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/high16 v3, 0x7f080000

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 89
    .local v2, "parentPreference":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v3, "terms"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 91
    const-string/jumbo v3, "license"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 93
    const-string/jumbo v3, "copyright"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 95
    const-string/jumbo v3, "webview_license"

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 98
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const-string/jumbo v3, "op_permission_agreement"

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 103
    :cond_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v4, "ONEPLUS A5000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    const-string/jumbo v3, "wallpaper_attributions"

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 105
    .local v1, "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    const v3, 0x7f0f05cd

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 106
    const-string/jumbo v3, "icon_attributions"

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 116
    .end local v1    # "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    :cond_1
    :goto_0
    sget-object v3, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    const-string/jumbo v3, "wallpaper_attributions"

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 118
    .restart local v1    # "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    const v3, 0x7f0f05ce

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 123
    .end local v1    # "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    :cond_2
    :goto_1
    const-string/jumbo v3, "op_legal_notices"

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 125
    return-void

    .line 107
    :cond_3
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v4, "ONEPLUS A5010"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    const-string/jumbo v3, "wallpaper_attributions"

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 109
    .restart local v1    # "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    const v3, 0x7f0f05cf

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 110
    const-string/jumbo v3, "icon_attributions"

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 111
    .end local v1    # "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    :cond_4
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v4, "ONEPLUS A6000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v4, "ONEPLUS A6003"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    :cond_5
    const-string/jumbo v3, "wallpaper_attributions"

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 113
    .restart local v1    # "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    const v3, 0x7f0f05d0

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 114
    const-string/jumbo v3, "icon_attributions"

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 119
    .end local v1    # "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    :cond_6
    sget-object v3, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    const-string/jumbo v3, "wallpaper_attributions"

    invoke-virtual {p0, v3}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 121
    .restart local v1    # "mWallpaperAttributtonsPreference":Landroid/support/v7/preference/Preference;
    const v3, 0x7f0f05d1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 132
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "op_legal_notices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/LegalSettings;->startLegalActivity(I)V

    .line 134
    return v3

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "op_user_agreements"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/LegalSettings;->startLegalActivity(I)V

    .line 137
    return v3

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "op_privacy_policy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings/LegalSettings;->startLegalActivity(I)V

    .line 140
    return v3

    .line 141
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "op_permission_agreement"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 142
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/settings/LegalSettings;->startLegalActivity(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_3
    :goto_0
    const-string/jumbo v1, "terms"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    iget-object v1, p0, Lcom/android/settings/LegalSettings;->mBoostFrameworkPer:Landroid/util/BoostFramework;

    if-nez v1, :cond_4

    .line 151
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LegalSettings;->mBoostFrameworkPer:Landroid/util/BoostFramework;

    .line 153
    :cond_4
    iget-object v1, p0, Lcom/android/settings/LegalSettings;->mBoostFrameworkPer:Landroid/util/BoostFramework;

    iget-object v2, p0, Lcom/android/settings/LegalSettings;->aBoostParamVal:[I

    const/16 v3, 0x7530

    invoke-virtual {v1, v3, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 156
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    .line 143
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "op_location_information"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/android/settings/LegalSettings;->startLegalActivity(I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method
