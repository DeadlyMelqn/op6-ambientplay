.class Landroid/telephony/mbms/InternalDownloadSessionCallback$3;
.super Ljava/lang/Object;
.source "InternalDownloadSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalDownloadSessionCallback;->onMiddlewareReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalDownloadSessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/telephony/mbms/InternalDownloadSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->-get0(Landroid/telephony/mbms/InternalDownloadSessionCallback;)Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onMiddlewareReady()V

    .line 75
    return-void
.end method
