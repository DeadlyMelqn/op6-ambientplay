.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;
.super Landroid/telephony/mbms/MbmsDownloadSessionCallback;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

.field final synthetic val$subscriptionId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IMbmsDownloadSessionCallback;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    .line 124
    invoke-direct {p0}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v1, p1, p2}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    goto :goto_0
.end method

.method public onFileServicesUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/FileServiceInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v1, p1}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    goto :goto_0
.end method

.method public onMiddlewareReady()V
    .locals 4

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v1}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onMiddlewareReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$2;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    goto :goto_0
.end method
