.class Landroid/app/KeyguardManager$2;
.super Landroid/view/IOnKeyguardExitResult$Stub;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/KeyguardManager;

.field final synthetic val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;


# direct methods
.method constructor <init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/KeyguardManager;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/app/KeyguardManager$2;->this$0:Landroid/app/KeyguardManager;

    iput-object p2, p0, Landroid/app/KeyguardManager$2;->val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;

    .line 534
    invoke-direct {p0}, Landroid/view/IOnKeyguardExitResult$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 1
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Landroid/app/KeyguardManager$2;->val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Landroid/app/KeyguardManager$2;->val$callback:Landroid/app/KeyguardManager$OnKeyguardExitResult;

    invoke-interface {v0, p1}, Landroid/app/KeyguardManager$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 539
    :cond_0
    return-void
.end method
