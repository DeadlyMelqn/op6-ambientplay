.class public Landroid/util/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 50
    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static maybeUnwrapIOException(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/RuntimeException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    instance-of v0, p0, Landroid/os/ParcelableException;

    if-eqz v0, :cond_0

    .line 39
    check-cast p0, Landroid/os/ParcelableException;

    .end local p0    # "e":Ljava/lang/RuntimeException;
    const-class v0, Ljava/io/IOException;

    invoke-virtual {p0, v0}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 78
    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/lang/RuntimeException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 72
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TE;>;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method public static wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "e"    # Ljava/io/IOException;

    .prologue
    .line 34
    new-instance v0, Landroid/os/ParcelableException;

    invoke-direct {v0, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
