.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

.field final synthetic val$iccid:Ljava/lang/String;

.field final synthetic val$nickname:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;->val$iccid:Ljava/lang/String;

    iput-object p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;->val$nickname:Ljava/lang/String;

    iput-object p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;->val$callback:Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 482
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v2, v2, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;->val$slotId:I

    iget-object v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;->val$iccid:Ljava/lang/String;

    iget-object v5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;->val$nickname:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/service/euicc/EuiccService;->onUpdateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 484
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;->val$callback:Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;

    invoke-interface {v2, v1}, Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
