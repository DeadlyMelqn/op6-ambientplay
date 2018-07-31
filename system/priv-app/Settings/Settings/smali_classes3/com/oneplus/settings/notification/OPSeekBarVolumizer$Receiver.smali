.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p2, "-this1"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;-><init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    return-void
.end method

.method private updateVolumeSlider(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "streamValue"    # I

    .prologue
    .line 526
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get7(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-wrap0(I)Z

    move-result v1

    .line 528
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get8(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 529
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get9(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 530
    if-nez p2, :cond_4

    const/4 v0, 0x1

    .line 531
    .local v0, "muted":Z
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get10(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get4(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 533
    .end local v0    # "muted":Z
    :cond_0
    return-void

    .line 527
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get9(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v2

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .local v1, "streamMatch":Z
    goto :goto_0

    .end local v1    # "streamMatch":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "streamMatch":Z
    goto :goto_0

    .line 529
    .end local v1    # "streamMatch":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "muted":Z
    goto :goto_1

    .line 530
    .end local v0    # "muted":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "muted":Z
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x3

    const/4 v7, -0x1

    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 471
    const-string/jumbo v6, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 472
    .local v2, "streamType":I
    const-string/jumbo v6, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 474
    .local v3, "streamValue":I
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get9(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v6

    if-ne v6, v9, :cond_0

    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 475
    return-void

    .line 478
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    .line 523
    .end local v2    # "streamType":I
    .end local v3    # "streamValue":I
    :cond_1
    :goto_0
    return-void

    .line 479
    :cond_2
    const-string/jumbo v6, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 480
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get7(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 481
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    invoke-static {v6, v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-set3(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 485
    :cond_3
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get0(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 487
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-wrap1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto :goto_0

    .line 489
    :cond_4
    const-string/jumbo v6, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 490
    const-string/jumbo v6, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 491
    .restart local v2    # "streamType":I
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 493
    .local v4, "streamVolume":I
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get9(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get9(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v6

    if-ne v6, v9, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    .line 494
    return-void

    .line 498
    :cond_6
    invoke-static {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-wrap0(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 499
    return-void

    .line 503
    :cond_7
    invoke-direct {p0, v2, v4}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    goto/16 :goto_0

    .line 504
    .end local v2    # "streamType":I
    .end local v4    # "streamVolume":I
    :cond_8
    const-string/jumbo v6, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 505
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get6(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v7

    invoke-static {v6, v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-set4(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;I)I

    .line 506
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-wrap1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    goto/16 :goto_0

    .line 510
    :cond_9
    const-string/jumbo v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 511
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get8(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 512
    const-string/jumbo v6, "OPSeekBarVolumizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VOLUME_CHANGED_ACTION mStreamType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v8}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get9(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get9(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 514
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get9(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 515
    .local v5, "volume":I
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get9(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 516
    .local v1, "mute":Z
    const/4 v1, 0x0

    .line 517
    .local v1, "mute":Z
    const-string/jumbo v6, "OPSeekBarVolumizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "volume = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v6}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get10(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v7}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get4(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)I

    move-result v7

    invoke-virtual {v6, v5, v7, v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    goto/16 :goto_0
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 450
    iget-boolean v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 451
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->mListening:Z

    .line 452
    if-eqz p1, :cond_1

    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get3(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 465
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Receiver;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-get3(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
