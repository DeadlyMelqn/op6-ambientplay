.class public Lcom/android/server/OnePlusDiagnosisUtil;
.super Ljava/lang/Object;
.source "OnePlusDiagnosisUtil.java"


# static fields
.field private static DEBUG_ONEPLUS:Z = false

.field public static final STANDBY_DIAGNOSIS_FOLDER:Ljava/lang/String; = "/data/system/power"

.field public static final TAG:Ljava/lang/String; = "OnePlusDiagnosisUtil"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private final mLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxLines:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusDiagnosisUtil;->DEBUG_ONEPLUS:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "maxLines"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v7, 0x0

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    .line 50
    new-instance v7, Ljava/util/ArrayDeque;

    iget v8, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    invoke-direct {v7, v8}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    .line 52
    iput-object p1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mFilePath:Ljava/lang/String;

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "f":Ljava/io/File;
    const/4 v0, 0x0

    .line 57
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v3    # "f":Ljava/io/File;
    .local v4, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 60
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    iget-object v8, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 62
    .end local v0    # "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 63
    invoke-direct {p0, v6}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 68
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 69
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "f":Ljava/io/File;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    const-string/jumbo v7, "OnePlusDiagnosisUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "got exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 78
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 66
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v4    # "f":Ljava/io/File;
    :cond_1
    :try_start_5
    sget-boolean v7, Lcom/android/server/OnePlusDiagnosisUtil;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "OnePlusDiagnosisUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " doesn\'t existed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    .end local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 74
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_4
    move-object v3, v4

    .end local v4    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    goto :goto_2

    .line 75
    .end local v3    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :catch_1
    move-exception v5

    .local v5, "ioe":Ljava/io/IOException;
    goto :goto_4

    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .restart local v5    # "ioe":Ljava/io/IOException;
    goto :goto_2

    .line 71
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 73
    :goto_5
    if-eqz v0, :cond_4

    .line 74
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 71
    :cond_4
    :goto_6
    throw v7

    .line 75
    :catch_3
    move-exception v5

    .restart local v5    # "ioe":Ljava/io/IOException;
    goto :goto_6

    .line 71
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "f":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "f":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "f":Ljava/io/File;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    goto :goto_5

    .line 68
    .local v0, "br":Ljava/io/BufferedReader;
    .local v3, "f":Ljava/io/File;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "f":Ljava/io/File;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private declared-synchronized append(Ljava/lang/String;)V
    .locals 2
    .param p1, "logLine"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 135
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-lt v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 138
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 139
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteFile()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 181
    iget-object v2, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 185
    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 183
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public declared-synchronized dumpRecords()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    sget-boolean v1, Lcom/android/server/OnePlusDiagnosisUtil;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OnePlusDiagnosisUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    .line 145
    return-void
.end method

.method public declared-synchronized flushToFile()V
    .locals 11

    .prologue
    monitor-enter p0

    .line 147
    const/4 v6, 0x0

    .line 148
    .local v6, "theDir":Ljava/io/File;
    const/4 v3, 0x0

    .line 149
    .local v3, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 151
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/data/system/power"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v6    # "theDir":Ljava/io/File;
    .local v7, "theDir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 153
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 155
    :cond_0
    new-instance v4, Ljava/io/FileWriter;

    iget-object v8, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 156
    .local v4, "fw":Ljava/io/FileWriter;
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    .end local v3    # "fw":Ljava/io/FileWriter;
    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 157
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_3
    iget-object v8, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mLog:Ljava/util/Deque;

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    invoke-interface {v8}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 158
    .local v5, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 159
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_0

    .line 162
    .end local v5    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    move-object v6, v7

    .line 163
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v7    # "theDir":Ljava/io/File;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    const-string/jumbo v8, "OnePlusDiagnosisUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "got exception :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    if-eqz v0, :cond_1

    .line 168
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 169
    :cond_1
    if-eqz v3, :cond_2

    .line 170
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    monitor-exit p0

    .line 174
    return-void

    .line 167
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "theDir":Ljava/io/File;
    :cond_3
    if-eqz v1, :cond_4

    .line 168
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 169
    :cond_4
    if-eqz v4, :cond_5

    .line 170
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_5
    :goto_3
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    move-object v6, v7

    .end local v7    # "theDir":Ljava/io/File;
    .local v6, "theDir":Ljava/io/File;
    goto :goto_2

    .line 165
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v5    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "theDir":Ljava/io/File;
    :catchall_0
    move-exception v8

    .line 167
    :goto_4
    if-eqz v0, :cond_6

    .line 168
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 169
    :cond_6
    if-eqz v3, :cond_7

    .line 170
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 165
    :cond_7
    :goto_5
    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v8

    :goto_6
    monitor-exit p0

    throw v8

    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "theDir":Ljava/io/File;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    move-object v6, v7

    .end local v7    # "theDir":Ljava/io/File;
    .restart local v6    # "theDir":Ljava/io/File;
    goto :goto_6

    .line 171
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v5    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "theDir":Ljava/io/File;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 165
    .end local v2    # "e":Ljava/lang/Exception;
    .local v0, "bw":Ljava/io/BufferedWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    .restart local v7    # "theDir":Ljava/io/File;
    :catchall_3
    move-exception v8

    move-object v6, v7

    .end local v7    # "theDir":Ljava/io/File;
    .restart local v6    # "theDir":Ljava/io/File;
    goto :goto_4

    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v6    # "theDir":Ljava/io/File;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "theDir":Ljava/io/File;
    :catchall_4
    move-exception v8

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    move-object v6, v7

    .end local v7    # "theDir":Ljava/io/File;
    .restart local v6    # "theDir":Ljava/io/File;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v6    # "theDir":Ljava/io/File;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "theDir":Ljava/io/File;
    :catchall_5
    move-exception v8

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    move-object v6, v7

    .end local v7    # "theDir":Ljava/io/File;
    .restart local v6    # "theDir":Ljava/io/File;
    goto :goto_4

    .line 171
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v6    # "theDir":Ljava/io/File;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 162
    .end local v2    # "e":Ljava/lang/Exception;
    .local v0, "bw":Ljava/io/BufferedWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    .local v6, "theDir":Ljava/io/File;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "theDir":Ljava/io/File;
    .restart local v7    # "theDir":Ljava/io/File;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "theDir":Ljava/io/File;
    .local v6, "theDir":Ljava/io/File;
    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v6    # "theDir":Ljava/io/File;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "theDir":Ljava/io/File;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    move-object v6, v7

    .end local v7    # "theDir":Ljava/io/File;
    .restart local v6    # "theDir":Ljava/io/File;
    goto :goto_1

    .line 171
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v6    # "theDir":Ljava/io/File;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "theDir":Ljava/io/File;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto :goto_3
.end method

.method public log(IJIFLjava/lang/String;)V
    .locals 16
    .param p1, "fault_type"    # I
    .param p2, "standbyMs"    # J
    .param p4, "batteryDrop"    # I
    .param p5, "mA"    # F
    .param p6, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v7, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 115
    .local v3, "calendarNow":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 117
    .local v2, "calendarBegin":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 119
    .local v8, "utcNow":J
    move-wide/from16 v0, p2

    long-to-float v7, v0

    const v10, 0x4a5bba00    # 3600000.0f

    div-float v5, v7, v10

    .line 121
    .local v5, "standbyHrs":F
    sub-long v10, v8, p2

    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 123
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    .line 124
    .local v6, "tz":Ljava/util/TimeZone;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 127
    const-string/jumbo v7, "%d,%d,%d,%.3f,%d,%.2f,%s,%s,%s"

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Object;

    .line 128
    sub-long v12, v8, p2

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 129
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 130
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v10, v12

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v10, v12

    const/4 v11, 0x6

    aput-object p6, v10, v11

    .line 131
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x7

    aput-object v11, v10, v12

    .line 132
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8

    aput-object v11, v10, v12

    .line 127
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public log(ILjava/lang/String;)V
    .locals 11
    .param p1, "fault_type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 86
    iget v3, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v3, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 91
    .local v4, "utc":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 92
    .local v2, "tz":Ljava/util/TimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 94
    const-string/jumbo v3, "%d,%d,%s,%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "fault_type"    # I
    .param p2, "msg1"    # Ljava/lang/String;
    .param p3, "msg2"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 97
    iget v3, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v3, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 101
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 102
    .local v4, "utc":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 103
    .local v2, "tz":Ljava/util/TimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    const-string/jumbo v3, "%d,%d,%s,%s,%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 106
    const/4 v7, 0x2

    aput-object p2, v6, v7

    .line 107
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 108
    const/4 v7, 0x4

    aput-object p3, v6, v7

    .line 105
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/OnePlusDiagnosisUtil;->mMaxLines:I

    if-gtz v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusDiagnosisUtil;->append(Ljava/lang/String;)V

    .line 84
    return-void
.end method
