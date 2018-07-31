.class final Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayMonitorClient"
.end annotation


# static fields
.field static final MAX_ERRORS:I = 0x5

.field static sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;


# instance fields
.field final mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

.field mErrorCount:I

.field final mIsPrivileged:Z


# direct methods
.method constructor <init>(Landroid/media/IPlaybackConfigDispatcher;Z)V
    .locals 1
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;
    .param p2, "isPrivileged"    # Z

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mErrorCount:I

    .line 618
    iput-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 619
    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mIsPrivileged:Z

    .line 620
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 623
    const-string/jumbo v0, "AudioService.PlaybackActivityMonitor"

    const-string/jumbo v1, "client died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget-object v0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->sListenerDeathMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 625
    return-void
.end method

.method init()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 629
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v1}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    const/4 v1, 0x1

    return v1

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AudioService.PlaybackActivityMonitor"

    const-string/jumbo v2, "Could not link to client death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    return v3
.end method

.method release()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayMonitorClient;->mDispatcherCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v0}, Landroid/media/IPlaybackConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 639
    return-void
.end method
