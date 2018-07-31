.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

.field final synthetic val$forceDeactivateSim:Z

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$slotId:I

    iput-boolean p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$forceDeactivateSim:Z

    iput-object p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$callback:Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 398
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v2, v2, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    .line 399
    iget v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$slotId:I

    iget-boolean v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$forceDeactivateSim:Z

    .line 398
    invoke-virtual {v2, v3, v4}, Landroid/service/euicc/EuiccService;->onGetDefaultDownloadableSubscriptionList(IZ)Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;

    move-result-object v1

    .line 401
    .local v1, "result":Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;
    :try_start_0
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;->val$callback:Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;

    invoke-interface {v2, v1}, Landroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;->onComplete(Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
