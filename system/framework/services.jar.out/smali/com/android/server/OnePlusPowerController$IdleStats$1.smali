.class Lcom/android/server/OnePlusPowerController$IdleStats$1;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusPowerController$IdleStats;->recordIdleItemLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/OnePlusPowerController$IdleStats;

.field final synthetic val$memStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController$IdleStats;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/OnePlusPowerController$IdleStats;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->this$1:Lcom/android/server/OnePlusPowerController$IdleStats;

    iput-object p2, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->val$memStream:Ljava/io/ByteArrayOutputStream;

    .line 1818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1821
    const/4 v1, 0x0

    .line 1823
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->this$1:Lcom/android/server/OnePlusPowerController$IdleStats;

    iget-object v2, v2, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1824
    .local v1, "stream":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->val$memStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 1825
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1826
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1827
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1828
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->this$1:Lcom/android/server/OnePlusPowerController$IdleStats;

    iget-object v2, v2, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1829
    :catch_0
    move-exception v0

    .line 1830
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "OnePlusPowerController"

    const-string/jumbo v3, "Error writing idle items"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1831
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleStats$1;->this$1:Lcom/android/server/OnePlusPowerController$IdleStats;

    iget-object v2, v2, Lcom/android/server/OnePlusPowerController$IdleStats;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method