.class final Landroid/telephony/MbmsDownloadSession$2;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsDownloadSession;->create(Landroid/content/Context;Landroid/telephony/mbms/MbmsDownloadSessionCallback;ILandroid/os/Handler;)Landroid/telephony/MbmsDownloadSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession$2;->val$callback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    iput p2, p0, Landroid/telephony/MbmsDownloadSession$2;->val$result:I

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$2;->val$callback:Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    iget v1, p0, Landroid/telephony/MbmsDownloadSession$2;->val$result:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;->onError(ILjava/lang/String;)V

    .line 264
    return-void
.end method
