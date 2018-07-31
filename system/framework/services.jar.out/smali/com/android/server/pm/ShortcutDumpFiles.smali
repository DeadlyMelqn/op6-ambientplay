.class public Lcom/android/server/pm/ShortcutDumpFiles;
.super Ljava/lang/Object;
.source "ShortcutDumpFiles.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    .line 43
    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutDumpFiles_2368([BLjava/io/PrintWriter;)V
    .locals 2
    .param p0, "utf8bytes"    # [B
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 72
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutDumpFiles_2649(Ljava/io/File;)Z
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutDumpFiles_2877(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 78
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v7}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object v0

    .local v0, "directory":Ljava/io/File;
    sget-object v7, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;->$INST$0:Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo;

    .line 79
    invoke-virtual {v0, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 80
    .local v2, "files":[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    :cond_0
    const-string/jumbo v7, "  No dump files found."

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    return-void

    :cond_1
    sget-object v7, Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;->$INST$0:Lcom/android/server/pm/-$Lambda$cC5GTLJlwZun1lDliqKZF7MnGwo$1;

    .line 84
    invoke-static {v7}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v2, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 86
    const/4 v7, 0x0

    array-length v9, v2

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v4, v2, v7

    .line 87
    .local v4, "path":Ljava/io/File;
    const-string/jumbo v8, "*** Dumping: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v8, "mtime: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    const/4 v8, 0x0

    const/4 v5, 0x0

    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 94
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 96
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 97
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 99
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_3
    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_4
    if-eqz v8, :cond_7

    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 101
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v4    # "path":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ShortcutService"

    const-string/jumbo v8, "Failed to print dump files"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 99
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "path":Ljava/io/File;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_4
    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_5
    if-eqz v8, :cond_8

    :try_start_7
    throw v8

    :catch_2
    move-exception v8

    goto :goto_5

    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v9

    if-nez v8, :cond_6

    move-object v8, v9

    goto :goto_4

    :cond_6
    if-eq v8, v9, :cond_2

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    throw v7
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 86
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    goto :goto_3

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .local v5, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method public save(Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/io/PrintWriter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "dumper":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/PrintWriter;>;"
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 47
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object v0

    .line 48
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    const-string/jumbo v5, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to create directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v8

    .line 54
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v2, "path":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "pw":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/BufferedOutputStream;

    .line 61
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 60
    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .local v4, "pw":Ljava/io/PrintWriter;
    :try_start_2
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    if-eqz v6, :cond_5

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 65
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "path":Ljava/io/File;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to create dump file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return v8

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v2    # "path":Ljava/io/File;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :catch_2
    move-exception v5

    .end local v3    # "pw":Ljava/io/PrintWriter;
    :goto_1
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_2
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    :goto_3
    if-eqz v6, :cond_4

    :try_start_7
    throw v6

    :catch_3
    move-exception v7

    if-nez v6, :cond_3

    move-object v6, v7

    goto :goto_3

    :cond_3
    if-eq v6, v7, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v5
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 64
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :cond_5
    const/4 v5, 0x1

    return v5

    .line 63
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v5

    goto :goto_2

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "pw":Ljava/io/PrintWriter;
    .local v3, "pw":Ljava/io/PrintWriter;
    goto :goto_2

    .end local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "pw":Ljava/io/PrintWriter;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method public save(Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "utf8bytes"    # [B

    .prologue
    .line 72
    new-instance v0, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/android/server/pm/-$Lambda$4qJi2sHY5X4ys3rtlAQIsVPSn60;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
