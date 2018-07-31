.class public abstract Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.super Lcom/android/settings/InstrumentedActivity;
.source "FingerprintEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final RESULT_FINISHED:I = 0x1

.field static final RESULT_SKIP:I = 0x2

.field static final RESULT_TIMEOUT:I = 0x3


# instance fields
.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private needSetTransparentStatusBar()Z
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->isSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needSetWhiteStatusBar()Z
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->isSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppropriateStatusBar()V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->isSetupWizard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->needSetWhiteStatusBar()Z

    move-result v0

    .line 168
    .local v0, "setLigthStatusBar":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 170
    const/16 v1, 0x2500

    .line 178
    .local v1, "systemUiVisibility":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->needSetTransparentStatusBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 183
    :cond_0
    return-void

    .line 164
    .end local v0    # "setLigthStatusBar":Z
    .end local v1    # "systemUiVisibility":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    .restart local v0    # "setLigthStatusBar":Z
    goto :goto_0

    .line 175
    :cond_2
    const/16 v1, 0x500

    .line 174
    .restart local v1    # "systemUiVisibility":I
    goto :goto_1
.end method


# virtual methods
.method protected applyActionBarTitle()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, -0x1

    return v0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 141
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 142
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    :cond_0
    return-object v0
.end method

.method protected getLayout()Lcom/android/setupwizardlib/GlifLayout;
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0a0178

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    .line 97
    .local v0, "nextButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected isSetupWizard()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onNextButtonClick()V

    .line 132
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 59
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->applyActionBarTitle()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->applyActionBarTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 68
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->setAppropriateStatusBar()V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 72
    const-string/jumbo v2, "hw_auth_token"

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 73
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    if-nez v1, :cond_1

    .line 75
    const-string/jumbo v1, "hw_auth_token"

    .line 74
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mUserId:I

    .line 78
    return-void

    .line 65
    :cond_2
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 90
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 84
    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->setHeaderText(IZ)V

    .line 121
    return-void
.end method

.method protected setHeaderText(IZ)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 108
    .local v0, "layoutTitle":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 109
    .local v1, "previousTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 110
    .local v2, "title":Ljava/lang/CharSequence;
    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_2

    .line 111
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    :cond_2
    return-void
.end method
