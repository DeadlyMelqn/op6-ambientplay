.class Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "OxygenConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap1(Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap2(Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 309
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-get1(Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-get3(Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 313
    const/4 v2, 0x1

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 314
    return-void
.end method
