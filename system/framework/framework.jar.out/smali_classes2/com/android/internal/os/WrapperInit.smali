.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p0, "invokeWith"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "command":Ljava/lang/StringBuilder;
    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    const-string/jumbo v0, "/system/bin/app_process64"

    .line 115
    .local v0, "appProcess":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v2, " /system/bin --application"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    if-eqz p1, :cond_0

    .line 120
    const-string/jumbo v2, " \'--nice-name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    const-string/jumbo v2, " com.android.internal.os.WrapperInit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {v1, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/android/internal/os/WrapperInit;->preserveCapabilities()V

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    .line 129
    return-void

    .line 113
    .end local v0    # "appProcess":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "/system/bin/app_process32"

    .restart local v0    # "appProcess":Ljava/lang/String;
    goto :goto_0

    .line 123
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0xa

    const/4 v9, 0x0

    .line 64
    aget-object v7, p0, v9

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, "fdNum":I
    const/4 v7, 0x1

    aget-object v7, p0, v7

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 69
    .local v6, "targetSdkVersion":I
    if-eqz v2, :cond_0

    .line 71
    :try_start_0
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 72
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v1, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 73
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 74
    .local v3, "os":Ljava/io/DataOutputStream;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 76
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "os":Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    new-instance v7, Landroid/util/TimingsTraceLog;

    const-string/jumbo v8, "WrapperInitTiming"

    .line 84
    const-wide/16 v10, 0x4000

    .line 83
    invoke-direct {v7, v8, v10, v11}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v7}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    .line 87
    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    new-array v5, v7, [Ljava/lang/String;

    .line 88
    .local v5, "runtimeArgs":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    invoke-static {p0, v8, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-static {v6, v5}, Lcom/android/internal/os/WrapperInit;->wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v4

    .line 91
    .local v4, "r":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 92
    return-void

    .line 77
    .end local v4    # "r":Ljava/lang/Runnable;
    .end local v5    # "runtimeArgs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v7, "AndroidRuntime"

    const-string/jumbo v8, "Could not write pid of wrapped process to Zygote pipe."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static preserveCapabilities()V
    .locals 16

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    new-instance v14, Landroid/system/StructCapUserHeader;

    .line 180
    sget v1, Landroid/system/OsConstants;->_LINUX_CAPABILITY_VERSION_3:I

    .line 179
    invoke-direct {v14, v1, v5}, Landroid/system/StructCapUserHeader;-><init>(II)V

    .line 183
    .local v14, "header":Landroid/system/StructCapUserHeader;
    :try_start_0
    invoke-static {v14}, Landroid/system/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 189
    .local v10, "data":[Landroid/system/StructCapUserData;
    aget-object v1, v10, v5

    iget v1, v1, Landroid/system/StructCapUserData;->permitted:I

    aget-object v2, v10, v5

    iget v2, v2, Landroid/system/StructCapUserData;->inheritable:I

    if-ne v1, v2, :cond_0

    .line 190
    aget-object v1, v10, v6

    iget v1, v1, Landroid/system/StructCapUserData;->permitted:I

    aget-object v2, v10, v6

    iget v2, v2, Landroid/system/StructCapUserData;->inheritable:I

    if-eq v1, v2, :cond_1

    .line 191
    :cond_0
    new-instance v1, Landroid/system/StructCapUserData;

    aget-object v2, v10, v5

    iget v2, v2, Landroid/system/StructCapUserData;->effective:I

    aget-object v3, v10, v5

    iget v3, v3, Landroid/system/StructCapUserData;->permitted:I

    .line 192
    aget-object v4, v10, v5

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    .line 191
    invoke-direct {v1, v2, v3, v4}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v1, v10, v5

    .line 193
    new-instance v1, Landroid/system/StructCapUserData;

    aget-object v2, v10, v6

    iget v2, v2, Landroid/system/StructCapUserData;->effective:I

    aget-object v3, v10, v6

    iget v3, v3, Landroid/system/StructCapUserData;->permitted:I

    .line 194
    aget-object v4, v10, v6

    iget v4, v4, Landroid/system/StructCapUserData;->permitted:I

    .line 193
    invoke-direct {v1, v2, v3, v4}, Landroid/system/StructCapUserData;-><init>(III)V

    aput-object v1, v10, v6

    .line 196
    :try_start_1
    invoke-static {v14, v10}, Landroid/system/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :cond_1
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v1, 0x40

    if-ge v15, v1, :cond_3

    .line 204
    invoke-static {v15}, Landroid/system/OsConstants;->CAP_TO_INDEX(I)I

    move-result v11

    .line 205
    .local v11, "dataIndex":I
    invoke-static {v15}, Landroid/system/OsConstants;->CAP_TO_MASK(I)I

    move-result v0

    .line 206
    .local v0, "capMask":I
    aget-object v1, v10, v11

    iget v1, v1, Landroid/system/StructCapUserData;->inheritable:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 208
    :try_start_2
    sget v1, Landroid/system/OsConstants;->PR_CAP_AMBIENT:I

    sget v2, Landroid/system/OsConstants;->PR_CAP_AMBIENT_RAISE:I

    int-to-long v2, v2

    int-to-long v4, v15

    const-wide/16 v6, 0x0

    .line 209
    const-wide/16 v8, 0x0

    .line 208
    invoke-static/range {v1 .. v9}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 203
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "capMask":I
    .end local v10    # "data":[Landroid/system/StructCapUserData;
    .end local v11    # "dataIndex":I
    .end local v15    # "i":I
    :catch_0
    move-exception v12

    .line 185
    .local v12, "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "AndroidRuntime"

    const-string/jumbo v2, "RuntimeInit: Failed capget"

    invoke-static {v1, v2, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    return-void

    .line 197
    .end local v12    # "e":Landroid/system/ErrnoException;
    .restart local v10    # "data":[Landroid/system/StructCapUserData;
    :catch_1
    move-exception v12

    .line 198
    .restart local v12    # "e":Landroid/system/ErrnoException;
    const-string/jumbo v1, "AndroidRuntime"

    const-string/jumbo v2, "RuntimeInit: Failed capset"

    invoke-static {v1, v2, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    return-void

    .line 210
    .end local v12    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "capMask":I
    .restart local v11    # "dataIndex":I
    .restart local v15    # "i":I
    :catch_2
    move-exception v13

    .line 213
    .local v13, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RuntimeInit: Failed to raise ambient capability "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 218
    .end local v0    # "capMask":I
    .end local v11    # "dataIndex":I
    .end local v13    # "ex":Landroid/system/ErrnoException;
    :cond_3
    return-void
.end method

.method private static wrapperInit(I[Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 6
    .param p0, "targetSdkVersion"    # I
    .param p1, "argv"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-le v2, v5, :cond_0

    aget-object v2, p1, v4

    const-string/jumbo v3, "-cp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2, p0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 154
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 157
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 158
    .local v1, "removedArgs":[Ljava/lang/String;
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    invoke-static {p1, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    move-object p1, v1

    .line 163
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "removedArgs":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativePreApplicationInit()V

    .line 164
    invoke-static {p0, p1, v0}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2
.end method
