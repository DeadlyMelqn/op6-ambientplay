.class public Lcom/ice/box/helpers/RootUtils$SU;
.super Ljava/lang/Object;
.source "RootUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/helpers/RootUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SU"
.end annotation


# instance fields
.field private bufferedReader:Ljava/io/BufferedReader;

.field private bufferedWriter:Ljava/io/BufferedWriter;

.field private closed:Z

.field private denied:Z

.field private firstTry:Z

.field private process:Ljava/lang/Process;

.field private final root:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 151
    invoke-direct {p0, v0}, Lcom/ice/box/helpers/RootUtils$SU;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-boolean p1, p0, Lcom/ice/box/helpers/RootUtils$SU;->root:Z

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "ICEPlugin"

    if-eqz p1, :cond_0

    const-string v2, "SU initialized"

    goto :goto_0

    :cond_0
    const-string v2, "SH initialized"

    .line 157
    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput-boolean v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->firstTry:Z

    .line 159
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v2, "su"

    goto :goto_1

    :cond_1
    const-string v2, "sh"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/ice/box/helpers/RootUtils$SU;->process:Ljava/lang/Process;

    .line 160
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/ice/box/helpers/RootUtils$SU;->process:Ljava/lang/Process;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/ice/box/helpers/RootUtils$SU;->bufferedWriter:Ljava/io/BufferedWriter;

    .line 161
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/ice/box/helpers/RootUtils$SU;->process:Ljava/lang/Process;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/ice/box/helpers/RootUtils$SU;->bufferedReader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v1, "ICEPlugin"

    if-eqz p1, :cond_2

    const-string p1, "Failed to run shell as su"

    goto :goto_2

    :cond_2
    const-string p1, "Failed to run shell as sh"

    .line 163
    :goto_2
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput-boolean v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->denied:Z

    .line 165
    iput-boolean v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->closed:Z

    :goto_3
    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/helpers/RootUtils$SU;)Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/ice/box/helpers/RootUtils$SU;->denied:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ice/box/helpers/RootUtils$SU;)Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/ice/box/helpers/RootUtils$SU;->closed:Z

    return p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->bufferedWriter:Ljava/io/BufferedWriter;

    const-string v1, "exit\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual/range {v0 .. v0}, Ljava/io/BufferedWriter;->flush()V

    .line 203
    iget-object v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->process:Ljava/lang/Process;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Process;->waitFor()I

    const-string v0, "ICEPlugin"

    .line 204
    iget-boolean v1, p0, Lcom/ice/box/helpers/RootUtils$SU;->root:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SU closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ice/box/helpers/RootUtils$SU;->process:Ljava/lang/Process;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Process;->exitValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SH closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ice/box/helpers/RootUtils$SU;->process:Ljava/lang/Process;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Process;->exitValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->closed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public declared-synchronized runCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x1

    .line 171
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/shellCallback/"

    .line 173
    iget-object v3, p0, Lcom/ice/box/helpers/RootUtils$SU;->bufferedWriter:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct/range {v4 .. v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\necho "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v4 .. v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/ice/box/helpers/RootUtils$SU;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedWriter;->flush()V

    const/16 p1, 0x100

    .line 176
    new-array p1, p1, [C

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/ice/box/helpers/RootUtils$SU;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v3, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-le v3, v5, :cond_0

    .line 180
    invoke-virtual/range {v2 .. v2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v1, v3, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 184
    iput-boolean v4, p0, Lcom/ice/box/helpers/RootUtils$SU;->firstTry:Z

    .line 185
    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 193
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    iput-boolean v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->denied:Z

    goto :goto_0

    .line 191
    :catch_1
    iput-boolean v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->denied:Z

    goto :goto_0

    :catch_2
    move-exception p1

    .line 187
    iput-boolean v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->closed:Z

    .line 188
    invoke-virtual/range {p1 .. p1}, Ljava/io/IOException;->printStackTrace()V

    .line 189
    iget-boolean p1, p0, Lcom/ice/box/helpers/RootUtils$SU;->firstTry:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/ice/box/helpers/RootUtils$SU;->denied:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 196
    monitor-exit p0

    return-object p1

    .line 170
    :goto_1
    monitor-exit p0

    throw p1
.end method
