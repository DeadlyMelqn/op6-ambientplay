.class public Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIfNeedPassword()Z
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 78
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 80
    .local v1, "passwordQuality":I
    sparse-switch v1, :sswitch_data_0

    .line 89
    const/4 v2, 0x0

    return v2

    .line 87
    :sswitch_0
    const/4 v2, 0x1

    return v2

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/OxygenSetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 49
    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 56
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0xf9

    return v0
.end method

.method protected initViews()V
    .locals 6

    .prologue
    const v5, 0x7f0f0711

    .line 95
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->initViews()V

    .line 97
    const v4, 0x7f0a0186

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    .local v1, "description":Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    .line 103
    .local v3, "nextButton":Landroid/widget/Button;
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportFaceUnlock(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->checkIfNeedPassword()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 104
    const v4, 0x7f0f046e

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->setHeaderText(I)V

    .line 106
    const v4, 0x7f0f046f

    .line 105
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 108
    const v4, 0x7f0f0473

    .line 107
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 117
    :goto_0
    const v4, 0x7f0a0187

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v4, 0x7f0f0714

    .line 119
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 121
    const v4, 0x7f0a0180

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    .local v2, "functionalTermsButton":Landroid/widget/TextView;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :goto_1
    new-instance v4, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction$1;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction$1;-><init>(Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void

    .line 110
    .end local v0    # "cancelButton":Landroid/widget/Button;
    .end local v2    # "functionalTermsButton":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 113
    const v4, 0x7f0f0715

    .line 112
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 125
    .restart local v0    # "cancelButton":Landroid/widget/Button;
    .restart local v2    # "functionalTermsButton":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method protected isSetupWizard()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 146
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mFromSetup:Z

    .line 147
    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    if-ne p1, v6, :cond_4

    if-ne p2, v5, :cond_4

    .line 148
    :cond_0
    if-nez p3, :cond_1

    .line 149
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 151
    .restart local p3    # "data":Landroid/content/Intent;
    :cond_1
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 152
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v4, ":settings:password_quality"

    .line 154
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    .line 152
    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-nez v4, :cond_2

    .line 158
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    new-instance v0, Landroid/content/ComponentName;

    .line 162
    const-string/jumbo v4, "com.oneplus.provision"

    .line 163
    const-string/jumbo v5, "com.oneplus.provision.UserSettingSuccess"

    .line 161
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 171
    const v4, 0x7f050023

    const v5, 0x7f050024

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->overridePendingTransition(II)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    return-void

    .line 165
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    .line 166
    const-string/jumbo v4, "com.oneplus.provision"

    .line 167
    const-string/jumbo v5, "com.oneplus.provision.GesturesActivity"

    .line 165
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 173
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    goto :goto_1

    .line 179
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    if-ne p1, v6, :cond_2

    .line 181
    const/16 v4, 0x64

    if-ne p2, v4, :cond_5

    .line 182
    iget-object v4, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mToken:[B

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->launchFindSensor([B)V

    goto :goto_1

    .line 183
    :cond_5
    if-nez p2, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    goto :goto_1
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 63
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:frp_supported"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 192
    invoke-static {v1}, Lcom/android/settings/fingerprint/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/fingerprint/SetupSkipDialog;

    move-result-object v0

    .line 194
    .local v0, "dialog":Lcom/android/settings/fingerprint/SetupSkipDialog;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 195
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->checkIfNeedPassword()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 70
    const v0, 0x7f0400e1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->setContentView(I)V

    .line 72
    :cond_0
    return-void
.end method
