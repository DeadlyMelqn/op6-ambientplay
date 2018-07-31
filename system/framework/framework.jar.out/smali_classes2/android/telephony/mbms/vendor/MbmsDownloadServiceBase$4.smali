.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;
.super Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->registerStateCallback(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStateCallback;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IDownloadStateCallback;IILandroid/telephony/mbms/DownloadRequest;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;
    .param p2, "$anonymous0"    # Landroid/telephony/mbms/IDownloadStateCallback;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$uid:I

    iput-object p5, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    .line 254
    invoke-direct {p0, p2, p3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$FilteredDownloadStateCallback;-><init>(Landroid/telephony/mbms/IDownloadStateCallback;I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 3
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 257
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$uid:I

    iget-object v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$4;->val$downloadRequest:Landroid/telephony/mbms/DownloadRequest;

    invoke-virtual {v2}, Landroid/telephony/mbms/DownloadRequest;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 258
    return-void
.end method
