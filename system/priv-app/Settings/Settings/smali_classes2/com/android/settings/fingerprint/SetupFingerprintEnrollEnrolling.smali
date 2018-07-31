.class public Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;
.super Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.source "SetupFingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;
    }
.end annotation


# static fields
.field private static final TAG_DIALOG:Ljava/lang/String; = "dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 43
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0xf6

    return v0
.end method

.method protected initViews()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->initViews()V

    .line 61
    const v1, 0x7f0a017d

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, "skipButton":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method protected isSetupWizard()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->onClick(Landroid/view/View;)V

    .line 75
    :goto_0
    return-void

    .line 70
    :pswitch_0
    new-instance v0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a017d
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const v0, 0x7f0400d7

    iput v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;->overlayLayoutId:I

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method
