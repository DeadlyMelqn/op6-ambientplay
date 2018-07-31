.class Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$2;
.super Ljava/lang/Object;
.source "OxygenChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$2;->this$1:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment$2;->this$1:Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/OxygenChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 365
    return-void
.end method
