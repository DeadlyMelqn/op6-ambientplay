.class public Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;
.super Landroid/app/DialogFragment;
.source "SetupFingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkipDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    const v1, 0x7f0f0728

    .line 97
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    const v1, 0x7f0f0729

    .line 97
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$1;-><init>(Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;)V

    .line 101
    const v2, 0x7f0f088e

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog$2;-><init>(Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;)V

    .line 112
    const v2, 0x7f0f088f

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method
