.class final Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerEvent"
.end annotation


# instance fields
.field final mPlayerIId:I

.field final mState:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "piid"    # I
    .param p2, "state"    # I

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 769
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mPlayerIId:I

    .line 770
    iput p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mState:I

    .line 771
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "player piid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mPlayerIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 776
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerEvent;->mState:I

    invoke-static {v1}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerState(I)Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
