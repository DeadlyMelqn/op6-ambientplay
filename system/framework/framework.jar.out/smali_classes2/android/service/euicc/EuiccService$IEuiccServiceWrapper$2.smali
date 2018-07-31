.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getEid(ILandroid/service/euicc/IGetEidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IGetEidCallback;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEidCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;->val$callback:Landroid/service/euicc/IGetEidCallback;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 361
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v2, v2, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;->val$slotId:I

    invoke-virtual {v2, v3}, Landroid/service/euicc/EuiccService;->onGetEid(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "eid":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;->val$callback:Landroid/service/euicc/IGetEidCallback;

    invoke-interface {v2, v1}, Landroid/service/euicc/IGetEidCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
