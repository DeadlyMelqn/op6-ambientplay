.class public Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGeneric.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupChooseLockGeneric;
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
    .line 122
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 162
    const v0, 0x7f0401b3

    invoke-virtual {p0, v0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const v0, 0x7f0401b4

    invoke-virtual {p0, v0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    goto :goto_0
.end method

.method protected addPreferences()V
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-super {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    .line 213
    const/high16 v1, 0x10000

    .line 212
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 214
    .local v0, "newQuality":I
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 215
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z
    .param p4, "unlockMethodIntent"    # Landroid/content/Intent;

    .prologue
    .line 312
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/SetupEncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 314
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 315
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
    .line 258
    invoke-static/range {p1 .. p7}, Lcom/android/settings/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v0

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 265
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
    .line 271
    invoke-static/range {p1 .. p6}, Lcom/android/settings/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 278
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
    .line 244
    invoke-static/range {p1 .. p6}, Lcom/android/settings/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 251
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJI)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I

    .prologue
    .line 294
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v0

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 297
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 303
    invoke-static {p1, p2, p3}, Lcom/android/settings/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 306
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZI)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "confirmCredentials"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 285
    invoke-static {p1, p2, p3}, Lcom/android/settings/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 288
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 170
    if-eqz p2, :cond_1

    .line 171
    if-nez p3, :cond_0

    .line 172
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 176
    .restart local p3    # "data":Landroid/content/Intent;
    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v3, ":settings:password_quality"

    .line 178
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    .line 177
    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 181
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.settings"

    .line 182
    const-string/jumbo v4, "com.android.settings.SetupRedactionInterstitial"

    .line 181
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 190
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

    .line 195
    check-cast v0, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;

    .line 196
    .local v0, "layout":Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    return-object v1
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 321
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 324
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "unlock_set_do_later"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 232
    const-string/jumbo v3, ":settings:frp_supported"

    const/4 v4, 0x0

    .line 231
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/android/settings/fingerprint/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/fingerprint/SetupSkipDialog;

    move-result-object v0

    .line 233
    .local v0, "dialog":Lcom/android/settings/fingerprint/SetupSkipDialog;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 234
    const/4 v2, 0x1

    return v2

    .line 236
    .end local v0    # "dialog":Lcom/android/settings/fingerprint/SetupSkipDialog;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v1, p1

    .line 132
    check-cast v1, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;

    .line 133
    .local v1, "layout":Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 134
    const v5, 0x7f0d006c

    .line 133
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setDividerInset(I)V

    .line 135
    invoke-virtual {v1}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v2

    .line 136
    .local v2, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v2}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    .line 137
    .local v3, "nextButton":Landroid/widget/Button;
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    invoke-virtual {v2, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 140
    const v4, 0x7f0202ab

    .line 141
    const v5, 0x7f02044d

    .line 140
    invoke-virtual {v1, v4, v5}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setIllustration(II)V

    .line 143
    const v4, 0x7f02030c

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setBackgroundTile(I)V

    .line 145
    iget-boolean v4, p0, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-nez v4, :cond_0

    .line 146
    const v4, 0x7f0f0758

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setHeaderText(I)V

    .line 151
    :goto_0
    invoke-virtual {v1}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 152
    .local v0, "headText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0392

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    invoke-virtual {p0, v6}, Lcom/android/settings/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void

    .line 148
    .end local v0    # "headText":Landroid/widget/TextView;
    :cond_0
    const v4, 0x7f0f0756

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setHeaderText(I)V

    goto :goto_0
.end method
