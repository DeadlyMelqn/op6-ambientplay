.class Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$1:Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    .line 190
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$1:Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 201
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 202
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 204
    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 4
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment$2;->this$1:Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->-get1(Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    .line 194
    const/16 v2, 0x3e8

    .line 195
    const/4 v3, 0x0

    .line 194
    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void
.end method