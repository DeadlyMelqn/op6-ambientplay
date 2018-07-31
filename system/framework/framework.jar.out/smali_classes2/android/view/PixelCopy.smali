.class public final Landroid/view/PixelCopy;
.super Ljava/lang/Object;
.source "PixelCopy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    }
.end annotation


# static fields
.field public static final ERROR_DESTINATION_INVALID:I = 0x5

.field public static final ERROR_SOURCE_INVALID:I = 0x4

.field public static final ERROR_SOURCE_NO_DATA:I = 0x3

.field public static final ERROR_TIMEOUT:I = 0x2

.field public static final ERROR_UNKNOWN:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "source"    # Landroid/view/Surface;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 155
    return-void
.end method

.method public static request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 3
    .param p0, "source"    # Landroid/view/Surface;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p4, "listenerThread"    # Landroid/os/Handler;

    .prologue
    .line 179
    invoke-static {p2}, Landroid/view/PixelCopy;->validateBitmapDest(Landroid/graphics/Bitmap;)V

    .line 180
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Surface isn\'t valid, source.isValid() == false"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sourceRect is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->copySurfaceInto(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 188
    .local v0, "result":I
    new-instance v1, Landroid/view/PixelCopy$1;

    invoke-direct {v1, p3, v0}, Landroid/view/PixelCopy$1;-><init>(Landroid/view/PixelCopy$OnPixelCopyFinishedListener;I)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method

.method public static request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "source"    # Landroid/view/SurfaceView;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 108
    return-void
.end method

.method public static request(Landroid/view/SurfaceView;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "source"    # Landroid/view/SurfaceView;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p4, "listenerThread"    # Landroid/os/Handler;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 134
    return-void
.end method

.method public static request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "source"    # Landroid/view/Window;
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p3, "listenerThread"    # Landroid/os/Handler;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 224
    return-void
.end method

.method public static request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    .locals 3
    .param p0, "source"    # Landroid/view/Window;
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "dest"    # Landroid/graphics/Bitmap;
    .param p3, "listener"    # Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    .param p4, "listenerThread"    # Landroid/os/Handler;

    .prologue
    .line 257
    invoke-static {p2}, Landroid/view/PixelCopy;->validateBitmapDest(Landroid/graphics/Bitmap;)V

    .line 258
    if-nez p0, :cond_0

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "source is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 262
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 263
    const-string/jumbo v2, "Only able to copy windows with decor views"

    .line 262
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_1
    const/4 v0, 0x0

    .line 266
    .local v0, "surface":Landroid/view/Surface;
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 267
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 269
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 270
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 271
    const-string/jumbo v2, "Window doesn\'t have a backing surface!"

    .line 270
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_4
    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 274
    return-void
.end method

.method private static validateBitmapDest(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 278
    if-nez p0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    return-void
.end method
