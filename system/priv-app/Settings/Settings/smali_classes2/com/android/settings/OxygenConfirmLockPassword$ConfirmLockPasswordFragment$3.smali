.class Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;
.super Ljava/lang/Object;
.source "OxygenConfirmLockPassword.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$localUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$localUserId:I

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .locals 4
    .param p1, "token"    # [B
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-object v1, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1, v2}, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-set1(Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "matched":Z
    if-eqz p1, :cond_0

    .line 362
    const/4 v0, 0x1

    .line 363
    iget-object v1, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-boolean v1, v1, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$intent:Landroid/content/Intent;

    .line 365
    const-string/jumbo v2, "hw_auth_token"

    .line 364
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-get0(Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/CredentialCheckResultTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$intent:Landroid/content/Intent;

    .line 370
    iget v3, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$3;->val$localUserId:I

    .line 369
    invoke-virtual {v1, v0, v2, p2, v3}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 371
    return-void
.end method
