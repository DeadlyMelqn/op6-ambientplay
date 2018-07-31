.class Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;
.super Ljava/lang/Thread;
.source "AmbientPlayRecognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->tryMatchCurrentBuffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;


# direct methods
.method constructor <init>(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;->this$1:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    .line 118
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 121
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;->this$1:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    invoke-static {v3}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->-get0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    const-string/jumbo v3, "AmbientPlayRecognition"

    const-string/jumbo v4, "Not sending, data already sending"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;->this$1:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->-set0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;Z)Z

    .line 130
    iget-object v4, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;->this$1:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    monitor-enter v4

    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;->this$1:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    iget-object v3, v3, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v3}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "length":I
    monitor-exit v4

    .line 134
    new-array v0, v1, [B

    .line 135
    .local v0, "copy":[B
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;->this$1:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    iget-object v3, v3, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v3}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)[B

    move-result-object v3

    invoke-static {v3, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;->this$1:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    invoke-static {v3, v0, v1}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->-wrap0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;[BI)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "output_xml":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;->this$1:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    invoke-static {v3, v2}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->-wrap1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;->this$1:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    invoke-static {v3, v5}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->-set0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;Z)Z

    .line 140
    return-void

    .line 130
    .end local v0    # "copy":[B
    .end local v1    # "length":I
    .end local v2    # "output_xml":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
