.class public final Lcom/android/server/NetworkManagementSocketTagger;
.super Ldalvik/system/SocketTagger;
.source "NetworkManagementSocketTagger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementSocketTagger$1;,
        Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
    }
.end annotation


# static fields
.field private static final LOGD:Z = false

.field public static final PROP_QTAGUID_ENABLED:Ljava/lang/String; = "net.qtaguid_enabled"

.field private static final TAG:Ljava/lang/String; = "NetworkManagementSocketTagger"

.field private static threadSocketTags:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/server/NetworkManagementSocketTagger$SocketTags;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/server/NetworkManagementSocketTagger$1;

    invoke-direct {v0}, Lcom/android/server/NetworkManagementSocketTagger$1;-><init>()V

    sput-object v0, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ldalvik/system/SocketTagger;-><init>()V

    return-void
.end method

.method public static getThreadSocketStatsTag()I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    iget v0, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    return v0
.end method

.method public static install()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/server/NetworkManagementSocketTagger;

    invoke-direct {v0}, Lcom/android/server/NetworkManagementSocketTagger;-><init>()V

    invoke-static {v0}, Ldalvik/system/SocketTagger;->set(Ldalvik/system/SocketTagger;)V

    .line 52
    return-void
.end method

.method public static kernelToTag(Ljava/lang/String;)I
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 147
    .local v0, "length":I
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 148
    add-int/lit8 v1, v0, -0x8

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    return v1

    .line 150
    :cond_0
    return v2
.end method

.method private static native native_deleteTagData(II)I
.end method

.method private static native native_setCounterSet(II)I
.end method

.method private static native native_tagSocketFd(Ljava/io/FileDescriptor;II)I
.end method

.method private static native native_untagSocketFd(Ljava/io/FileDescriptor;)I
.end method

.method public static resetKernelUidStats(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 133
    const-string/jumbo v1, "net.qtaguid_enabled"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {v2, p0}, Lcom/android/server/NetworkManagementSocketTagger;->native_deleteTagData(II)I

    move-result v0

    .line 135
    .local v0, "errno":I
    if-gez v0, :cond_0

    .line 136
    const-string/jumbo v1, "NetworkManagementSocketTagger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem clearing counters for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0    # "errno":I
    :cond_0
    return-void
.end method

.method public static setKernelCounterSet(II)V
    .locals 4
    .param p0, "uid"    # I
    .param p1, "counterSet"    # I

    .prologue
    const/4 v2, 0x0

    .line 123
    const-string/jumbo v1, "net.qtaguid_enabled"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {p1, p0}, Lcom/android/server/NetworkManagementSocketTagger;->native_setCounterSet(II)I

    move-result v0

    .line 125
    .local v0, "errno":I
    if-gez v0, :cond_0

    .line 126
    const-string/jumbo v1, "NetworkManagementSocketTagger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKernelCountSet("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "errno":I
    :cond_0
    return-void
.end method

.method public static setThreadSocketStatsTag(I)I
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 55
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    iget v0, v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    .line 56
    .local v0, "old":I
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    iput p0, v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    .line 57
    return v0
.end method

.method public static setThreadSocketStatsUid(I)I
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 65
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    iget v0, v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    .line 66
    .local v0, "old":I
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    iput p0, v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    .line 67
    return v0
.end method

.method private tagSocketFd(Ljava/io/FileDescriptor;II)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "tag"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 85
    if-ne p2, v1, :cond_0

    if-ne p3, v1, :cond_0

    return-void

    .line 87
    :cond_0
    const-string/jumbo v1, "net.qtaguid_enabled"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-static {p1, p2, p3}, Lcom/android/server/NetworkManagementSocketTagger;->native_tagSocketFd(Ljava/io/FileDescriptor;II)I

    move-result v0

    .line 89
    .local v0, "errno":I
    if-gez v0, :cond_1

    .line 90
    const-string/jumbo v1, "NetworkManagementSocketTagger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tagSocketFd("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    const-string/jumbo v3, ", "

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    const-string/jumbo v3, ") failed with errno"

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v0    # "errno":I
    :cond_1
    return-void
.end method

.method private unTagSocketFd(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 106
    sget-object v2, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    .line 107
    .local v1, "options":Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
    iget v2, v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    if-ne v2, v3, :cond_0

    return-void

    .line 109
    :cond_0
    const-string/jumbo v2, "net.qtaguid_enabled"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-static {p1}, Lcom/android/server/NetworkManagementSocketTagger;->native_untagSocketFd(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 111
    .local v0, "errno":I
    if-gez v0, :cond_1

    .line 112
    const-string/jumbo v2, "NetworkManagementSocketTagger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "untagSocket("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") failed with errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0    # "errno":I
    :cond_1
    return-void
.end method


# virtual methods
.method public tag(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v1, Lcom/android/server/NetworkManagementSocketTagger;->threadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;

    .line 77
    .local v0, "options":Lcom/android/server/NetworkManagementSocketTagger$SocketTags;
    iget v1, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/os/StrictMode;->vmUntaggedSocketEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {}, Landroid/os/StrictMode;->onUntaggedSocket()V

    .line 81
    :cond_0
    iget v1, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsTag:I

    iget v2, v0, Lcom/android/server/NetworkManagementSocketTagger$SocketTags;->statsUid:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/NetworkManagementSocketTagger;->tagSocketFd(Ljava/io/FileDescriptor;II)V

    .line 82
    return-void
.end method

.method public untag(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementSocketTagger;->unTagSocketFd(Ljava/io/FileDescriptor;)V

    .line 103
    return-void
.end method
