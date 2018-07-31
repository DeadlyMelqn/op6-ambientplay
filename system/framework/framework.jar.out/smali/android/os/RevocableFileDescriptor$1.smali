.class Landroid/os/RevocableFileDescriptor$1;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "RevocableFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RevocableFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/RevocableFileDescriptor;


# direct methods
.method constructor <init>(Landroid/os/RevocableFileDescriptor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/RevocableFileDescriptor;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    .line 104
    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    .line 1
    return-void
.end method

.method private checkRevoked()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-get1(Landroid/os/RevocableFileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Landroid/system/ErrnoException;

    const-string/jumbo v1, "RevocableFileDescriptor"

    sget v2, Landroid/system/OsConstants;->EPERM:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public onFsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 149
    const-string/jumbo v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onFsync()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 151
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-get0(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 152
    return-void
.end method

.method public onGetSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 114
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-get0(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    return-wide v0
.end method

.method public onRead(JI[B)I
    .locals 7
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, "n":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-get0(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    sub-int v3, p3, v2

    int-to-long v4, v2

    add-long/2addr v4, p1

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v2, v0

    .line 129
    :cond_0
    return v2

    .line 125
    :catch_0
    move-exception v6

    .line 126
    .local v6, "e":Ljava/io/InterruptedIOException;
    iget v0, v6, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v2, v0

    goto :goto_0
.end method

.method public onRelease()V
    .locals 2

    .prologue
    .line 156
    const-string/jumbo v0, "RevocableFileDescriptor"

    const-string/jumbo v1, "onRelease()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/RevocableFileDescriptor;->-set0(Landroid/os/RevocableFileDescriptor;Z)Z

    .line 158
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-get0(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 159
    return-void
.end method

.method public onWrite(JI[B)I
    .locals 7
    .param p1, "offset"    # J
    .param p3, "size"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/os/RevocableFileDescriptor$1;->checkRevoked()V

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "n":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor$1;->this$0:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0}, Landroid/os/RevocableFileDescriptor;->-get0(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    sub-int v3, p3, v2

    int-to-long v4, v2

    add-long/2addr v4, p1

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v2, v0

    .line 144
    :cond_0
    return v2

    .line 140
    :catch_0
    move-exception v6

    .line 141
    .local v6, "e":Ljava/io/InterruptedIOException;
    iget v0, v6, Ljava/io/InterruptedIOException;->bytesTransferred:I

    add-int/2addr v2, v0

    goto :goto_0
.end method
