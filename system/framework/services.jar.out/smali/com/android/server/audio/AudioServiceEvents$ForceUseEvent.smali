.class final Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioServiceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioServiceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForceUseEvent"
.end annotation


# instance fields
.field final mConfig:I

.field final mReason:Ljava/lang/String;

.field final mUsage:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "usage"    # I
    .param p2, "config"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    .line 77
    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;->mUsage:I

    .line 78
    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;->mConfig:I

    .line 79
    iput-object p3, p0, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;->mReason:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setForceUse("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;->mUsage:I

    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string/jumbo v1, ", "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;->mConfig:I

    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, ") due to "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;->mReason:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method