.class Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$1;
.super Landroid/os/Handler;
.source "ChooseLockComplexPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;
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
    iput-object p1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$1;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    .line 203
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$1;->this$1:Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockComplexPassword$ChooseLockComplexPasswordFragment$Stage;)V

    .line 209
    :cond_0
    return-void
.end method
