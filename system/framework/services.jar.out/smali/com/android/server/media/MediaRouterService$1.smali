.class Lcom/android/server/media/MediaRouterService$1;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouterService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAudioPlayerActiveStateChanged(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "active"    # Z

    .prologue
    .line 114
    if-eqz p2, :cond_1

    .line 115
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v3, p1}, Lcom/android/server/media/MediaRouterService;->restoreRoute(I)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->-get0(Lcom/android/server/media/MediaRouterService;)Lcom/android/server/media/AudioPlaybackMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/media/AudioPlaybackMonitor;->getSortedAudioPlaybackClientUids()Landroid/util/IntArray;

    move-result-object v2

    .line 119
    .local v2, "sortedAudioPlaybackClientUids":Landroid/util/IntArray;
    const/4 v1, 0x0

    .line 120
    .local v1, "restored":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService;->-get0(Lcom/android/server/media/MediaRouterService;)Lcom/android/server/media/AudioPlaybackMonitor;

    move-result-object v3

    .line 122
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 121
    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlaybackMonitor;->isPlaybackActive(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaRouterService;->restoreRoute(I)V

    .line 124
    const/4 v1, 0x1

    .line 128
    :cond_2
    if-nez v1, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$1;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    goto :goto_0

    .line 120
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
