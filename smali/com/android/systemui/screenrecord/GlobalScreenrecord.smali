.class Lcom/android/systemui/screenrecord/GlobalScreenrecord;
.super Ljava/lang/Object;
.source "GlobalScreenrecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;,
        Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteScreenrecordReceiver;,
        Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteVideoInBackgroundTask;,
        Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;,
        Lcom/android/systemui/screenrecord/GlobalScreenrecord$ShareReceiver;,
        Lcom/android/systemui/screenrecord/GlobalScreenrecord$TargetChosenReceiver;
    }
.end annotation


# static fields
.field private static final TMP_PATH:Ljava/lang/String;


# instance fields
.field private mCaptureThread:Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

.field private mContext:Landroid/content/Context;

.field private mFileSize:J

.field private mFinisher:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mNotifContent:Ljava/lang/String;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRecordingStartTime:J

.field private mRecordingTotalTime:J

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->TMP_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mFinisher:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    .prologue
    iget-wide v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenrecord/GlobalScreenrecord;Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;)Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;
    .param p1, "-value"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mCaptureThread:Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/screenrecord/GlobalScreenrecord;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mFileSize:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/systemui/screenrecord/GlobalScreenrecord;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mRecordingTotalTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    invoke-static {p0, p1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/screenrecord/GlobalScreenrecord;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->showFinalNotification(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "__tmp_screenrecord.mp4"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->TMP_PATH:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mNotifContent:Ljava/lang/String;

    .line 102
    iput-wide v2, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mRecordingStartTime:J

    .line 103
    iput-wide v2, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mRecordingTotalTime:J

    .line 104
    iput-wide v2, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mFileSize:J

    .line 198
    iput-object p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    .line 199
    new-instance v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$1;-><init>(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mHandler:Landroid/os/Handler;

    .line 213
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 212
    iput-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mNotificationManager:Landroid/app/NotificationManager;

    .line 215
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 214
    iput-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mWindowManager:Landroid/view/WindowManager;

    .line 216
    return-void
.end method

.method private static copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p0, "source"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 382
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 383
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 384
    .local v5, "os":Ljava/io/OutputStream;
    const/16 v6, 0x400

    :try_start_2
    new-array v0, v6, [B

    .line 386
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    if-lez v3, :cond_2

    .line 387
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 389
    .end local v0    # "buffer":[B
    .end local v3    # "length":I
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .local v4, "os":Ljava/io/OutputStream;
    move-object v1, v2

    .line 390
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/OutputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 393
    :cond_0
    if-eqz v4, :cond_1

    .line 394
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 389
    :cond_1
    throw v6

    .line 390
    .restart local v0    # "buffer":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "length":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    :cond_2
    if-eqz v2, :cond_3

    .line 391
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 393
    :cond_3
    if-eqz v5, :cond_4

    .line 394
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 397
    :cond_4
    return-void

    .line 389
    .end local v0    # "buffer":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "length":I
    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .local v4, "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private setFinisher(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "finisher"    # Ljava/lang/Runnable;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mFinisher:Ljava/lang/Runnable;

    .line 108
    return-void
.end method

.method private showFinalNotification(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 400
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v15, 0x2a

    invoke-virtual {v14, v15}, Landroid/app/NotificationManager;->cancel(I)V

    .line 404
    const-string/jumbo v14, "Screenrecord (%s)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p2, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 405
    .local v12, "subject":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v14, "android.intent.action.SEND"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v9, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v14, "video/mp4"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string/jumbo v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v9, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    const-string/jumbo v14, "android.intent.extra.SUBJECT"

    invoke-virtual {v9, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    .line 411
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-class v17, Lcom/android/systemui/screenrecord/GlobalScreenrecord$ShareReceiver;

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 412
    const-string/jumbo v16, "android:screenrecord_sharing_intent"

    .line 411
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    .line 410
    const/16 v16, 0x0

    .line 413
    const/high16 v17, 0x10000000

    .line 410
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v15, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 416
    .local v8, "shareAction":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    .line 417
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-class v17, Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteScreenrecordReceiver;

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    const-string/jumbo v16, "android:screenrecord_uri_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    .line 417
    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 416
    const/16 v16, 0x0

    .line 419
    const/high16 v17, 0x50000000

    .line 416
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v0, v15, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 421
    .local v5, "deleteAction":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 423
    .local v7, "r":Landroid/content/res/Resources;
    const-string/jumbo v14, "%02d:%02dm"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    .line 424
    sget-object v16, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mRecordingTotalTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 425
    sget-object v16, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mRecordingTotalTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v16

    .line 426
    sget-object v18, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mRecordingTotalTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v18

    .line 425
    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    .line 423
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 428
    .local v13, "totalTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mFileSize:J

    const-wide/32 v16, 0xf4240

    div-long v10, v14, v16

    .line 430
    .local v10, "size":J
    new-instance v14, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    sget-object v16, Lcom/android/systemui/util/NotificationChannels;->SCREENRECORDS:Ljava/lang/String;

    invoke-direct/range {v14 .. v16}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 431
    const v15, 0x7f11043d

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 430
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 432
    const v15, 0x7f11043a

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 430
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 433
    const v15, 0x7f11043b

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 430
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 434
    const v15, 0x7f080095

    .line 430
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 430
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 436
    const/4 v15, 0x1

    .line 430
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 437
    const/4 v15, 0x1

    .line 430
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 438
    const v15, 0x106015b

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 430
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 439
    .local v4, "builder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    invoke-static {v14, v4}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 442
    const v14, 0x1040589

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 441
    const v15, 0x7f0801d1

    .line 440
    invoke-virtual {v4, v15, v14, v8}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 444
    const v15, 0x1040194

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 443
    const v16, 0x7f0801d0

    .line 440
    move/from16 v0, v16

    invoke-virtual {v14, v0, v15, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 445
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 446
    .local v6, "notif":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v15, 0x2a

    invoke-virtual {v14, v15, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    .line 449
    return-void
.end method


# virtual methods
.method public isRecording()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mCaptureThread:Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stopScreenrecord()V
    .locals 6

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mCaptureThread:Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    if-nez v1, :cond_0

    .line 284
    const-string/jumbo v1, "GlobalScreenrecord"

    const-string/jumbo v2, "No capture thread, cannot stop screen recording!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 286
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mCaptureThread:Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mCaptureThread:Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;-><init>(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)V

    .line 343
    const-wide/16 v4, 0x7d0

    .line 301
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    return-void

    .line 293
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method takeScreenrecord(Ljava/lang/Runnable;I)V
    .locals 2
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mCaptureThread:Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    if-eqz v0, :cond_0

    .line 227
    const-string/jumbo v0, "GlobalScreenrecord"

    const-string/jumbo v1, "Capture Thread is already running, ignoring screenrecord start request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 231
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->setFinisher(Ljava/lang/Runnable;)V

    .line 232
    new-instance v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;-><init>(Lcom/android/systemui/screenrecord/GlobalScreenrecord;Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;)V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mCaptureThread:Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    .line 233
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mCaptureThread:Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    invoke-virtual {v0, p2}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->setMode(I)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mCaptureThread:Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->start()V

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->updateNotification()V

    .line 237
    return-void
.end method

.method public updateNotification()V
    .locals 14

    .prologue
    .line 240
    iget-object v10, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 241
    .local v4, "r":Landroid/content/res/Resources;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/android/systemui/util/NotificationChannels;->SCREENRECORDS:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    const v11, 0x7f110441

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 241
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 243
    const v11, 0x7f110442

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 241
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 244
    const v11, 0x7f080095

    .line 241
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 241
    invoke-virtual {v10, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 246
    const/4 v11, 0x1

    .line 241
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 247
    const/4 v11, 0x1

    .line 241
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 248
    const v11, 0x106015b

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 241
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 249
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v10, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 251
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    const-class v12, Lcom/android/systemui/screenrecord/TakeScreenrecordService;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    const-string/jumbo v11, "stop"

    .line 251
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 253
    .local v6, "stopIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    .line 254
    const/high16 v12, 0x8000000

    .line 253
    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 256
    .local v7, "stopPendIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    const-class v12, Lcom/android/systemui/screenrecord/TakeScreenrecordService;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    const-string/jumbo v11, "toggle_pointer"

    .line 256
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 258
    .local v2, "pointerIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    .line 259
    const/high16 v12, 0x8000000

    .line 258
    invoke-static {v10, v11, v2, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 261
    .local v3, "pointerPendIntent":Landroid/app/PendingIntent;
    iget-object v10, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 262
    const-string/jumbo v11, "show_touches"

    const/4 v12, 0x0

    const/4 v13, -0x2

    .line 261
    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    .line 263
    .local v5, "showTouches":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 264
    const v8, 0x7f08017e

    .line 266
    .local v8, "togglePointerIconId":I
    :goto_1
    if-eqz v5, :cond_2

    .line 267
    const v9, 0x7f11043e

    .line 271
    .local v9, "togglePointerStringId":I
    :goto_2
    const v10, 0x7f110440

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 270
    const v11, 0x108044e

    .line 269
    invoke-virtual {v0, v11, v10, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 273
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 269
    invoke-virtual {v10, v8, v11, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 275
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 276
    .local v1, "notif":Landroid/app/Notification;
    iget-object v10, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v11, 0x2a

    invoke-virtual {v10, v11, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 277
    return-void

    .line 261
    .end local v1    # "notif":Landroid/app/Notification;
    .end local v5    # "showTouches":Z
    .end local v8    # "togglePointerIconId":I
    .end local v9    # "togglePointerStringId":I
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "showTouches":Z
    goto :goto_0

    .line 265
    :cond_1
    const v8, 0x7f08017f

    .restart local v8    # "togglePointerIconId":I
    goto :goto_1

    .line 268
    :cond_2
    const v9, 0x7f11043f

    .restart local v9    # "togglePointerStringId":I
    goto :goto_2
.end method
