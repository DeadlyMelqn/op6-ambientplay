.class Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$4;
.super Ljava/lang/Object;
.source "ChooseLockComplexPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->updateUi()V
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
    iput-object p1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$4;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$4;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->-get2(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;)Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->setEnabled(Z)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$4;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->handleNext()V

    .line 755
    return-void
.end method
