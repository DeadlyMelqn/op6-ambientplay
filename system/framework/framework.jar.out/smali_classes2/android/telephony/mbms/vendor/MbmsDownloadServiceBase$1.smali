.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;
.super Ljava/lang/Object;
.source "MbmsDownloadServiceBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

.field final synthetic val$subscriptionId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$uid:I

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$subscriptionId:I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$uid:I

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$subscriptionId:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 121
    return-void
.end method