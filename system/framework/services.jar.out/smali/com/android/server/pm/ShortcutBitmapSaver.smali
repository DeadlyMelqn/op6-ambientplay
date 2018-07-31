.class public Lcom/android/server/pm/ShortcutBitmapSaver;
.super Ljava/lang/Object;
.source "ShortcutBitmapSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    }
.end annotation


# static fields
.field private static final ADD_DELAY_BEFORE_SAVE_FOR_TEST:Z = false

.field private static final DEBUG:Z = false

.field private static final SAVE_DELAY_MS_FOR_TEST:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final SAVE_WAIT_TIMEOUT_MS:J

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mPendingItems:Ljava/util/Deque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingItems"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 8
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->SAVE_WAIT_TIMEOUT_MS:J

    .line 78
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 79
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 78
    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 108
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    .line 209
    new-instance v0, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;

    invoke-direct {v0, v3, p0}, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    .line 111
    iput-object p1, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    .line 113
    return-void
.end method

.method static synthetic lambda$-com_android_server_pm_ShortcutBitmapSaver_4411(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private processPendingItems()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x800

    .line 238
    const/4 v4, 0x0

    .line 242
    .local v4, "shortcut":Landroid/content/pm/ShortcutInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    return v9

    .line 246
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v2, "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    :try_start_4
    monitor-exit v6

    .line 249
    iget-object v4, v2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->shortcut:Landroid/content/pm/ShortcutInfo;

    .line 252
    .local v4, "shortcut":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v5

    if-nez v5, :cond_5

    .line 286
    if-eqz v4, :cond_2

    .line 287
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 288
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 292
    :cond_1
    invoke-virtual {v4, v7}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 253
    :cond_2
    return v8

    .line 242
    .end local v2    # "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    .local v4, "shortcut":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v6

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 282
    .end local v4    # "shortcut":Landroid/content/pm/ShortcutInfo;
    :catchall_1
    move-exception v5

    .line 286
    if-eqz v4, :cond_4

    .line 287
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 288
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 292
    :cond_3
    invoke-virtual {v4, v7}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 282
    :cond_4
    throw v5

    .line 260
    .restart local v2    # "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    .local v4, "shortcut":Landroid/content/pm/ShortcutInfo;
    :cond_5
    const/4 v1, 0x0

    .line 262
    .local v1, "file":Ljava/io/File;
    :try_start_6
    iget-object v5, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    .line 263
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    .line 262
    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/ShortcutService;->openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    move-result-object v3

    .line 264
    .local v3, "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->getFile()Ljava/io/File;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    .line 267
    .local v1, "file":Ljava/io/File;
    :try_start_7
    iget-object v5, v2, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;->bytes:[B

    invoke-virtual {v3, v5}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 269
    :try_start_8
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 272
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 286
    if-eqz v4, :cond_7

    .line 287
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 288
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 292
    :cond_6
    invoke-virtual {v4, v7}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 295
    :cond_7
    return v8

    .line 268
    :catchall_2
    move-exception v5

    .line 269
    :try_start_9
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 268
    throw v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 274
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    :try_start_a
    const-string/jumbo v5, "ShortcutService"

    const-string/jumbo v6, "Unable to write bitmap to file"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 286
    :cond_8
    if-eqz v4, :cond_a

    .line 287
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    .line 288
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutBitmapSaver;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 292
    :cond_9
    invoke-virtual {v4, v7}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 280
    :cond_a
    return v8
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v4, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v4

    .line 300
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v0

    .line 301
    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pending saves: Num="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " Executor="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    .line 305
    .local v1, "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    const-string/jumbo v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 299
    .end local v0    # "N":I
    .end local v1    # "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "N":I
    .restart local v2    # "item$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    .line 310
    return-void
.end method

.method public getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    move-result v0

    .line 137
    .local v0, "success":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 140
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic lambda$-com_android_server_pm_ShortcutBitmapSaver_7645()V
    .locals 1

    .prologue
    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->processPendingItems()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public removeIcon(Landroid/content/pm/ShortcutInfo;)V
    .locals 2
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    const/4 v1, 0x0

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->setIconResName(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->setBitmapPath(Ljava/lang/String;)V

    .line 150
    const/16 v0, 0xa0c

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 153
    return-void
.end method

.method public saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 14
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "maxDimension"    # I
    .param p3, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p4, "quality"    # I

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 158
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 161
    .local v6, "original":Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 162
    const-string/jumbo v10, "ShortcutService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Missing icon: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 169
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    move/from16 v0, p2

    invoke-static {v6, v0}, Lcom/android/server/pm/ShortcutService;->shrinkBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 171
    .local v9, "shrunk":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v7, 0x0

    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/high16 v10, 0x10000

    invoke-direct {v8, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 172
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v9, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 173
    const-string/jumbo v10, "ShortcutService"

    const-string/jumbo v12, "Unable to compress bitmap"

    invoke-static {v10, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 176
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 177
    .local v2, "bytes":[B
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 178
    if-eqz v8, :cond_2

    :try_start_3
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    if-eqz v11, :cond_7

    :try_start_4
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    :catchall_0
    move-exception v10

    move-object v7, v8

    .line 180
    .end local v2    # "bytes":[B
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eq v9, v6, :cond_3

    .line 181
    :try_start_5
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    :cond_3
    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    .line 184
    .end local v9    # "shrunk":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "ShortcutService"

    const-string/jumbo v11, "Unable to write bitmap to file"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    return-void

    .line 178
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v2    # "bytes":[B
    .restart local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "shrunk":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v11

    goto :goto_0

    .end local v2    # "bytes":[B
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v10

    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v11

    move-object v13, v11

    move-object v11, v10

    move-object v10, v13

    :goto_3
    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_4
    :goto_4
    if-eqz v11, :cond_6

    :try_start_8
    throw v11

    .line 179
    :catchall_2
    move-exception v10

    goto :goto_1

    .line 178
    :catch_3
    move-exception v12

    if-nez v11, :cond_5

    move-object v11, v12

    goto :goto_4

    :cond_5
    if-eq v11, v12, :cond_4

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 180
    .restart local v2    # "bytes":[B
    .restart local v8    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_7
    if-eq v9, v6, :cond_8

    .line 181
    :try_start_9
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_0

    .line 190
    :cond_8
    const/16 v10, 0x808

    .line 189
    invoke-virtual {p1, v10}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 192
    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_9

    .line 193
    const/16 v10, 0x200

    invoke-virtual {p1, v10}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 197
    :cond_9
    new-instance v5, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;

    const/4 v10, 0x0

    invoke-direct {v5, p1, v2, v10}, Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;-><init>(Landroid/content/pm/ShortcutInfo;[BLcom/android/server/pm/ShortcutBitmapSaver$PendingItem;)V

    .line 198
    .local v5, "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    iget-object v11, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    monitor-enter v11

    .line 199
    :try_start_a
    iget-object v10, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mPendingItems:Ljava/util/Deque;

    invoke-interface {v10, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit v11

    .line 206
    iget-object v10, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void

    .line 198
    :catchall_3
    move-exception v10

    monitor-exit v11

    throw v10

    .line 178
    .end local v2    # "bytes":[B
    .end local v5    # "item":Lcom/android/server/pm/ShortcutBitmapSaver$PendingItem;
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v10

    goto :goto_3

    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_5
    move-exception v10

    move-object v7, v8

    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v10

    move-object v7, v8

    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public waitForAllSavesLocked()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 116
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 118
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, Lcom/android/server/pm/-$Lambda$iCTRLJcHnavjRcatPDKSIvElD0U;-><init>(BLjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    return v6

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutBitmapSaver;->mService:Lcom/android/server/pm/ShortcutService;

    const-string/jumbo v3, "Timed out waiting on saving bitmaps."

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "ShortcutService"

    const-string/jumbo v3, "interrupted"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
