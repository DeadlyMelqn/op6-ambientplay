.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

.field final synthetic val$errMsgId:I


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->val$errMsgId:I

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 891
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 893
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->val$errMsgId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 894
    .local v1, "wasTimeout":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 898
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 899
    return-void

    .line 893
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "wasTimeout":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "wasTimeout":Z
    goto :goto_0
.end method
