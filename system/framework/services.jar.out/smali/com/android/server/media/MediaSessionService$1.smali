.class Lcom/android/server/media/MediaSessionService$1;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAudioPlaybackStarted(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-get9(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$1;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionService;->-wrap2(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 150
    .local v0, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v0, :cond_0

    .line 151
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-get10(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 154
    return-void

    .line 147
    .end local v0    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
