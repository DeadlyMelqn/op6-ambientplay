.class public Landroid/media/ImageWriter;
.super Ljava/lang/Object;
.source "ImageWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$ListenerHandler;,
        Landroid/media/ImageWriter$OnImageReleasedListener;,
        Landroid/media/ImageWriter$WriterSurfaceImage;
    }
.end annotation


# instance fields
.field private mDequeuedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mEstimatedNativeAllocBytes:I

.field private mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

.field private mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private mWriterFormat:I


# direct methods
.method static synthetic -get0(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;
    .locals 1
    .param p0, "-this"    # Landroid/media/ImageWriter;

    .prologue
    iget-object v0, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Landroid/media/ImageWriter;

    .prologue
    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .locals 0
    .param p0, "-this"    # Landroid/media/ImageWriter;
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->abortImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 874
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 875
    invoke-static {}, Landroid/media/ImageWriter;->nativeClassInit()V

    .line 81
    return-void
.end method

.method protected constructor <init>(Landroid/view/Surface;II)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "format"    # I

    .prologue
    const/4 v4, 0x1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 93
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 178
    if-eqz p1, :cond_0

    if-ge p2, v4, :cond_1

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal input argument: surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    const-string/jumbo v3, ", maxImages: "

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_1
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    .line 185
    if-nez p3, :cond_2

    .line 186
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result p3

    .line 190
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/media/ImageWriter;->nativeInit(Ljava/lang/Object;Landroid/view/Surface;II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 198
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 200
    .local v0, "surfSize":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2, p3, v4}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v1

    .line 199
    iput v1, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 202
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v2, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 203
    return-void
.end method

.method private abortImage(Landroid/media/Image;)V
    .locals 4
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 626
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "image shouldn\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :cond_0
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "It is illegal to abort some image that is not dequeued yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    .line 634
    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 635
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_2

    .line 636
    return-void

    .line 645
    :cond_2
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Landroid/media/ImageWriter;->cancelImage(JLandroid/media/Image;)V

    .line 646
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 647
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-wrap0(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 648
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 649
    return-void
.end method

.method private attachAndQueueInputImage(Landroid/media/Image;)V
    .locals 13
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "image shouldn\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 542
    const-string/jumbo v2, "Can not attach an image that is owned ImageWriter already"

    .line 541
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->isAttachable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 551
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Image was not detached from last owner, or image  is not detachable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 558
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 559
    .local v0, "crop":Landroid/graphics/Rect;
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual {p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v6

    .line 560
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v7

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    .line 559
    invoke-direct/range {v1 .. v12}, Landroid/media/ImageWriter;->nativeAttachAndQueueImage(JJIJIIII)I

    .line 561
    return-void
.end method

.method private synchronized native declared-synchronized cancelImage(JLandroid/media/Image;)V
.end method

.method private isImageOwnedByMe(Landroid/media/Image;)Z
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    const/4 v2, 0x0

    .line 652
    instance-of v1, p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    if-nez v1, :cond_0

    .line 653
    return v2

    :cond_0
    move-object v0, p1

    .line 655
    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 656
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 657
    return v2

    .line 660
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private synchronized native declared-synchronized nativeAttachAndQueueImage(JJIJIIII)I
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose(J)V
.end method

.method private synchronized native declared-synchronized nativeDequeueInputImage(JLandroid/media/Image;)V
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;Landroid/view/Surface;II)J
.end method

.method private synchronized native declared-synchronized nativeQueueInputImage(JLandroid/media/Image;JIIII)V
.end method

.method public static newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .locals 2
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I

    .prologue
    .line 122
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;II)V

    return-object v0
.end method

.method public static newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I
    .param p2, "format"    # I

    .prologue
    .line 168
    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    new-instance v0, Landroid/media/ImageWriter;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;II)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    .prologue
    move-object v2, p0

    .line 591
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 592
    .local v2, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageWriter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageWriter;

    .line 593
    .local v1, "iw":Landroid/media/ImageWriter;
    if-nez v1, :cond_0

    .line 594
    return-void

    .line 598
    :cond_0
    iget-object v3, v1, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 599
    :try_start_0
    iget-object v0, v1, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "handler":Landroid/os/Handler;
    monitor-exit v3

    .line 601
    if-eqz v0, :cond_1

    .line 602
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 604
    :cond_1
    return-void

    .line 598
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 486
    invoke-virtual {p0, v2, v2}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 487
    iget-object v2, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "image$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    .line 488
    .local v0, "image":Landroid/media/Image;
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 490
    .end local v0    # "image":Landroid/media/Image;
    :cond_0
    iget-object v2, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 491
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Landroid/media/ImageWriter;->nativeClose(J)V

    .line 492
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 494
    iget v2, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    if-lez v2, :cond_1

    .line 495
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 496
    iput v4, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 498
    :cond_1
    return-void
.end method

.method public dequeueInputImage()Landroid/media/Image;
    .locals 4

    .prologue
    .line 277
    iget v1, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    .line 278
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 279
    const-string/jumbo v2, "PRIVATE format ImageWriter doesn\'t support this operation since the images are inaccessible to the application!"

    .line 278
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    if-lt v1, v2, :cond_1

    .line 284
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Already dequeued max number of Images "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageWriter;->mMaxImages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_1
    new-instance v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageWriter$WriterSurfaceImage;-><init>(Landroid/media/ImageWriter;)V

    .line 287
    .local v0, "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v2, v3, v0}, Landroid/media/ImageWriter;->nativeDequeueInputImage(JLandroid/media/Image;)V

    .line 288
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 290
    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 503
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 507
    return-void

    .line 504
    :catchall_0
    move-exception v0

    .line 505
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 504
    throw v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/media/ImageWriter;->mMaxImages:I

    return v0
.end method

.method public queueInputImage(Landroid/media/Image;)V
    .locals 14
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v11

    .line 350
    .local v11, "ownedByMe":Z
    if-eqz v11, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v0, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Image from ImageWriter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    if-nez v11, :cond_3

    .line 356
    invoke-virtual {p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/media/ImageReader;

    if-nez v0, :cond_2

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/ImageReader;

    .line 363
    .local v12, "prevOwner":Landroid/media/ImageReader;
    invoke-virtual {v12, p1}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    .line 364
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->attachAndQueueInputImage(Landroid/media/Image;)V

    .line 368
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 369
    return-void

    .line 372
    .end local v12    # "prevOwner":Landroid/media/ImageReader;
    :cond_3
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 373
    .local v10, "crop":Landroid/graphics/Rect;
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    iget v6, v10, Landroid/graphics/Rect;->left:I

    iget v7, v10, Landroid/graphics/Rect;->top:I

    .line 374
    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget v9, v10, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v3, p1

    .line 373
    invoke-direct/range {v0 .. v9}, Landroid/media/ImageWriter;->nativeQueueInputImage(JLandroid/media/Image;JIIII)V

    .line 383
    if-eqz v11, :cond_4

    .line 384
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v13, p1

    .line 386
    check-cast v13, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 387
    .local v13, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-static {v13}, Landroid/media/ImageWriter$WriterSurfaceImage;->-wrap0(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, v13, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 390
    .end local v13    # "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_4
    return-void
.end method

.method public setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageWriter$OnImageReleasedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 454
    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 455
    if-eqz p1, :cond_4

    .line 456
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 457
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-nez v0, :cond_1

    .line 458
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 459
    const-string/jumbo v3, "handler is null but the current thread is not a looper"

    .line 458
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 456
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 461
    :cond_1
    iget-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    invoke-virtual {v1}, Landroid/media/ImageWriter$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 462
    :cond_2
    new-instance v1, Landroid/media/ImageWriter$ListenerHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/ImageWriter$ListenerHandler;-><init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 464
    :cond_3
    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "looper":Landroid/os/Looper;
    :goto_1
    monitor-exit v2

    .line 470
    return-void

    .line 466
    :cond_4
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 467
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
