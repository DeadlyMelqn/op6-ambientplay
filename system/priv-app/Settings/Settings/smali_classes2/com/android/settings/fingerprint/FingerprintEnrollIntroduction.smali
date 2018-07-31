.class public Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;


# static fields
.field protected static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x1

.field protected static final FACE_UNLOCK_SETUP_REQUEST:I = 0x4

.field protected static final FINGERPRINT_FIND_SENSOR_REQUEST:I = 0x2

.field protected static final KEY_FACEUNLOCK_FUNCTIONAL_TERMS_TYPE:I = 0xa

.field protected static final KEY_FINGERPRINT_FUNCTIONAL_TERMS_TYPE:I = 0x8

.field protected static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field protected static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field protected static final LEARN_MORE_REQUEST:I = 0x3

.field protected static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"

.field private static final TAG:Ljava/lang/String; = "FingerprintIntro"


# instance fields
.field private mFingerprintUnlockDisabledByAdmin:Z

.field protected mFromSetup:Z

.field private mHasPassword:Z

.field protected mToken:[B

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFromSetup:Z

    .line 50
    return-void
.end method

.method private launchChooseLock()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 191
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    .line 192
    .local v0, "challenge":J
    const-string/jumbo v3, "minimum_quality"

    .line 193
    const/high16 v4, 0x10000

    .line 192
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string/jumbo v3, "hide_disabled_prefs"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    const-string/jumbo v3, "has_challenge"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    const-string/jumbo v3, "challenge"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    const-string/jumbo v3, "for_fingerprint"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    .line 199
    const-string/jumbo v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    :cond_0
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    return-void
.end method

.method private launchFaceUnlockSetup([B)V
    .locals 4
    .param p1, "token"    # [B

    .prologue
    .line 219
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getSetupFaceUnlockIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 220
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 221
    if-eqz p1, :cond_0

    .line 222
    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 224
    :cond_0
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    .line 225
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method private updatePasswordQuality()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 163
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 164
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v3

    .line 163
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 165
    .local v0, "passwordQuality":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    .line 166
    return-void
.end method


# virtual methods
.method protected applyActionBarTitle()I
    .locals 1

    .prologue
    .line 329
    const v0, 0x7f0f070d

    return v0
.end method

.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 289
    const/16 v0, 0xf3

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 170
    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 300
    const v1, 0x7f0a0186

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 301
    .local v0, "description":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_0

    .line 302
    const v1, 0x7f0f0710

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    :cond_0
    return-void
.end method

.method protected launchFindSensor([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 208
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 210
    :cond_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 211
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 244
    if-ne p2, v4, :cond_2

    const/4 v0, 0x1

    .line 247
    .local v0, "isResultFinished":Z
    :goto_0
    if-eq p1, v5, :cond_0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    if-ne p2, v4, :cond_5

    .line 248
    :cond_0
    if-nez v0, :cond_1

    if-ne p2, v5, :cond_4

    .line 249
    :cond_1
    if-eqz v0, :cond_3

    const/4 v1, -0x1

    .line 250
    .local v1, "result":I
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 252
    return-void

    .line 244
    .end local v0    # "isResultFinished":Z
    .end local v1    # "result":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isResultFinished":Z
    goto :goto_0

    .line 249
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "result":I
    goto :goto_1

    .line 253
    .end local v1    # "result":I
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFromSetup:Z

    if-eqz v3, :cond_8

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 255
    return-void

    .line 257
    :cond_5
    if-ne p1, v4, :cond_7

    .line 258
    if-eqz v0, :cond_8

    .line 259
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 261
    const-string/jumbo v3, "hw_auth_token"

    .line 260
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 263
    .local v2, "token":[B
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mToken:[B

    .line 264
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportFaceUnlock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFromSetup:Z

    if-eqz v3, :cond_6

    .line 265
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchFaceUnlockSetup([B)V

    .line 270
    :goto_2
    return-void

    .line 267
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    goto :goto_2

    .line 272
    .end local v2    # "token":[B
    :cond_7
    const/4 v3, 0x3

    if-ne p1, v3, :cond_8

    .line 273
    const v3, 0x7f050030

    const v4, 0x7f050031

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->overridePendingTransition(II)V

    .line 275
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 276
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 294
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0187

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onCancelButtonClick()V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClick(Lcom/android/setupwizardlib/span/LinkSpan;)V
    .locals 6
    .param p1, "span"    # Lcom/android/setupwizardlib/span/LinkSpan;

    .prologue
    .line 309
    const-string/jumbo v3, "url"

    invoke-virtual {p1}, Lcom/android/setupwizardlib/span/LinkSpan;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    const v3, 0x7f0f0ec7

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 312
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 313
    const-string/jumbo v3, "FingerprintIntro"

    const-string/jumbo v4, "Null help intent."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 319
    :cond_0
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 320
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "FingerprintIntro"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity was not found for intent, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0f070d

    const/4 v3, 0x1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 106
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 109
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 113
    :cond_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v5, 0x20

    .line 112
    invoke-static {p0, v5, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    .line 115
    const v3, 0x7f04008e

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setContentView(I)V

    .line 116
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    if-eqz v3, :cond_2

    .line 117
    const v3, 0x7f0f070e

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    .line 123
    :goto_1
    const v3, 0x7f0a0187

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 124
    .local v1, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v3, 0x7f0a0180

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 126
    .local v2, "functionalTermsButton":Landroid/widget/TextView;
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 139
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 140
    return-void

    .line 112
    .end local v1    # "cancelButton":Landroid/widget/Button;
    .end local v2    # "functionalTermsButton":Landroid/widget/TextView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    goto :goto_1
.end method

.method protected onNextButtonClick()V
    .locals 1

    .prologue
    .line 176
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->disableAospFaceUnlock(Landroid/content/Context;)V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    if-nez v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchChooseLock()V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 146
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    .line 147
    .local v1, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v0, 0x0

    .line 148
    .local v0, "errorMsg":I
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 150
    const v5, 0x10e0043

    .line 149
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 152
    .local v2, "max":I
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 153
    .local v3, "numEnrolledFingerprints":I
    if-lt v3, v2, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    .end local v2    # "max":I
    .end local v3    # "numEnrolledFingerprints":I
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local v2    # "max":I
    .restart local v3    # "numEnrolledFingerprints":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
