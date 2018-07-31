.class public Lcom/android/settings/applications/PictureInPictureDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "PictureInPictureDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_APP_OPS_SETTINGS_DESC:Ljava/lang/String; = "app_ops_settings_description"

.field private static final KEY_APP_OPS_SETTINGS_PREFS:Ljava/lang/String; = "app_ops_settings_preference"

.field private static final KEY_APP_OPS_SETTINGS_SWITCH:Ljava/lang/String; = "app_ops_settings_switch"

.field private static final LOG_TAG:Ljava/lang/String; = "PictureInPictureDetails"


# instance fields
.field private mOverlayDesc:Landroid/support/v7/preference/Preference;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 117
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 118
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v2, 0x4a

    invoke-virtual {v0, v2, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/PictureInPictureDetails;->getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 128
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    const v1, 0x7f0f1237

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0f1238

    goto :goto_0
.end method

.method static setEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 107
    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 108
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz p3, :cond_0

    const/4 v1, 0x0

    .line 109
    .local v1, "newMode":I
    :goto_0
    const/16 v2, 0x4a

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 110
    return-void

    .line 108
    .end local v1    # "newMode":I
    :cond_0
    const/4 v1, 0x2

    .restart local v1    # "newMode":I
    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PictureInPictureDetails;->addPreferencesFromResource(I)V

    .line 55
    const-string/jumbo v0, "app_ops_settings_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PictureInPictureDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    .line 56
    const-string/jumbo v0, "app_ops_settings_description"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PictureInPictureDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mOverlayDesc:Landroid/support/v7/preference/Preference;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/applications/PictureInPictureDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "app_ops_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/PictureInPictureDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/applications/PictureInPictureDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f0f1234

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(I)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f0f1235

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mOverlayDesc:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0f1236    # 1.9017416E38f

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v1, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/applications/PictureInPictureDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    .line 76
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 75
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/applications/PictureInPictureDetails;->setEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 77
    const/4 v0, 0x1

    return v0

    .line 79
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected refreshUi()Z
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/applications/PictureInPictureDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    .line 84
    invoke-static {v1, v2, v3}, Lcom/android/settings/applications/PictureInPictureDetails;->getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 86
    .local v0, "isAllowed":Z
    iget-object v1, p0, Lcom/android/settings/applications/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 87
    const/4 v1, 0x1

    return v1
.end method
