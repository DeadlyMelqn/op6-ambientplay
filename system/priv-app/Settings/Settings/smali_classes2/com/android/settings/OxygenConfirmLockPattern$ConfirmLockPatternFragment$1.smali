.class Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment$1;
.super Ljava/lang/Object;
.source "OxygenConfirmLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment$1;->this$1:Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment$1;->this$1:Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment;->-get3(Lcom/android/settings/OxygenConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 352
    return-void
.end method
