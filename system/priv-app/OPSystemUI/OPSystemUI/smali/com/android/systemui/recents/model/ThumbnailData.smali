.class public Lcom/android/systemui/recents/model/ThumbnailData;
.super Ljava/lang/Object;
.source "ThumbnailData.java"


# instance fields
.field public final insets:Landroid/graphics/Rect;

.field public orientation:I

.field public reducedResolution:Z

.field public scale:F

.field public thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    .line 26
    return-void
.end method

.method public static createFromTaskSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/recents/model/ThumbnailData;
    .locals 3
    .param p0, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .prologue
    .line 36
    new-instance v0, Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/ThumbnailData;-><init>()V

    .line 37
    .local v0, "out":Lcom/android/systemui/recents/model/ThumbnailData;
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 39
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 40
    iget-object v2, v0, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/recents/model/ThumbnailData;->orientation:I

    .line 43
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/recents/model/ThumbnailData;->reducedResolution:Z

    .line 44
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v2

    iput v2, v0, Lcom/android/systemui/recents/model/ThumbnailData;->scale:F

    .line 45
    return-object v0
.end method
