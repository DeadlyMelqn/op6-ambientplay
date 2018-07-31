.class Lcom/android/server/audio/AudioService$playSilentBufferThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "playSilentBufferThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/server/audio/AudioService$playSilentBufferThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x3e80

    const/16 v2, 0x1f40

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 928
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v6, "playSilentBufferToInitPA"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v1, p0, Lcom/android/server/audio/AudioService$playSilentBufferThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isASBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$playSilentBufferThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    :cond_0
    return-void

    .line 932
    :cond_1
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 933
    .local v5, "bufferSize":I
    if-gez v5, :cond_2

    .line 934
    return-void

    .line 936
    :cond_2
    new-array v7, v10, [B

    .line 937
    .local v7, "audioData":[B
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    .line 938
    const/4 v6, 0x1

    .line 937
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 939
    .local v0, "mAudioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 940
    invoke-virtual {v0, v7, v9, v10}, Landroid/media/AudioTrack;->write([BII)I

    .line 942
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x4b0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 947
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 948
    return-void

    .line 943
    :catch_0
    move-exception v8

    .line 944
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "AudioService"

    const-string/jumbo v2, "Interrupted while waiting on playback compelete"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
