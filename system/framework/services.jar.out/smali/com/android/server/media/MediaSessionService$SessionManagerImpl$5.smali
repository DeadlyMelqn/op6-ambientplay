.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$suggestedStream:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;III)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->val$direction:I

    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->val$suggestedStream:I

    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->val$flags:I

    .line 1386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1391
    .local v4, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-get1(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->val$direction:I

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->val$suggestedStream:I

    .line 1392
    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->val$flags:I

    const-string/jumbo v5, "MediaSessionService"

    .line 1391
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1395
    :catch_0
    move-exception v7

    .line 1396
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot adjust volume: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->val$direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1397
    const-string/jumbo v2, ", suggestedStream="

    .line 1396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1397
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->val$suggestedStream:I

    .line 1396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1397
    const-string/jumbo v2, ", flags="

    .line 1396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1397
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;->val$flags:I

    .line 1396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1393
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 1394
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "MediaSessionService"

    const-string/jumbo v1, "Error adjusting default volume."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
