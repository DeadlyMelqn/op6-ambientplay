.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private mMediaPlayPauseKeyPending:Z

.field private mSession:Landroid/media/session/MediaSession;


# direct methods
.method static synthetic -set0(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$CallbackMessageHandler;
    .locals 0
    .param p0, "-this"    # Landroid/media/session/MediaSession$Callback;
    .param p1, "-value"    # Landroid/media/session/MediaSession$CallbackMessageHandler;

    .prologue
    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-object p1
.end method

.method static synthetic -set1(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;
    .locals 0
    .param p0, "-this"    # Landroid/media/session/MediaSession$Callback;
    .param p1, "-value"    # Landroid/media/session/MediaSession;

    .prologue
    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/session/MediaSession$Callback;)V
    .locals 0
    .param p0, "-this"    # Landroid/media/session/MediaSession$Callback;

    .prologue
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    return-void
.end method

.method private handleMediaPlayPauseKeySingleTapIfPending()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 856
    iget-boolean v6, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-nez v6, :cond_0

    .line 857
    return-void

    .line 859
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 860
    iget-object v6, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v7, 0x17

    invoke-virtual {v6, v7}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 861
    iget-object v6, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v6}, Landroid/media/session/MediaSession;->-get1(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v3

    .line 862
    .local v3, "state":Landroid/media/session/PlaybackState;
    if-nez v3, :cond_2

    const-wide/16 v4, 0x0

    .line 863
    .local v4, "validActions":J
    :goto_0
    if-eqz v3, :cond_4

    .line 864
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    const/4 v2, 0x1

    .line 865
    .local v2, "isPlaying":Z
    :goto_1
    const-wide/16 v6, 0x204

    and-long/2addr v6, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    .line 867
    .local v1, "canPlay":Z
    :goto_2
    const-wide/16 v6, 0x202

    and-long/2addr v6, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    const/4 v0, 0x1

    .line 869
    .local v0, "canPause":Z
    :goto_3
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 870
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 874
    :cond_1
    :goto_4
    return-void

    .line 862
    .end local v0    # "canPause":Z
    .end local v1    # "canPlay":Z
    .end local v2    # "isPlaying":Z
    .end local v4    # "validActions":J
    :cond_2
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    .restart local v4    # "validActions":J
    goto :goto_0

    .line 864
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isPlaying":Z
    goto :goto_1

    .line 863
    .end local v2    # "isPlaying":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isPlaying":Z
    goto :goto_1

    .line 865
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "canPlay":Z
    goto :goto_2

    .line 867
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "canPause":Z
    goto :goto_3

    .line 871
    :cond_7
    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 872
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    goto :goto_4
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 756
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1017
    return-void
.end method

.method public onFastForward()V
    .locals 0

    .prologue
    .line 978
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 11
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x17

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 772
    iget-object v4, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v4, :cond_0

    .line 773
    const-string/jumbo v4, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 772
    if-eqz v4, :cond_0

    .line 774
    const-string/jumbo v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 775
    .local v0, "ke":Landroid/view/KeyEvent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 776
    iget-object v4, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v4}, Landroid/media/session/MediaSession;->-get1(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 777
    .local v1, "state":Landroid/media/session/PlaybackState;
    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    .line 778
    .local v2, "validActions":J
    :goto_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 802
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    .line 806
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    .line 852
    .end local v0    # "ke":Landroid/view/KeyEvent;
    .end local v1    # "state":Landroid/media/session/PlaybackState;
    .end local v2    # "validActions":J
    :cond_0
    return v9

    .line 777
    .restart local v0    # "ke":Landroid/view/KeyEvent;
    .restart local v1    # "state":Landroid/media/session/PlaybackState;
    :cond_1
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    .restart local v2    # "validActions":J
    goto :goto_0

    .line 781
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 783
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    .line 798
    :cond_2
    :goto_1
    return v8

    .line 784
    :cond_3
    iget-boolean v4, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v4, :cond_4

    .line 786
    iget-object v4, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {v4, v10}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 788
    iput-boolean v9, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 789
    const-wide/16 v4, 0x20

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 790
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_1

    .line 793
    :cond_4
    iput-boolean v8, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 794
    iget-object v4, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 796
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v6, v5

    .line 794
    invoke-virtual {v4, v10, v6, v7}, Landroid/media/session/MediaSession$CallbackMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 808
    :sswitch_1
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 809
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 810
    return v8

    .line 814
    :sswitch_2
    const-wide/16 v4, 0x2

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 815
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 816
    return v8

    .line 820
    :sswitch_3
    const-wide/16 v4, 0x20

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 821
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 822
    return v8

    .line 826
    :sswitch_4
    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 827
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 828
    return v8

    .line 832
    :sswitch_5
    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 833
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 834
    return v8

    .line 838
    :sswitch_6
    const-wide/16 v4, 0x40

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 839
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 840
    return v8

    .line 844
    :sswitch_7
    const-wide/16 v4, 0x8

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 845
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 846
    return v8

    .line 778
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch

    .line 806
    :sswitch_data_1
    .sparse-switch
        0x56 -> :sswitch_5
        0x57 -> :sswitch_3
        0x58 -> :sswitch_4
        0x59 -> :sswitch_7
        0x5a -> :sswitch_6
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 960
    return-void
.end method

.method public onPlay()V
    .locals 0

    .prologue
    .line 925
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 941
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 934
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 947
    return-void
.end method

.method public onPrepare()V
    .locals 0

    .prologue
    .line 883
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 895
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 907
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 919
    return-void
.end method

.method public onRewind()V
    .locals 0

    .prologue
    .line 984
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0
    .param p1, "pos"    # J

    .prologue
    .line 998
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 0
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 1006
    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    .prologue
    .line 966
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    .prologue
    .line 972
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 954
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 990
    return-void
.end method
