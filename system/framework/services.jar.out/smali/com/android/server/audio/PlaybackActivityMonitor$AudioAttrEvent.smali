.class final Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioAttrEvent"
.end annotation


# instance fields
.field private final mPlayerAttr:Landroid/media/AudioAttributes;

.field private final mPlayerIId:I


# direct methods
.method constructor <init>(ILandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "piid"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 850
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerIId:I

    .line 851
    iput-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 852
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 856
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "player piid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerIId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " new AudioAttributes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$AudioAttrEvent;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
