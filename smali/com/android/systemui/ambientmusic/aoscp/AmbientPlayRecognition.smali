.class public Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;
.super Ljava/lang/Object;
.source "AmbientPlayRecognition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;,
        Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;,
        Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;
    }
.end annotation


# instance fields
.field private mBuffer:[B

.field private mBufferIndex:I

.field private mCallback:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;

.field private mRecThread:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

.field private mRecorder:Landroid/media/AudioRecord;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)[B
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mBuffer:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    .prologue
    iget v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mBufferIndex:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mCallback:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mBufferIndex:I

    return p1
.end method

.method public constructor <init>(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mCallback:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;

    .line 286
    const v0, 0x6baa8

    .line 287
    .local v0, "bufferSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mBuffer:[B

    .line 288
    return-void
.end method


# virtual methods
.method public startRecording()V
    .locals 7

    .prologue
    const/16 v2, 0x2b11

    const/16 v3, 0x10

    const/4 v4, 0x2

    .line 295
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 298
    .local v5, "minBufSize":I
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecorder:Landroid/media/AudioRecord;

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mBufferIndex:I

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 306
    new-instance v0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;-><init>(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;)V

    iput-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecThread:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    .line 307
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecThread:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    invoke-virtual {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v6

    .line 309
    .local v6, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "AmbientPlayRecognition"

    const-string/jumbo v1, "Cannot start recording for recognition"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mCallback:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;

    invoke-interface {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;->onError()V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecThread:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecThread:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    invoke-virtual {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string/jumbo v0, "AmbientPlayRecognition"

    const-string/jumbo v1, "Interrupting recorder thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecThread:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    invoke-virtual {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->interrupt()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 325
    const-string/jumbo v0, "AmbientPlayRecognition"

    const-string/jumbo v1, "Stopping recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 327
    iput-object v2, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->mRecorder:Landroid/media/AudioRecord;

    .line 329
    :cond_1
    return-void
.end method
