.class Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "OxygenConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->startEnterAnimation()V
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
    iput-object p1, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-set0(Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$1:Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap2(Lcom/android/settings/OxygenConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 239
    return-void
.end method
