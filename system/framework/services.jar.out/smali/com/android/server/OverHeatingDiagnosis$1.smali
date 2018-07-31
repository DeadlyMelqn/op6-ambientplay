.class Lcom/android/server/OverHeatingDiagnosis$1;
.super Ljava/lang/Thread;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OverHeatingDiagnosis;->writeLogToDropbox(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;

.field final synthetic val$current:J

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;JLandroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    iput-object p3, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    iput p4, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$type:I

    iput-object p5, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$reason:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$current:J

    iput-object p8, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$dbox:Landroid/os/DropBoxManager;

    .line 481
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 485
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/OverHeatingDiagnosis;->convertIssueTypeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Reason: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$reason:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v15, "--------- beginning of CPU usage\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v15}, Lcom/android/server/OverHeatingDiagnosis;->-get23(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v15}, Lcom/android/server/OverHeatingDiagnosis;->-get23(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$current:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v15, "--------- beginning of battery history\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    iget-object v14, v14, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    iget-object v14, v14, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    .line 495
    .local v2, "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 498
    .end local v2    # "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    :cond_0
    const-string/jumbo v13, "logcat_for_overheat"

    .line 499
    .local v13, "setting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v14}, Lcom/android/server/OverHeatingDiagnosis;->-get4(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/16 v15, 0x800

    invoke-static {v14, v13, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 500
    .local v9, "lines":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/high16 v15, 0x40000

    sub-int v14, v15, v14

    .line 501
    mul-int/lit8 v15, v9, 0x64

    .line 500
    sub-int v11, v14, v15

    .line 503
    .local v11, "maxDataFileSize":I
    new-instance v4, Ljava/io/File;

    const-string/jumbo v14, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 505
    .local v4, "dataFile":Ljava/io/File;
    if-eqz v4, :cond_1

    if-lez v11, :cond_1

    .line 507
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v15, "--------- beginning of overheat history\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    .line 509
    const-string/jumbo v15, "\n\n[[TRUNCATED]]"

    .line 508
    invoke-static {v4, v11, v15}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 515
    :cond_1
    :goto_1
    if-lez v9, :cond_2

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const/4 v7, 0x0

    .line 521
    .local v7, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v14, Ljava/lang/ProcessBuilder;

    const/16 v15, 0x11

    new-array v15, v15, [Ljava/lang/String;

    .line 522
    const-string/jumbo v16, "/system/bin/timeout"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const-string/jumbo v16, "-k"

    const/16 v17, 0x1

    aput-object v16, v15, v17

    const-string/jumbo v16, "15s"

    const/16 v17, 0x2

    aput-object v16, v15, v17

    const-string/jumbo v16, "10s"

    const/16 v17, 0x3

    aput-object v16, v15, v17

    .line 523
    const-string/jumbo v16, "/system/bin/logcat"

    const/16 v17, 0x4

    aput-object v16, v15, v17

    const-string/jumbo v16, "-v"

    const/16 v17, 0x5

    aput-object v16, v15, v17

    const-string/jumbo v16, "threadtime"

    const/16 v17, 0x6

    aput-object v16, v15, v17

    const-string/jumbo v16, "-b"

    const/16 v17, 0x7

    aput-object v16, v15, v17

    const-string/jumbo v16, "events"

    const/16 v17, 0x8

    aput-object v16, v15, v17

    const-string/jumbo v16, "-b"

    const/16 v17, 0x9

    aput-object v16, v15, v17

    const-string/jumbo v16, "system"

    const/16 v17, 0xa

    aput-object v16, v15, v17

    .line 524
    const-string/jumbo v16, "-b"

    const/16 v17, 0xb

    aput-object v16, v15, v17

    const-string/jumbo v16, "main"

    const/16 v17, 0xc

    aput-object v16, v15, v17

    const-string/jumbo v16, "-b"

    const/16 v17, 0xd

    aput-object v16, v15, v17

    const-string/jumbo v16, "crash"

    const/16 v17, 0xe

    aput-object v16, v15, v17

    const-string/jumbo v16, "-t"

    const/16 v17, 0xf

    aput-object v16, v15, v17

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x10

    aput-object v16, v15, v17

    .line 521
    invoke-direct {v14, v15}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 525
    const/4 v15, 0x1

    .line 521
    invoke-virtual {v14, v15}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 527
    .local v10, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    :goto_2
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 529
    :goto_3
    :try_start_4
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 532
    .end local v7    # "input":Ljava/io/InputStreamReader;
    .local v8, "input":Ljava/io/InputStreamReader;
    const/16 v14, 0x2000

    :try_start_5
    new-array v3, v14, [C

    .line 533
    .local v3, "buf":[C
    :goto_4
    invoke-virtual {v8, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v12

    .local v12, "num":I
    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v3, v15, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 534
    .end local v3    # "buf":[C
    .end local v12    # "num":I
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move-object v7, v8

    .line 535
    .end local v8    # "input":Ljava/io/InputStreamReader;
    .end local v10    # "logcat":Ljava/lang/Process;
    :goto_5
    :try_start_6
    const-string/jumbo v14, "OverHeatingDiagnosis"

    const-string/jumbo v15, "Error running logcat"

    invoke-static {v14, v15, v5}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 537
    if-eqz v7, :cond_2

    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 541
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$dbox:Landroid/os/DropBoxManager;

    const-string/jumbo v15, "overheat"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-void

    .line 510
    :catch_1
    move-exception v5

    .line 511
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v14, "OverHeatingDiagnosis"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error reading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 537
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "buf":[C
    .restart local v8    # "input":Ljava/io/InputStreamReader;
    .restart local v10    # "logcat":Ljava/lang/Process;
    .restart local v12    # "num":I
    :cond_3
    if-eqz v8, :cond_2

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_6

    .end local v3    # "buf":[C
    .end local v8    # "input":Ljava/io/InputStreamReader;
    .end local v10    # "logcat":Ljava/lang/Process;
    .end local v12    # "num":I
    :catch_3
    move-exception v5

    goto :goto_6

    .line 536
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 537
    :goto_7
    if-eqz v7, :cond_4

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 536
    :cond_4
    :goto_8
    throw v14

    .line 537
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 536
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v8    # "input":Ljava/io/InputStreamReader;
    .restart local v10    # "logcat":Ljava/lang/Process;
    :catchall_1
    move-exception v14

    move-object v7, v8

    .end local v8    # "input":Ljava/io/InputStreamReader;
    .local v7, "input":Ljava/io/InputStreamReader;
    goto :goto_7

    .line 534
    .end local v10    # "logcat":Ljava/lang/Process;
    .local v7, "input":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 528
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v10    # "logcat":Ljava/lang/Process;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 527
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_2
.end method
