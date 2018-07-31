.class Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;
.super Landroid/os/AsyncTask;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadWallpaper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

.field final synthetic val$needsReset:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput-boolean p2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->val$needsReset:Z

    .line 451
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 456
    :try_start_0
    iget-boolean v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->val$needsReset:Z

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 459
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Throwable;
    move-object v2, v0

    .line 464
    .local v2, "exception":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 465
    return-object v5

    .line 468
    :cond_1
    if-eqz v0, :cond_3

    .line 472
    const-string/jumbo v3, "ImageWallpaper"

    const-string/jumbo v4, "Unable to load wallpaper!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 480
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 481
    return-object v5

    .line 475
    :catch_1
    move-exception v1

    .line 477
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "ImageWallpaper"

    const-string/jumbo v4, "Unable reset to default wallpaper!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 485
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    return-object v3

    .line 486
    :catch_2
    move-exception v0

    .line 487
    const-string/jumbo v3, "ImageWallpaper"

    const-string/jumbo v4, "Unable to load default wallpaper!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    :cond_3
    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 452
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput-object v3, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 496
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 497
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 499
    if-eqz p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iput-object p1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 501
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 502
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, v1, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 505
    :cond_0
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    const-string/jumbo v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallpaper loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-wrap0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;Z)Z

    .line 510
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-get0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v0, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-set0(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 515
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-static {v0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->-set1(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Z)Z

    .line 516
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 493
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
