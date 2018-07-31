.class Landroid/media/tv/TvInputService$RecordingSession$2;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$RecordingSession;->notifyRecordingStopped(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$RecordingSession;

.field final synthetic val$recordedProgramUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/tv/TvInputService$RecordingSession;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession$2;->this$1:Landroid/media/tv/TvInputService$RecordingSession;

    iput-object p2, p0, Landroid/media/tv/TvInputService$RecordingSession$2;->val$recordedProgramUri:Landroid/net/Uri;

    .line 1577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1583
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession$2;->this$1:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$RecordingSession;->-get0(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1584
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession$2;->this$1:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-static {v1}, Landroid/media/tv/TvInputService$RecordingSession;->-get0(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputService$RecordingSession$2;->val$recordedProgramUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputSessionCallback;->onRecordingStopped(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    :cond_0
    :goto_0
    return-void

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TvInputService"

    const-string/jumbo v2, "error in notifyRecordingStopped"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
