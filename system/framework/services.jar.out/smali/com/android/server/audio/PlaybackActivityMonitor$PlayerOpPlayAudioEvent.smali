.class final Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerOpPlayAudioEvent"
.end annotation


# instance fields
.field final mHasOp:Z

.field final mPlayerIId:I

.field final mUid:I


# direct methods
.method constructor <init>(IZI)V
    .locals 0
    .param p1, "piid"    # I
    .param p2, "hasOp"    # Z
    .param p3, "uid"    # I

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 787
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mPlayerIId:I

    .line 788
    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mHasOp:Z

    .line 789
    iput p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mUid:I

    .line 790
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "player piid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mPlayerIId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 795
    const-string/jumbo v1, " has OP_PLAY_AUDIO:"

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 795
    iget-boolean v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mHasOp:Z

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    const-string/jumbo v1, " in uid:"

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerOpPlayAudioEvent;->mUid:I

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
