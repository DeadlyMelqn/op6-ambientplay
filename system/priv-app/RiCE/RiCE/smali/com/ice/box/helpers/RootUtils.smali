.class public Lcom/ice/box/helpers/RootUtils;
.super Ljava/lang/Object;
.source "RootUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/helpers/RootUtils$SU;
    }
.end annotation


# static fields
.field private static su:Lcom/ice/box/helpers/RootUtils$SU;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupColors(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/backup_colors.sh"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 125
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->mountSystemRW(Z)V

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 755 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sh "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    .line 128
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->mountSystemRW(Z)V

    return-void
.end method

.method public static busyboxInstalled()Z
    .locals 1

    const-string v0, "busybox"

    .line 54
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->existBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static closeSU()V
    .locals 1

    .line 90
    sget-object v0, Lcom/ice/box/helpers/RootUtils;->su:Lcom/ice/box/helpers/RootUtils$SU;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ice/box/helpers/RootUtils;->su:Lcom/ice/box/helpers/RootUtils$SU;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils$SU;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 91
    sput-object v0, Lcom/ice/box/helpers/RootUtils;->su:Lcom/ice/box/helpers/RootUtils$SU;

    return-void
.end method

.method public static enforcePermissionAsRoot(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pm grant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private static existBinary(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "PATH"

    .line 58
    invoke-static/range {v0 .. v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    const-string v5, "/"

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct/range {v6 .. v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v6 .. v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v5 .. v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/ice/box/helpers/Tools;->existFile(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v6

    :cond_3
    return v2
.end method

.method private static getSU()Lcom/ice/box/helpers/RootUtils$SU;
    .locals 1

    .line 104
    sget-object v0, Lcom/ice/box/helpers/RootUtils;->su:Lcom/ice/box/helpers/RootUtils$SU;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ice/box/helpers/RootUtils$SU;

    invoke-direct/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils$SU;-><init>()V

    sput-object v0, Lcom/ice/box/helpers/RootUtils;->su:Lcom/ice/box/helpers/RootUtils$SU;

    goto :goto_0

    .line 105
    :cond_0
    sget-object v0, Lcom/ice/box/helpers/RootUtils;->su:Lcom/ice/box/helpers/RootUtils$SU;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils$SU;->access$100(Lcom/ice/box/helpers/RootUtils$SU;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ice/box/helpers/RootUtils;->su:Lcom/ice/box/helpers/RootUtils$SU;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils$SU;->access$000(Lcom/ice/box/helpers/RootUtils$SU;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/ice/box/helpers/RootUtils$SU;

    invoke-direct/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils$SU;-><init>()V

    sput-object v0, Lcom/ice/box/helpers/RootUtils;->su:Lcom/ice/box/helpers/RootUtils$SU;

    .line 106
    :cond_2
    :goto_0
    sget-object v0, Lcom/ice/box/helpers/RootUtils;->su:Lcom/ice/box/helpers/RootUtils$SU;

    return-object v0
.end method

.method public static isRootGranted()Z
    .locals 6

    .line 37
    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->isRootPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 40
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    const-string v3, "-c"

    const-string v4, "id"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    invoke-virtual/range {v0 .. v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uid=0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual/range {v1 .. v1}, Ljava/lang/Process;->destroy()V

    :cond_0
    return v0

    :cond_1
    if-eqz v1, :cond_3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 45
    :goto_0
    :try_start_2
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 47
    :goto_1
    invoke-virtual/range {v1 .. v1}, Ljava/lang/Process;->destroy()V

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Process;->destroy()V

    :cond_2
    throw v0

    :cond_3
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static isRootPresent()Z
    .locals 1

    const-string v0, "su"

    .line 27
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->existBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static mountSystemRW(Z)V
    .locals 0

    const-string p0, "mount -o rw,remount /system"

    .line 73
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 80
    :try_start_0
    invoke-virtual/range {v0 .. v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 81
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 82
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual/range {v0 .. v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual/range {v0 .. v0}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method

.method public static restoreColors(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 133
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/restore_colors.sh"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 134
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->mountSystemRW(Z)V

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 755 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sh "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    .line 137
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->mountSystemRW(Z)V

    return-void
.end method

.method public static rootAccess()Z
    .locals 2

    .line 31
    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->getSU()Lcom/ice/box/helpers/RootUtils$SU;

    move-result-object v0

    const-string v1, "echo /testRoot/"

    .line 32
    invoke-virtual {v0, v1}, Lcom/ice/box/helpers/RootUtils$SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils$SU;->access$000(Lcom/ice/box/helpers/RootUtils$SU;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static runCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 96
    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->rootAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 99
    :cond_0
    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->getSU()Lcom/ice/box/helpers/RootUtils$SU;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ice/box/helpers/RootUtils$SU;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 115
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/set_build_prop.sh"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 116
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->mountSystemRW(Z)V

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 755 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sh "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    .line 119
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->mountSystemRW(Z)V

    return-void
.end method
