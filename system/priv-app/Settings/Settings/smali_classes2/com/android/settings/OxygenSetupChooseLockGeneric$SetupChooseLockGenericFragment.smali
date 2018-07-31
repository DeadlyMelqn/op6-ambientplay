.class public Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;
.source "OxygenSetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OxygenSetupChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockGenericFragment"
.end annotation


# static fields
.field public static final EXTRA_PASSWORD_QUALITY:Ljava/lang/String; = ":settings:password_quality"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 137
    const v0, 0x7f04013e

    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    const v0, 0x7f04013f

    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    goto :goto_0
.end method

.method protected addPreferences()V
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 195
    invoke-super {p0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    .line 188
    const/high16 v1, 0x10000

    .line 187
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 189
    .local v0, "newQuality":I
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 190
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z
    .param p4, "unlockMethodIntent"    # Landroid/content/Intent;

    .prologue
    .line 273
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/OxygenSetupEncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 276
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJI)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J
    .param p8, "userId"    # I

    .prologue
    .line 228
    invoke-static/range {p1 .. p7}, Lcom/android/settings/OxygenSetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v0

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 231
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 237
    invoke-static/range {p1 .. p6}, Lcom/android/settings/OxygenSetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 240
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "confirmCredentials"    # Z
    .param p7, "userId"    # I

    .prologue
    .line 218
    invoke-static/range {p1 .. p6}, Lcom/android/settings/OxygenSetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 221
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .prologue
    .line 255
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/OxygenSetupChooseLockPattern;->createIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v0

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 258
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 264
    invoke-static {p1, p2, p3}, Lcom/android/settings/OxygenSetupChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 267
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "confirmCredentials"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 246
    invoke-static {p1, p2, p3}, Lcom/android/settings/OxygenSetupChooseLockPattern;->createIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 249
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 145
    if-eqz p2, :cond_1

    .line 146
    if-nez p3, :cond_0

    .line 147
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 151
    .restart local p3    # "data":Landroid/content/Intent;
    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 152
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v3, ":settings:password_quality"

    .line 153
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    .line 152
    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 156
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.settings"

    .line 157
    const-string/jumbo v4, "com.android.settings.SetupRedactionInterstitial"

    .line 156
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    move-object v0, p2

    .line 170
    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 171
    .local v0, "layout":Lcom/android/setupwizardlib/GlifPreferenceLayout;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    return-object v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "unlock_set_do_later"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 207
    const-string/jumbo v3, ":settings:frp_supported"

    const/4 v4, 0x0

    .line 206
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/android/settings/fingerprint/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/fingerprint/SetupSkipDialog;

    move-result-object v0

    .line 208
    .local v0, "dialog":Lcom/android/settings/fingerprint/SetupSkipDialog;
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 209
    const/4 v2, 0x1

    return v2

    .line 211
    .end local v0    # "dialog":Lcom/android/settings/fingerprint/SetupSkipDialog;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    .line 112
    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 113
    .local v0, "layout":Lcom/android/setupwizardlib/GlifPreferenceLayout;
    new-instance v2, Lcom/android/settings/utils/SettingsDividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/utils/SettingsDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V

    .line 118
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerInset(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0201fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-boolean v2, p0, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v2, :cond_1

    .line 123
    const v1, 0x7f0f0756

    .line 124
    .local v1, "titleResource":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 128
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setHeaderText(I)V

    .line 131
    invoke-virtual {p0, v4}, Lcom/android/settings/OxygenSetupChooseLockGeneric$SetupChooseLockGenericFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void

    .line 123
    .end local v1    # "titleResource":I
    :cond_1
    const v1, 0x7f0f0758

    .restart local v1    # "titleResource":I
    goto :goto_0
.end method
