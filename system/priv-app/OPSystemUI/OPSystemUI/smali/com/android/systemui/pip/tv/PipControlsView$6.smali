.class Lcom/android/systemui/pip/tv/PipControlsView$6;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/tv/PipControlsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_1

    .line 158
    :cond_0
    return-void

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    .line 161
    .local v0, "actions":J
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    .line 162
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get3(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 163
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 168
    :cond_2
    :goto_0
    return-void

    .line 164
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get3(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result v3

    if-nez v3, :cond_2

    .line 165
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_0
.end method
