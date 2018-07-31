.class Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;
.super Ljava/lang/Object;
.source "ChooseLockComplexPassword.java"

# interfaces
.implements Lcom/oneplus/settings/password/OPPasswordTextViewForPin$OnTextEmptyListerner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get0(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f051d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get2(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 358
    const/16 v2, 0x10

    .line 357
    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 359
    .local v0, "isEnabled":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get1(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 360
    if-eqz v0, :cond_3

    .line 361
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get1(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 365
    :goto_2
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get3(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    if-ne v1, v2, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    sget-object v2, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-static {v1, v2}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-set0(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-wrap0(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)V

    .line 369
    return-void

    .line 355
    .end local v0    # "isEnabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get0(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0f051c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 357
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isEnabled":Z
    goto :goto_1

    .line 363
    :cond_3
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$3;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get1(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2
.end method
