.class Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;
.super Ljava/lang/Thread;
.source "GlobalScreenrecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenrecord/GlobalScreenrecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureThread"
.end annotation


# instance fields
.field private mMode:I

.field final synthetic this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;


# direct methods
.method private constructor <init>(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/screenrecord/GlobalScreenrecord;Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;
    .param p2, "-this1"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;-><init>(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    .line 119
    .local v11, "rt":Ljava/lang/Runtime;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v12}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get1(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 120
    const-string/jumbo v13, "screen_record_quality"

    const/4 v14, 0x0

    const/4 v15, -0x2

    .line 119
    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 122
    .local v10, "qualitySetting":I
    const/4 v12, 0x6

    new-array v3, v12, [Ljava/lang/String;

    .line 123
    .local v3, "cmds":[Ljava/lang/String;
    const-string/jumbo v12, "/system/bin/screenrecord"

    const/4 v13, 0x0

    aput-object v12, v3, v13

    .line 124
    invoke-static {}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get0()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v3, v13

    .line 125
    packed-switch v10, :pswitch_data_0

    .line 153
    :goto_0
    :try_start_0
    invoke-virtual {v11, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 154
    .local v9, "proc":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 156
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->isInterrupted()Z

    move-result v12

    if-nez v12, :cond_1

    .line 157
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 158
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "log":Ljava/lang/String;
    const-string/jumbo v12, "GlobalScreenrecord"

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v7    # "log":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Process;->exitValue()I

    move-result v4

    .line 167
    .local v4, "code":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v13}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get4(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {v12, v14, v15}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-set2(Lcom/android/systemui/screenrecord/GlobalScreenrecord;J)J

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v12}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get3(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v13, v4, v14, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 169
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v12}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get3(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    return-void

    .line 127
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "code":I
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "proc":Ljava/lang/Process;
    :pswitch_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->mMode:I

    .line 129
    const-string/jumbo v12, "--size"

    const/4 v13, 0x2

    aput-object v12, v3, v13

    .line 130
    const-string/jumbo v12, "480x800"

    const/4 v13, 0x3

    aput-object v12, v3, v13

    .line 131
    const-string/jumbo v12, "--bit-rate"

    const/4 v13, 0x4

    aput-object v12, v3, v13

    .line 132
    const-string/jumbo v12, "1500000"

    const/4 v13, 0x5

    aput-object v12, v3, v13

    goto :goto_0

    .line 135
    :pswitch_1
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->mMode:I

    .line 137
    const-string/jumbo v12, "--size"

    const/4 v13, 0x2

    aput-object v12, v3, v13

    .line 138
    const-string/jumbo v12, "720x1280"

    const/4 v13, 0x3

    aput-object v12, v3, v13

    .line 139
    const-string/jumbo v12, "--bit-rate"

    const/4 v13, 0x4

    aput-object v12, v3, v13

    .line 140
    const-string/jumbo v12, "4000000"

    const/4 v13, 0x5

    aput-object v12, v3, v13

    goto/16 :goto_0

    .line 143
    :pswitch_2
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->mMode:I

    .line 145
    const-string/jumbo v12, "--size"

    const/4 v13, 0x2

    aput-object v12, v3, v13

    .line 146
    const-string/jumbo v12, "720x1280"

    const/4 v13, 0x3

    aput-object v12, v3, v13

    .line 147
    const-string/jumbo v12, "--bit-rate"

    const/4 v13, 0x4

    aput-object v12, v3, v13

    .line 148
    const-string/jumbo v12, "8000000"

    const/4 v13, 0x5

    aput-object v12, v3, v13

    goto/16 :goto_0

    .line 180
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "proc":Ljava/lang/Process;
    :cond_1
    const/4 v12, 0x3

    :try_start_2
    new-array v12, v12, [Ljava/lang/String;

    const-string/jumbo v13, "killall"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string/jumbo v13, "-2"

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const-string/jumbo v13, "screenrecord"

    const/4 v14, 0x2

    aput-object v13, v12, v14

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v13}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get4(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {v12, v14, v15}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-set2(Lcom/android/systemui/screenrecord/GlobalScreenrecord;J)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 190
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "proc":Ljava/lang/Process;
    :goto_2
    return-void

    .line 182
    :catch_0
    move-exception v5

    .line 184
    .local v5, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v12}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get3(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 185
    .restart local v8    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v12}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get3(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    const-string/jumbo v12, "GlobalScreenrecord"

    const-string/jumbo v13, "Error while starting the screenrecord process"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 173
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "msg":Landroid/os/Message;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "proc":Ljava/lang/Process;
    :catch_1
    move-exception v6

    .local v6, "ignore":Ljava/lang/IllegalThreadStateException;
    goto/16 :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;->mMode:I

    .line 115
    return-void
.end method
