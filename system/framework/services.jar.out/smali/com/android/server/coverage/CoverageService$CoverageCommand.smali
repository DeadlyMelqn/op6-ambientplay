.class Lcom/android/server/coverage/CoverageService$CoverageCommand;
.super Landroid/os/ShellCommand;
.source "CoverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/coverage/CoverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverageCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/coverage/CoverageService$CoverageCommand;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/server/coverage/CoverageService$CoverageCommand;

    .prologue
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;-><init>()V

    return-void
.end method

.method private onDump()I
    .locals 14

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "dest":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 106
    const-string/jumbo v0, "/data/local/tmp/coverage.ec"

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->openOutputFileForSystem(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 116
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v3, :cond_2

    .line 117
    return v12

    .line 108
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    new-instance v6, Ljava/io/File;

    const-string/jumbo v8, "coverage.ec"

    invoke-direct {v6, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const/4 v4, 0x0

    .local v4, "output":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    .line 122
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v6, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 121
    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    .end local v4    # "output":Ljava/io/BufferedOutputStream;
    .local v5, "output":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lorg/jacoco/agent/rt/IAgent;->getExecutionData(Z)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 124
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    const-string/jumbo v8, "Dumped coverage data to %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 129
    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    if-eqz v7, :cond_7

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 126
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 127
    .end local v5    # "output":Ljava/io/BufferedOutputStream;
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to dump coverage data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    return v12

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "output":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v7

    goto :goto_1

    .end local v5    # "output":Ljava/io/BufferedOutputStream;
    .restart local v4    # "output":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v6

    .end local v4    # "output":Ljava/io/BufferedOutputStream;
    :goto_3
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    move-object v13, v7

    move-object v7, v6

    move-object v6, v13

    :goto_4
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    if-eqz v7, :cond_6

    :try_start_6
    throw v7

    .line 126
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    if-nez v7, :cond_5

    move-object v7, v8

    goto :goto_5

    :cond_5
    if-eq v7, v8, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_6
    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 131
    .restart local v5    # "output":Ljava/io/BufferedOutputStream;
    :cond_7
    return v11

    .line 129
    .end local v5    # "output":Ljava/io/BufferedOutputStream;
    .restart local v4    # "output":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v6

    goto :goto_4

    .end local v4    # "output":Ljava/io/BufferedOutputStream;
    .restart local v5    # "output":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "output":Ljava/io/BufferedOutputStream;
    .local v4, "output":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .end local v4    # "output":Ljava/io/BufferedOutputStream;
    .restart local v5    # "output":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v6

    move-object v4, v5

    .end local v5    # "output":Ljava/io/BufferedOutputStream;
    .restart local v4    # "output":Ljava/io/BufferedOutputStream;
    goto :goto_3
.end method

.method private onReset()I
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v0

    invoke-interface {v0}, Lorg/jacoco/agent/rt/IAgent;->reset()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Reset coverage data"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string/jumbo v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->onDump()I

    move-result v0

    return v0

    .line 75
    :cond_0
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->onReset()I

    move-result v0

    return v0

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 88
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Coverage commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "  dump [FILE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "    Dump code coverage to FILE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "  reset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "    Reset coverage information."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    return-void
.end method
