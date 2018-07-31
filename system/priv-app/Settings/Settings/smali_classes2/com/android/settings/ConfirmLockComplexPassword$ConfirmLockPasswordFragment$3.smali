.class Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$3;
.super Ljava/lang/Object;
.source "ConfirmLockComplexPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->startEnterAnimation()V
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
    iput-object p1, p0, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-set0(Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;Z)Z

    .line 339
    iget-object v0, p0, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment$3;->this$1:Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;->-wrap3(Lcom/android/settings/ConfirmLockComplexPassword$ConfirmLockPasswordFragment;)V

    .line 340
    return-void
.end method
