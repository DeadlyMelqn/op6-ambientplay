.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

.field final synthetic val$forceDeactivateSim:Z

.field final synthetic val$slotId:I

.field final synthetic val$subscription:Landroid/telephony/euicc/DownloadableSubscription;


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iput-boolean p4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->val$forceDeactivateSim:Z

    iput-object p5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->val$callback:Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 380
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v2, v2, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    .line 381
    iget v3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->val$slotId:I

    iget-object v4, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v5, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->val$forceDeactivateSim:Z

    .line 380
    invoke-virtual {v2, v3, v4, v5}, Landroid/service/euicc/EuiccService;->onGetDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Z)Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;

    move-result-object v1

    .line 383
    .local v1, "result":Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
    :try_start_0
    iget-object v2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;->val$callback:Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;

    invoke-interface {v2, v1}, Landroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;->onComplete(Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
