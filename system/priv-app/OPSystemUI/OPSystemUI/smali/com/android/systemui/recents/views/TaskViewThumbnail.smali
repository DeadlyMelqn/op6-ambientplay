.class public Lcom/android/systemui/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# static fields
.field private static final TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

.field private static final TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;


# instance fields
.field protected mBgFillPaint:Landroid/graphics/Paint;

.field protected mBitmapShader:Landroid/graphics/BitmapShader;

.field protected mCornerRadius:I

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplayOrientation:I

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFullscreenThumbnailScale:F

.field private mInvisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field protected mLockedPaint:Landroid/graphics/Paint;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOverlayHeaderOnThumbnailActionBar:Z

.field private mSizeToFit:Z

.field private mTask:Lcom/android/systemui/recents/model/Task;

.field private mTaskBar:Landroid/view/View;

.field protected mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

.field protected mThumbnailRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mThumbnailScale:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTitleBarHeight:I

.field protected mUserLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    .line 54
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    .line 65
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 71
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    .line 72
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    .line 78
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    .line 83
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    .line 84
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v3, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    .line 111
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 112
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 115
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0703df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    .line 116
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    const v1, 0x7f0703bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    .line 119
    return-void
.end method


# virtual methods
.method bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "disabledInSafeMode"    # Z
    .param p3, "displayOrientation"    # I
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 366
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    .line 367
    iput p3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    .line 368
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 369
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    :cond_0
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    .line 376
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 403
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "TaskViewThumbnail"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    const-string/jumbo v0, " mTaskViewRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    const-string/jumbo v0, " mThumbnailRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    const-string/jumbo v0, " mThumbnailScale="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 407
    const-string/jumbo v0, " mDimAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 408
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 409
    return-void
.end method

.method protected getDrawPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isTaskBound()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->taskId:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v0, v1, :cond_1

    .line 397
    :cond_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v0, v0, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Lcom/android/systemui/recents/model/ThumbnailData;)V

    .line 400
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 143
    .local v12, "viewWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 145
    .local v11, "viewHeight":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 144
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 147
    .local v9, "thumbnailWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 146
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 149
    .local v8, "thumbnailHeight":I
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    if-eqz v0, :cond_1

    .line 150
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v4, v11

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    .line 151
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 150
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 179
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_5

    if-lez v9, :cond_5

    if-lez v8, :cond_5

    .line 153
    const/4 v10, 0x0

    .line 154
    .local v10, "topOffset":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v10, v0, v1

    .line 159
    :cond_2
    if-ge v9, v12, :cond_3

    .line 161
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v0, v9, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v1, v0

    int-to-float v2, v10

    .line 162
    int-to-float v3, v12

    int-to-float v4, v11

    .line 163
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 161
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 165
    :cond_3
    if-ge v8, v11, :cond_4

    .line 167
    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v0, v8, v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v2, v0

    .line 168
    int-to-float v3, v12

    int-to-float v4, v11

    .line 169
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 167
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 173
    :cond_4
    const/4 v1, 0x0

    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v4, v8

    .line 174
    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 173
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 176
    .end local v10    # "topOffset":I
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v4, v11

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    .line 177
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 176
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method onTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 0
    .param p1, "thumbnailData"    # Lcom/android/systemui/recents/model/ThumbnailData;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Lcom/android/systemui/recents/model/ThumbnailData;)V

    .line 385
    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 132
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setLeftTopRightBottom(IIII)V

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    .line 134
    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0
    .param p1, "dimAlpha"    # F

    .prologue
    .line 346
    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 348
    return-void
.end method

.method public setOverlayHeaderOnThumbnailActionBar(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    .line 322
    return-void
.end method

.method public setSizeToFit(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    .line 314
    return-void
.end method

.method setThumbnail(Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 7
    .param p1, "thumbnailData"    # Lcom/android/systemui/recents/model/ThumbnailData;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 184
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->isTopAppLocked:Z

    if-eqz v2, :cond_0

    .line 185
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 186
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 190
    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 191
    iget-object v0, p1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    .line 192
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 193
    iget v2, p1, Lcom/android/systemui/recents/model/ThumbnailData;->scale:F

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    .line 194
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 195
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 196
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    .line 197
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p1, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p1, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p1, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p1, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 196
    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 199
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 208
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 203
    :cond_1
    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 204
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 205
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 206
    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    goto :goto_0
.end method

.method unbindFromTask()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    .line 390
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Lcom/android/systemui/recents/model/ThumbnailData;)V

    .line 391
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method updateClipToTaskBar(Landroid/view/View;)V
    .locals 0
    .param p1, "taskBar"    # Landroid/view/View;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    .line 327
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 328
    return-void
.end method

.method public updateThumbnailMatrix()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 254
    iput v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    .line 255
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    if-eqz v5, :cond_1

    .line 258
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez v5, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 259
    .local v1, "isStackTask":Z
    :goto_0
    const/4 v4, 0x0

    .line 260
    .local v4, "yOffset":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    .line 301
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v6, v6, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v6, v7

    .line 302
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v7, v7, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v7, v8

    .line 301
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 303
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    iget v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 304
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 306
    .end local v1    # "isStackTask":Z
    .end local v4    # "yOffset":I
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v5, :cond_2

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 309
    :cond_2
    return-void

    .line 258
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isStackTask":Z
    goto :goto_0

    .line 264
    .restart local v4    # "yOffset":I
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    if-eqz v5, :cond_6

    .line 266
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 267
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 266
    div-float v3, v5, v6

    .line 269
    .local v3, "viewAspectRatio":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 270
    .local v2, "thumbnailAspectRatio":F
    cmpl-float v5, v3, v2

    if-lez v5, :cond_5

    .line 272
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 271
    iput v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_1

    .line 274
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 275
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 274
    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1

    .line 277
    .end local v2    # "thumbnailAspectRatio":F
    .end local v3    # "viewAspectRatio":F
    :cond_6
    if-eqz v1, :cond_9

    .line 278
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    div-float v0, v6, v5

    .line 279
    .local v0, "invThumbnailScale":F
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    if-ne v5, v7, :cond_8

    .line 280
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    iget v5, v5, Lcom/android/systemui/recents/model/ThumbnailData;->orientation:I

    if-ne v5, v7, :cond_7

    .line 283
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1

    .line 288
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 287
    mul-float/2addr v5, v0

    iput v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1

    .line 292
    :cond_8
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1

    .line 298
    .end local v0    # "invThumbnailScale":F
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 299
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 297
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1
.end method

.method updateThumbnailPaintFilter()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0xff

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x437f0000    # 255.0f

    .line 212
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v5, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v5, v8, v5

    mul-float/2addr v5, v7

    float-to-int v3, v5

    .line 216
    .local v3, "mul":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_3

    .line 217
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    if-eqz v5, :cond_2

    .line 219
    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 220
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v4, v8, v5

    .line 221
    .local v4, "scale":F
    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    .line 222
    .local v2, "mat":[F
    const/4 v5, 0x0

    aput v4, v2, v5

    .line 223
    const/4 v5, 0x6

    aput v4, v2, v5

    .line 224
    const/16 v5, 0xc

    aput v4, v2, v5

    .line 225
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/4 v6, 0x4

    aput v5, v2, v6

    .line 226
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/16 v6, 0x9

    aput v5, v2, v6

    .line 227
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/16 v6, 0xe

    aput v5, v2, v6

    .line 228
    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    sget-object v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 229
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 230
    .local v0, "filter":Landroid/graphics/ColorMatrixColorFilter;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 231
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 232
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 245
    .end local v0    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    .end local v2    # "mat":[F
    .end local v4    # "scale":F
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v5, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    .line 248
    :cond_1
    return-void

    .line 234
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/LightingColorFilter;->setColorMultiply(I)V

    .line 235
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 236
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 238
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 241
    :cond_3
    move v1, v3

    .line 242
    .local v1, "grey":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 243
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method updateThumbnailVisibility(I)V
    .locals 3
    .param p1, "clipBottom"    # I

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 333
    .local v0, "invisible":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eq v0, v1, :cond_0

    .line 334
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    .line 335
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    .line 339
    :cond_0
    return-void

    .line 332
    .end local v0    # "invisible":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "invisible":Z
    goto :goto_0
.end method
