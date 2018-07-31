.class Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction$1;
.super Ljava/lang/Object;
.source "SetupFingerprintEnrollIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v1, "op_legal_notices_type"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    :goto_0
    const-string/jumbo v1, "key_from_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;

    invoke-virtual {v1, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void

    .line 135
    :cond_0
    const-string/jumbo v1, "op_legal_notices_type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
