.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I


# instance fields
.field private final abiList:Ljava/lang/String;

.field private isEof:Z

.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 4
    .param p1, "socket"    # Landroid/net/LocalSocket;
    .param p2, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 84
    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 89
    new-instance v1, Ljava/io/BufferedReader;

    .line 90
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    .line 89
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    .line 92
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    .line 102
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    throw v0
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 1
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    .line 706
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 707
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 709
    :cond_0
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 3
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .line 728
    .local v0, "peerUid":I
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 729
    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 730
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string/jumbo v2, "Peer is permitted to specify anexplicit invoke-with wrapper command only for debuggableapplications."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    :cond_0
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 4
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;

    .prologue
    const/4 v3, 0x0

    .line 742
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "property":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 745
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 746
    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 749
    .end local v0    # "property":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 4
    .param p0, "args"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p1, "peer"    # Landroid/net/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 672
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 676
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 678
    .local v0, "uidRestricted":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v1, v3, :cond_1

    .line 679
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    .line 680
    const-string/jumbo v2, "System UID may not launch process with UID < 1000"

    .line 679
    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    .end local v0    # "uidRestricted":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "uidRestricted":Z
    goto :goto_0

    .line 686
    .end local v0    # "uidRestricted":Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v1, :cond_2

    .line 687
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 688
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 690
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v1, :cond_3

    .line 691
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 692
    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 694
    :cond_3
    return-void
.end method

.method private handleAbiListQuery()V
    .locals 4

    .prologue
    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 254
    .local v0, "abiListBytes":[B
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 255
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    return-void

    .line 256
    .end local v0    # "abiListBytes":[B
    :catch_0
    move-exception v1

    .line 257
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Error writing to command socket"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;
    .locals 8
    .param p1, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .param p2, "descriptors"    # [Ljava/io/FileDescriptor;
    .param p3, "pipeFd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 768
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 769
    if-eqz p2, :cond_0

    .line 771
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDIN_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 772
    const/4 v1, 0x1

    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDOUT_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 773
    const/4 v1, 0x2

    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDERR_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    .line 775
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v7, p2, v0

    .line 776
    .local v7, "fd":Ljava/io/FileDescriptor;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    .end local v7    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v6

    .line 779
    .local v6, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Error reopening stdio"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    .end local v6    # "ex":Landroid/system/ErrnoException;
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 788
    :cond_1
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 789
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 790
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 791
    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    .line 792
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    .line 793
    iget-object v5, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    move-object v4, p3

    .line 790
    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WrapperInit.execApplication unexpectedly returned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_2
    iget v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 26
    .param p1, "pid"    # I
    .param p2, "descriptors"    # [Ljava/io/FileDescriptor;
    .param p3, "pipeFd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 813
    if-lez p1, :cond_0

    .line 814
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    .line 817
    :cond_0
    if-eqz p2, :cond_1

    .line 818
    const/16 v21, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v10, p2, v21

    .line 819
    .local v10, "fd":Ljava/io/FileDescriptor;
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 818
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 823
    .end local v10    # "fd":Ljava/io/FileDescriptor;
    :cond_1
    const/16 v20, 0x0

    .line 824
    .local v20, "usingWrapper":Z
    if-eqz p3, :cond_9

    if-lez p1, :cond_9

    .line 825
    const/4 v12, -0x1

    .line 829
    .local v12, "innerPid":I
    const/4 v2, 0x4

    .line 831
    .local v2, "BYTES_REQUIRED":I
    const/16 v21, 0x1

    :try_start_0
    move/from16 v0, v21

    new-array v11, v0, [Landroid/system/StructPollfd;

    .line 832
    new-instance v21, Landroid/system/StructPollfd;

    invoke-direct/range {v21 .. v21}, Landroid/system/StructPollfd;-><init>()V

    const/16 v22, 0x0

    aput-object v21, v11, v22

    .line 835
    .local v11, "fds":[Landroid/system/StructPollfd;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 837
    .local v3, "data":[B
    const/16 v16, 0x7530

    .line 838
    .local v16, "remainingSleepTime":I
    const/4 v4, 0x0

    .line 839
    .local v4, "dataIndex":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 841
    .local v18, "startTime":J
    :cond_2
    :goto_1
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_6

    if-lez v16, :cond_6

    .line 842
    const/16 v21, 0x0

    aget-object v21, v11, v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 843
    const/16 v21, 0x0

    aget-object v21, v11, v21

    sget v22, Landroid/system/OsConstants;->POLLIN:I

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-short v0, v1, Landroid/system/StructPollfd;->events:S

    .line 844
    const/16 v21, 0x0

    aget-object v21, v11, v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-short v0, v1, Landroid/system/StructPollfd;->revents:S

    .line 845
    const/16 v21, 0x0

    aget-object v21, v11, v21

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    .line 847
    move/from16 v0, v16

    invoke-static {v11, v0}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v17

    .line 848
    .local v17, "res":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 849
    .local v6, "endTime":J
    sub-long v22, v6, v18

    const-wide/32 v24, 0xf4240

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v5, v0

    .line 850
    .local v5, "elapsedTimeMs":I
    rsub-int v0, v5, 0x7530

    move/from16 v16, v0

    .line 852
    if-lez v17, :cond_5

    .line 853
    const/16 v21, 0x0

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget-short v0, v0, Landroid/system/StructPollfd;->revents:S

    move/from16 v21, v0

    sget v22, Landroid/system/OsConstants;->POLLIN:I

    and-int v21, v21, v22

    if-eqz v21, :cond_6

    .line 855
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-static {v0, v3, v4, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v15

    .line 856
    .local v15, "readBytes":I
    if-gez v15, :cond_4

    .line 857
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Some error"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    .end local v3    # "data":[B
    .end local v4    # "dataIndex":I
    .end local v5    # "elapsedTimeMs":I
    .end local v6    # "endTime":J
    .end local v11    # "fds":[Landroid/system/StructPollfd;
    .end local v15    # "readBytes":I
    .end local v16    # "remainingSleepTime":I
    .end local v17    # "res":I
    .end local v18    # "startTime":J
    :catch_0
    move-exception v9

    .line 878
    .local v9, "ex":Ljava/lang/Exception;
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Error reading pid from wrapped process, child may have died"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-lez v12, :cond_9

    .line 884
    move v14, v12

    .line 885
    .local v14, "parentPid":I
    :goto_3
    if-lez v14, :cond_8

    move/from16 v0, p1

    if-eq v14, v0, :cond_8

    .line 886
    invoke-static {v14}, Landroid/os/Process;->getParentPid(I)I

    move-result v14

    goto :goto_3

    .line 859
    .end local v14    # "parentPid":I
    .restart local v3    # "data":[B
    .restart local v4    # "dataIndex":I
    .restart local v5    # "elapsedTimeMs":I
    .restart local v6    # "endTime":J
    .restart local v11    # "fds":[Landroid/system/StructPollfd;
    .restart local v15    # "readBytes":I
    .restart local v16    # "remainingSleepTime":I
    .restart local v17    # "res":I
    .restart local v18    # "startTime":J
    :cond_4
    add-int/2addr v4, v15

    goto/16 :goto_1

    .line 864
    .end local v15    # "readBytes":I
    :cond_5
    if-nez v17, :cond_2

    .line 865
    :try_start_1
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Timed out waiting for child."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 869
    .end local v5    # "elapsedTimeMs":I
    .end local v6    # "endTime":J
    .end local v17    # "res":I
    :cond_6
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v4, v0, :cond_7

    .line 870
    new-instance v13, Ljava/io/DataInputStream;

    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 871
    .local v13, "is":Ljava/io/DataInputStream;
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 874
    .end local v13    # "is":Ljava/io/DataInputStream;
    :cond_7
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_3

    .line 875
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Error reading pid from wrapped process, child may have died"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 888
    .end local v3    # "data":[B
    .end local v4    # "dataIndex":I
    .end local v11    # "fds":[Landroid/system/StructPollfd;
    .end local v16    # "remainingSleepTime":I
    .end local v18    # "startTime":J
    .restart local v14    # "parentPid":I
    :cond_8
    if-lez v14, :cond_a

    .line 889
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Wrapped process has pid "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    move/from16 p1, v12

    .line 891
    const/16 v20, 0x1

    .line 901
    .end local v2    # "BYTES_REQUIRED":I
    .end local v12    # "innerPid":I
    .end local v14    # "parentPid":I
    :cond_9
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 906
    return-void

    .line 893
    .restart local v2    # "BYTES_REQUIRED":I
    .restart local v12    # "innerPid":I
    .restart local v14    # "parentPid":I
    :cond_a
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 895
    const-string/jumbo v23, " innerPid="

    .line 893
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 903
    .end local v2    # "BYTES_REQUIRED":I
    .end local v12    # "innerPid":I
    .end local v14    # "parentPid":I
    :catch_1
    move-exception v8

    .line 904
    .local v8, "ex":Ljava/io/IOException;
    new-instance v21, Ljava/lang/IllegalStateException;

    const-string/jumbo v22, "Error writing to command socket"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21
.end method

.method private handlePreload()V
    .locals 3

    .prologue
    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->isPreloadComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 278
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->preload()V

    .line 273
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readArgumentList()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 631
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 633
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 635
    return-object v6

    .line 637
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 644
    .local v0, "argc":I
    const/16 v5, 0x400

    if-le v0, v5, :cond_1

    .line 645
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 638
    .end local v0    # "argc":I
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 639
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "Zygote"

    const-string/jumbo v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 648
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "argc":I
    .restart local v4    # "s":Ljava/lang/String;
    :cond_1
    new-array v3, v0, [Ljava/lang/String;

    .line 649
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 650
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 651
    aget-object v5, v3, v2

    if-nez v5, :cond_2

    .line 653
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 649
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    :cond_3
    return-object v3
.end method

.method private setChildPgid(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 911
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v1}, Landroid/net/Credentials;->getPid()I

    move-result v1

    invoke-static {v1}, Landroid/system/Os;->getpgid(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/system/Os;->setpgid(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    .line 917
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method closeSocket()V
    .locals 3

    .prologue
    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getSocketOutputStream()Ljava/io/DataOutputStream;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method protected handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "libsPath"    # Ljava/lang/String;
    .param p3, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 293
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Zyogte does not support package preloading"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isClosedByPeer()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return v0
.end method

.method protected isPreloadComplete()Z
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete()Z

    move-result v0

    return v0
.end method

.method protected preload()V
    .locals 0

    .prologue
    .line 281
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->lazyPreload()V

    .line 282
    return-void
.end method

.method processOneCommand(Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .locals 26
    .param p1, "zygoteServer"    # Lcom/android/internal/os/ZygoteServer;

    .prologue
    .line 123
    const/16 v22, 0x0

    .line 127
    .local v22, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v16

    .line 128
    .local v16, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 135
    .local v18, "descriptors":[Ljava/io/FileDescriptor;
    if-nez v16, :cond_0

    .line 136
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    .line 137
    const/4 v4, 0x0

    return-object v4

    .line 129
    .end local v16    # "args":[Ljava/lang/String;
    .end local v18    # "descriptors":[Ljava/io/FileDescriptor;
    :catch_0
    move-exception v20

    .line 130
    .local v20, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "IOException on command socket"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 140
    .end local v20    # "ex":Ljava/io/IOException;
    .restart local v16    # "args":[Ljava/lang/String;
    .restart local v18    # "descriptors":[Ljava/io/FileDescriptor;
    :cond_0
    const/16 v23, -0x1

    .line 141
    .local v23, "pid":I
    const/16 v17, 0x0

    .line 142
    .local v17, "childPipeFd":Ljava/io/FileDescriptor;
    const/16 v25, 0x0

    .line 144
    .local v25, "serverPipeFd":Ljava/io/FileDescriptor;
    new-instance v22, Lcom/android/internal/os/ZygoteConnection$Arguments;

    .end local v22    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V

    .line 146
    .local v22, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    if-eqz v4, :cond_1

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()V

    .line 148
    const/4 v4, 0x0

    return-object v4

    .line 151
    :cond_1
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    if-eqz v4, :cond_2

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handlePreload()V

    .line 153
    const/4 v4, 0x0

    return-object v4

    .line 156
    :cond_2
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 157
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibs:Ljava/lang/String;

    .line 158
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageCacheKey:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/os/ZygoteConnection;->handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v4, 0x0

    return-object v4

    .line 162
    :cond_3
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 163
    :cond_4
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 164
    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 165
    const-string/jumbo v6, ", effective=0x"

    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 165
    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 168
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 171
    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 172
    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 174
    const/4 v8, 0x0

    .line 176
    .local v8, "rlimits":[[I
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 177
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "rlimits":[[I
    check-cast v8, [[I

    .line 180
    :cond_6
    const/4 v13, 0x0

    .line 182
    .local v13, "fdsToIgnore":[I
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 184
    :try_start_1
    sget v4, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v4}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v24

    .line 185
    .local v24, "pipeFds":[Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    aget-object v17, v24, v4

    .line 186
    .local v17, "childPipeFd":Ljava/io/FileDescriptor;
    const/4 v4, 0x0

    aget-object v25, v24, v4

    .line 187
    .local v25, "serverPipeFd":Ljava/io/FileDescriptor;
    sget v4, Landroid/system/OsConstants;->F_SETFD:I

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    .line 188
    const/4 v4, 0x2

    new-array v13, v4, [I

    .end local v13    # "fdsToIgnore":[I
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v13, v5

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v13, v5
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .end local v17    # "childPipeFd":Ljava/io/FileDescriptor;
    .end local v24    # "pipeFds":[Ljava/io/FileDescriptor;
    .end local v25    # "serverPipeFd":Ljava/io/FileDescriptor;
    :cond_7
    const/4 v4, -0x1

    const/4 v5, -0x1

    filled-new-array {v4, v5}, [I

    move-result-object v12

    .line 208
    .local v12, "fdsToClose":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    .line 210
    .local v21, "fd":Ljava/io/FileDescriptor;
    if-eqz v21, :cond_8

    .line 211
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v12, v5

    .line 214
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->getServerSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    .line 216
    if-eqz v21, :cond_9

    .line 217
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v12, v5

    .line 220
    :cond_9
    const/16 v21, 0x0

    .line 222
    .local v21, "fd":Ljava/io/FileDescriptor;
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    .line 223
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    .line 224
    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    .line 225
    move-object/from16 v0, v22

    iget-object v15, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    .line 222
    invoke-static/range {v4 .. v15}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 228
    if-nez v23, :cond_a

    .line 230
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 233
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 234
    const/16 v25, 0x0

    .line 236
    .local v25, "serverPipeFd":Ljava/io/FileDescriptor;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 246
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 247
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 236
    return-object v4

    .line 189
    .end local v12    # "fdsToClose":[I
    .end local v21    # "fd":Ljava/io/FileDescriptor;
    .end local v25    # "serverPipeFd":Ljava/io/FileDescriptor;
    :catch_1
    move-exception v19

    .line 190
    .local v19, "errnoEx":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Unable to set up pipe for invoke-with"

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 240
    .end local v19    # "errnoEx":Landroid/system/ErrnoException;
    .restart local v12    # "fdsToClose":[I
    .restart local v21    # "fd":Ljava/io/FileDescriptor;
    :cond_a
    :try_start_3
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 241
    const/16 v17, 0x0

    .line 242
    .local v17, "childPipeFd":Ljava/io/FileDescriptor;
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    const/4 v4, 0x0

    .line 246
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 247
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 243
    return-object v4

    .line 245
    .end local v17    # "childPipeFd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v4

    .line 246
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 247
    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 245
    throw v4
.end method
