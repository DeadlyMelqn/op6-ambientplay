.class Lcom/android/server/wm/RemoteEventTrace;
.super Ljava/lang/Object;
.source "RemoteEventTrace.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteEventTrace"

.field static final sigil:[B


# instance fields
.field private final mOut:Ljava/io/DataOutputStream;

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wm/RemoteEventTrace;->sigil:[B

    .line 27
    return-void

    .line 32
    nop

    :array_0
    .array-data 1
        -0x4t
        -0x4t
        -0x4t
        -0x4t
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/wm/RemoteEventTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 39
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteEventTrace;->mOut:Ljava/io/DataOutputStream;

    .line 40
    return-void
.end method

.method static logException(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 67
    const-string/jumbo v0, "RemoteEventTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception writing to SurfaceTrace (client vanished?): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method private writeSigil()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/wm/RemoteEventTrace;->mOut:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/android/server/wm/RemoteEventTrace;->sigil:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 64
    return-void
.end method


# virtual methods
.method closeSurfaceTransaction()V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RemoteEventTrace;->mOut:Ljava/io/DataOutputStream;

    const-string/jumbo v2, "CloseTransaction"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/android/server/wm/RemoteEventTrace;->writeSigil()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/wm/RemoteEventTrace;->logException(Ljava/lang/Exception;)V

    .line 58
    iget-object v1, p0, Lcom/android/server/wm/RemoteEventTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->disableSurfaceTrace()V

    goto :goto_0
.end method

.method openSurfaceTransaction()V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/RemoteEventTrace;->mOut:Ljava/io/DataOutputStream;

    const-string/jumbo v2, "OpenTransaction"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/android/server/wm/RemoteEventTrace;->writeSigil()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/android/server/wm/RemoteEventTrace;->logException(Ljava/lang/Exception;)V

    .line 48
    iget-object v1, p0, Lcom/android/server/wm/RemoteEventTrace;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->disableSurfaceTrace()V

    goto :goto_0
.end method
