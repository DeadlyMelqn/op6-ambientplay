.class Landroid/media/tv/TvInputService$Session$7;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->notifyVideoUnavailable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;I)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$Session;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$7;->this$1:Landroid/media/tv/TvInputService$Session;

    iput p2, p0, Landroid/media/tv/TvInputService$Session$7;->val$reason:I

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 507
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$7;->this$1:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$7;->this$1:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get3(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputService$Session$7;->val$reason:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onVideoUnavailable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputService"

    const-string/jumbo v2, "error in notifyVideoUnavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
