.class Lcom/android/server/am/ActivityManagerService$28;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$28;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$28;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$28;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$28;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$28;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$28;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$28;->val$dbox:Landroid/os/DropBoxManager;

    .line 16582
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 16585
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$report:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 16586
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$sb:Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$28;->val$report:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16591
    :cond_0
    const/4 v5, 0x0

    .line 16593
    .local v5, "lines":I
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "logcat_for_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$28;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 16594
    .local v9, "setting":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 16600
    .end local v9    # "setting":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/high16 v11, 0x30000

    sub-int v10, v11, v10

    .line 16601
    mul-int/lit8 v11, v5, 0x64

    .line 16600
    sub-int v7, v10, v11

    .line 16603
    .local v7, "maxDataFileSize":I
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$dataFile:Ljava/io/File;

    if-eqz v10, :cond_1

    if-lez v7, :cond_1

    .line 16605
    :try_start_1
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$sb:Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$28;->val$dataFile:Ljava/io/File;

    .line 16606
    const-string/jumbo v12, "\n\n[[TRUNCATED]]"

    .line 16605
    invoke-static {v11, v7, v12}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 16611
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 16612
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$sb:Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$28;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v11, v11, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16615
    :cond_2
    if-lez v5, :cond_3

    .line 16616
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16619
    const/4 v3, 0x0

    .line 16621
    .local v3, "input":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v10, Ljava/lang/ProcessBuilder;

    const/16 v11, 0x11

    new-array v11, v11, [Ljava/lang/String;

    .line 16622
    const-string/jumbo v12, "/system/bin/timeout"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "-k"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "15s"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string/jumbo v12, "10s"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    .line 16623
    const-string/jumbo v12, "/system/bin/logcat"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string/jumbo v12, "-v"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string/jumbo v12, "threadtime"

    const/4 v13, 0x6

    aput-object v12, v11, v13

    const-string/jumbo v12, "-b"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const-string/jumbo v12, "events"

    const/16 v13, 0x8

    aput-object v12, v11, v13

    const-string/jumbo v12, "-b"

    const/16 v13, 0x9

    aput-object v12, v11, v13

    const-string/jumbo v12, "system"

    const/16 v13, 0xa

    aput-object v12, v11, v13

    .line 16624
    const-string/jumbo v12, "-b"

    const/16 v13, 0xb

    aput-object v12, v11, v13

    const-string/jumbo v12, "main"

    const/16 v13, 0xc

    aput-object v12, v11, v13

    const-string/jumbo v12, "-b"

    const/16 v13, 0xd

    aput-object v12, v11, v13

    const-string/jumbo v12, "crash"

    const/16 v13, 0xe

    aput-object v12, v11, v13

    const-string/jumbo v12, "-t"

    const/16 v13, 0xf

    aput-object v12, v11, v13

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x10

    aput-object v12, v11, v13

    .line 16621
    invoke-direct {v10, v11}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 16625
    const/4 v11, 0x1

    .line 16621
    invoke-virtual {v10, v11}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 16627
    .local v6, "logcat":Ljava/lang/Process;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16628
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16629
    :goto_3
    :try_start_5
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16632
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v4, "input":Ljava/io/InputStreamReader;
    const/16 v10, 0x2000

    :try_start_6
    new-array v0, v10, [C

    .line 16633
    .local v0, "buf":[C
    :goto_4
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    .local v8, "num":I
    if-lez v8, :cond_4

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$sb:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 16634
    .end local v0    # "buf":[C
    .end local v8    # "num":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 16635
    .end local v4    # "input":Ljava/io/InputStreamReader;
    .end local v6    # "logcat":Ljava/lang/Process;
    :goto_5
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Error running logcat"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 16637
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 16641
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$28;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$28;->val$dropboxTag:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$28;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 16642
    return-void

    .line 16595
    .end local v7    # "maxDataFileSize":I
    :catch_1
    move-exception v2

    .line 16596
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 16607
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "maxDataFileSize":I
    :catch_2
    move-exception v1

    .line 16608
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error reading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$28;->val$dataFile:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 16637
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[C
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v6    # "logcat":Ljava/lang/Process;
    .restart local v8    # "num":I
    :cond_4
    if-eqz v4, :cond_3

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_6

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .end local v0    # "buf":[C
    .end local v4    # "input":Ljava/io/InputStreamReader;
    .end local v6    # "logcat":Ljava/lang/Process;
    .end local v8    # "num":I
    :catch_4
    move-exception v1

    goto :goto_6

    .line 16636
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 16637
    :goto_7
    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 16636
    :cond_5
    :goto_8
    throw v10

    .line 16637
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 16636
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v6    # "logcat":Ljava/lang/Process;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    goto :goto_7

    .line 16634
    .end local v6    # "logcat":Ljava/lang/Process;
    .local v3, "input":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 16628
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "logcat":Ljava/lang/Process;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 16627
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_2
.end method
