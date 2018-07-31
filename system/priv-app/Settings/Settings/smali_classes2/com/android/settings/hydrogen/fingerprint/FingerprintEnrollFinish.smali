.class public Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFinish.java"


# instance fields
.field private mLaunchingEnroll:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private setFingerprintEnrolling(Z)V
    .locals 4
    .param p1, "enrolling"    # Z

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-boolean v2, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    if-eqz v2, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 105
    const-string/jumbo v3, "oem_acc_fingerprint_enrolling"

    .line 104
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 106
    .local v0, "isEnrolling":Z
    :goto_0
    if-eq p1, v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 108
    const-string/jumbo v3, "oem_acc_fingerprint_enrolling"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 107
    :cond_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    :cond_2
    return-void

    .line 104
    .end local v0    # "isEnrolling":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isEnrolling":Z
    goto :goto_0
.end method

.method private showAnimation()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f05001e

    const v1, 0x7f05001f

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->overridePendingTransition(II)V

    .line 82
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0xf2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0185

    if-ne v1, v2, :cond_0

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->finish()V

    .line 76
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v4, 0x7f04025e

    invoke-virtual {p0, v4}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    .line 45
    const v4, 0x7f0f0724

    invoke-virtual {p0, v4}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->setHeaderText(I)V

    .line 46
    const v4, 0x7f0c0392

    invoke-virtual {p0, v4}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->setHeaderTextColor(I)V

    .line 47
    const v4, 0x7f0a0185

    invoke-virtual {p0, v4}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    .local v0, "addButton":Landroid/widget/Button;
    const-string/jumbo v4, "fingerprint"

    invoke-virtual {p0, v4}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 50
    .local v2, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    iget v4, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v2, v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 51
    .local v1, "enrolled":I
    invoke-virtual {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 52
    const v5, 0x10e0043

    .line 51
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 53
    .local v3, "max":I
    if-lt v1, v3, :cond_0

    .line 55
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->setResult(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->finish()V

    .line 65
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->setFingerprintEnrolling(Z)V

    .line 96
    invoke-super {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollBase;->onPause()V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollFinish;->setFingerprintEnrolling(Z)V

    .line 90
    invoke-super {p0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 91
    return-void
.end method
