.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3237
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 3238
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3239
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3240
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_0

    .line 3245
    const-string/jumbo v26, "MediaPlayer"

    const-string/jumbo v27, "mediaplayer went away with unhandled events"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    return-void

    .line 3248
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 3453
    const-string/jumbo v26, "MediaPlayer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unknown message type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    return-void

    .line 3251
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-wrap2(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3261
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v17

    .line 3262
    .local v17, "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    if-eqz v17, :cond_1

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 3264
    :cond_1
    return-void

    .line 3252
    .end local v17    # "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    :catch_0
    move-exception v9

    .line 3257
    .local v9, "e":Ljava/lang/RuntimeException;
    const/16 v26, 0x64

    const/16 v27, 0x1

    const/16 v28, -0x3f2

    const/16 v29, 0x0

    .line 3256
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3258
    .local v11, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3267
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "msg2":Landroid/os/Message;
    :sswitch_1
    const-string/jumbo v26, "MediaPlayer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MEDIA_DRM_INFO "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-nez v26, :cond_3

    .line 3270
    const-string/jumbo v26, "MediaPlayer"

    const-string/jumbo v27, "MEDIA_DRM_INFO msg.obj=NULL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_2
    :goto_1
    return-void

    .line 3271
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 3273
    const/4 v8, 0x0

    .line 3276
    .local v8, "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 3277
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    move-result-object v26

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v26

    if-eqz v26, :cond_4

    .line 3278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get0(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer$DrmInfo;->-wrap0(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;

    move-result-object v8

    .line 3281
    .end local v8    # "drmInfo":Landroid/media/MediaPlayer$DrmInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .local v14, "onDrmInfoHandlerDelegate":Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    monitor-exit v27

    .line 3285
    if-eqz v14, :cond_2

    .line 3286
    invoke-virtual {v14, v8}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->notifyClient(Landroid/media/MediaPlayer$DrmInfo;)V

    goto :goto_1

    .line 3276
    .end local v14    # "onDrmInfoHandlerDelegate":Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;
    :catchall_0
    move-exception v26

    monitor-exit v27

    throw v26

    .line 3289
    :cond_5
    const-string/jumbo v26, "MediaPlayer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3295
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v13

    .line 3297
    .local v13, "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v13, :cond_6

    .line 3298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3300
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/media/MediaPlayer;->-wrap4(Landroid/media/MediaPlayer;Z)V

    .line 3301
    return-void

    .line 3305
    .end local v13    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get21(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3306
    .local v25, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_7

    .line 3307
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    .line 3456
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_7
    :goto_2
    :sswitch_4
    return-void

    .line 3315
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get21(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3316
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_7

    .line 3317
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    const/16 v27, 0x7

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    const/16 v26, 0x1

    :goto_3
    invoke-virtual/range {v25 .. v26}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    goto :goto_2

    :cond_8
    const/16 v26, 0x0

    goto :goto_3

    .line 3323
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v12

    .line 3324
    .local v12, "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    if-eqz v12, :cond_9

    .line 3325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 3326
    :cond_9
    return-void

    .line 3329
    .end local v12    # "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v18

    .line 3330
    .local v18, "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    if-eqz v18, :cond_a

    .line 3331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 3337
    .end local v18    # "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    :cond_a
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get21(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3338
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_b

    .line 3339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 3342
    :cond_b
    return-void

    .line 3345
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get18(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v22

    .line 3346
    .local v22, "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    if-eqz v22, :cond_c

    .line 3348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    .line 3347
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 3350
    :cond_c
    return-void

    .line 3353
    .end local v22    # "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    :sswitch_a
    const-string/jumbo v26, "MediaPlayer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Error ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    const/4 v10, 0x0

    .line 3355
    .local v10, "error_was_handled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v15

    .line 3356
    .local v15, "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    if-eqz v15, :cond_d

    .line 3357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v15, v0, v1, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v10

    .line 3360
    .end local v10    # "error_was_handled":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v13

    .line 3362
    .restart local v13    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v13, :cond_e

    xor-int/lit8 v26, v10, 0x1

    if-eqz v26, :cond_e

    .line 3363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3366
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/media/MediaPlayer;->-wrap4(Landroid/media/MediaPlayer;Z)V

    .line 3367
    return-void

    .line 3370
    .end local v13    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    .end local v15    # "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_1

    .line 3400
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v16

    .line 3401
    .local v16, "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    if-eqz v16, :cond_10

    .line 3402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 3405
    :cond_10
    return-void

    .line 3372
    .end local v16    # "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    :sswitch_c
    const-string/jumbo v26, "MediaPlayer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Info ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3376
    :sswitch_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-wrap2(Landroid/media/MediaPlayer;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3385
    :goto_5
    :sswitch_e
    const/16 v26, 0x322

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v26

    if-eqz v26, :cond_f

    .line 3388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto/16 :goto_4

    .line 3377
    :catch_1
    move-exception v9

    .line 3379
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    const/16 v26, 0x64

    const/16 v27, 0x1

    const/16 v28, -0x3f2

    const/16 v29, 0x0

    .line 3378
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3380
    .restart local v11    # "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 3393
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "msg2":Landroid/os/Message;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get21(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3394
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_f

    .line 3395
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v27, 0x2bd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    const/16 v26, 0x1

    :goto_6
    invoke-virtual/range {v25 .. v26}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto/16 :goto_4

    :cond_11
    const/16 v26, 0x0

    goto :goto_6

    .line 3407
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get17(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v21

    .line 3408
    .local v21, "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    if-nez v21, :cond_12

    .line 3409
    return-void

    .line 3410
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-nez v26, :cond_14

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 3420
    :cond_13
    :goto_7
    return-void

    .line 3413
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 3414
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 3415
    .local v23, "parcel":Landroid/os/Parcel;
    new-instance v24, Landroid/media/TimedText;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 3416
    .local v24, "text":Landroid/media/TimedText;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 3417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto :goto_7

    .line 3423
    .end local v21    # "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    .end local v23    # "parcel":Landroid/os/Parcel;
    .end local v24    # "text":Landroid/media/TimedText;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v19

    .line 3424
    .local v19, "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    if-nez v19, :cond_15

    .line 3425
    return-void

    .line 3427
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v26, v0

    if-eqz v26, :cond_16

    .line 3428
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 3429
    .restart local v23    # "parcel":Landroid/os/Parcel;
    new-instance v6, Landroid/media/SubtitleData;

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3430
    .local v6, "data":Landroid/media/SubtitleData;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 3431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v6}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    .line 3433
    .end local v6    # "data":Landroid/media/SubtitleData;
    .end local v23    # "parcel":Landroid/os/Parcel;
    :cond_16
    return-void

    .line 3437
    .end local v19    # "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v20

    .line 3438
    .local v20, "onTimedMetaDataAvailableListener":Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    if-nez v20, :cond_17

    .line 3439
    return-void

    .line 3441
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v26, v0

    if-eqz v26, :cond_18

    .line 3442
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 3443
    .restart local v23    # "parcel":Landroid/os/Parcel;
    invoke-static/range {v23 .. v23}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v7

    .line 3444
    .local v7, "data":Landroid/media/TimedMetaData;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 3445
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v7}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    .line 3447
    .end local v7    # "data":Landroid/media/TimedMetaData;
    .end local v23    # "parcel":Landroid/os/Parcel;
    :cond_18
    return-void

    .line 3248
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_9
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_3
        0x9 -> :sswitch_8
        0x63 -> :sswitch_10
        0x64 -> :sswitch_a
        0xc8 -> :sswitch_b
        0xc9 -> :sswitch_11
        0xca -> :sswitch_12
        0xd2 -> :sswitch_1
    .end sparse-switch

    .line 3370
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_c
        0x2bd -> :sswitch_f
        0x2be -> :sswitch_f
        0x322 -> :sswitch_d
        0x323 -> :sswitch_e
    .end sparse-switch
.end method
