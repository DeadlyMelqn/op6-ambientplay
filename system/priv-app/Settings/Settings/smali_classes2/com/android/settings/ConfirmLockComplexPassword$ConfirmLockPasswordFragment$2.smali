.class Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockComplexPassword.java"

# interfaces
.implements Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get1(Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f051d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get5(Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 209
    const/16 v2, 0x10

    .line 208
    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 211
    .local v0, "isEnaabled":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get5(Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 214
    iget-object v1, p0, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    iget-object v1, v1, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2$1;-><init>(Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;)V

    .line 222
    const-wide/16 v4, 0x28a

    .line 214
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    :cond_0
    return-void

    .line 206
    .end local v0    # "isEnaabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$2;->this$1:Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-get1(Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f051c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isEnaabled":Z
    goto :goto_1
.end method
