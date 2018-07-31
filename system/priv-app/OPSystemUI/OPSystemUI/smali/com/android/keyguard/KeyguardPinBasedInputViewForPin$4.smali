.class Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;
.super Ljava/lang/Object;
.source "KeyguardPinBasedInputViewForPin.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->mPasswordEntry:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->resetPasswordText(ZZ)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin$4;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPinBasedInputViewForPin;->doHapticKeyClick()V

    .line 234
    return v1
.end method
