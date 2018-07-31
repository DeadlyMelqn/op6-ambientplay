.class public Lcom/android/internal/policy/PipSnapAlgorithm;
.super Ljava/lang/Object;
.source "PipSnapAlgorithm.java"


# static fields
.field private static final CORNER_MAGNET_THRESHOLD:F = 0.3f

.field private static final SNAP_MODE_CORNERS_AND_SIDES:I = 0x1

.field private static final SNAP_MODE_CORNERS_ONLY:I = 0x0

.field private static final SNAP_MODE_EDGE:I = 0x2

.field private static final SNAP_MODE_EDGE_MAGNET_CORNERS:I = 0x3

.field private static final SNAP_MODE_LONG_EDGE_MAGNET_CORNERS:I = 0x4


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultSizePercent:F

.field private final mDefaultSnapMode:I

.field private final mFlingDeceleration:I

.field private mIsMinimized:Z

.field private final mMaxAspectRatioForMinSize:F

.field private final mMinAspectRatioForMinSize:F

.field private final mMinimizedVisibleSize:I

.field private mOrientation:I

.field private final mSnapGravities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    .line 58
    iput v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSnapMode:I

    .line 59
    iput v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    .line 75
    const v1, 0x1050139

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    .line 77
    const v1, 0x105003e

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    .line 79
    const v1, 0x105003c

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    .line 80
    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    .line 81
    iget-object v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    const v2, 0x1050138

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->onConfigurationChanged()V

    .line 84
    return-void
.end method

.method private calculateSnapTargets()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 441
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    packed-switch v0, :pswitch_data_0

    .line 463
    :goto_0
    :pswitch_0
    return-void

    .line 443
    :pswitch_1
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :goto_1
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private distanceToPoint(Landroid/graphics/Point;II)F
    .locals 2
    .param p1, "p"    # Landroid/graphics/Point;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 433
    iget v0, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p3

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method private findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "points"    # [Landroid/graphics/Point;

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "closestPoint":Landroid/graphics/Point;
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 378
    .local v2, "minDistance":F
    const/4 v4, 0x0

    array-length v5, p3

    .end local v0    # "closestPoint":Landroid/graphics/Point;
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, p3, v4

    .line 379
    .local v3, "p":Landroid/graphics/Point;
    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v1

    .line 380
    .local v1, "distance":F
    cmpg-float v6, v1, v2

    if-gez v6, :cond_0

    .line 381
    move-object v0, v3

    .line 382
    .local v0, "closestPoint":Landroid/graphics/Point;
    move v2, v1

    .line 378
    .end local v0    # "closestPoint":Landroid/graphics/Point;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "distance":F
    .end local v3    # "p":Landroid/graphics/Point;
    :cond_1
    return-object v0
.end method

.method private findX(FFF)I
    .locals 1
    .param p1, "slope"    # F
    .param p2, "yIntercept"    # F
    .param p3, "y"    # F

    .prologue
    .line 199
    sub-float v0, p3, p2

    div-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private findY(FFF)I
    .locals 1
    .param p1, "slope"    # F
    .param p2, "yIntercept"    # F
    .param p3, "x"    # F

    .prologue
    .line 195
    mul-float v0, p1, p3

    add-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method private snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;
    .param p3, "boundsOut"    # Landroid/graphics/Rect;

    .prologue
    .line 394
    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    .line 395
    iget v9, p1, Landroid/graphics/Rect;->left:I

    .line 394
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 396
    .local v0, "boundedLeft":I
    iget v7, p2, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    .line 397
    iget v9, p1, Landroid/graphics/Rect;->top:I

    .line 396
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 398
    .local v1, "boundedTop":I
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 399
    iget-boolean v7, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    if-eqz v7, :cond_0

    .line 400
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 401
    return-void

    .line 405
    :cond_0
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 406
    .local v3, "fromLeft":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 407
    .local v5, "fromTop":I
    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 408
    .local v4, "fromRight":I
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 410
    .local v2, "fromBottom":I
    iget v7, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 412
    iget v7, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 413
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 418
    .local v6, "shortest":I
    :goto_0
    if-ne v6, v3, :cond_3

    .line 419
    iget v7, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v7, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 427
    :goto_1
    return-void

    .line 414
    .end local v6    # "shortest":I
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .restart local v6    # "shortest":I
    goto :goto_0

    .line 416
    .end local v6    # "shortest":I
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .restart local v6    # "shortest":I
    goto :goto_0

    .line 420
    :cond_3
    if-ne v6, v5, :cond_4

    .line 421
    iget v7, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 422
    :cond_4
    if-ne v6, v4, :cond_5

    .line 423
    iget v7, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, v7, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 425
    :cond_5
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v0, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method


# virtual methods
.method public applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;
    .param p3, "displaySize"    # Landroid/graphics/Point;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 252
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 253
    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    .line 254
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    sub-int/2addr v0, v1

    .line 257
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 256
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method

.method public applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 5
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;
    .param p3, "snapFraction"    # F

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 305
    cmpg-float v1, p3, v2

    if-gez v1, :cond_0

    .line 306
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 307
    .local v0, "offset":I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 321
    :goto_0
    return-void

    .line 308
    .end local v0    # "offset":I
    :cond_0
    cmpg-float v1, p3, v3

    if-gez v1, :cond_1

    .line 309
    sub-float/2addr p3, v2

    .line 310
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 311
    .restart local v0    # "offset":I
    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 312
    .end local v0    # "offset":I
    :cond_1
    cmpg-float v1, p3, v4

    if-gez v1, :cond_2

    .line 313
    sub-float/2addr p3, v3

    .line 314
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-float/2addr v2, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 315
    .restart local v0    # "offset":I
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    .line 317
    .end local v0    # "offset":I
    :cond_2
    sub-float/2addr p3, v4

    .line 318
    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-float/2addr v2, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 319
    .restart local v0    # "offset":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mSnapMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mMinimizedVisibleSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsMinimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 13
    .param p1, "movementBounds"    # Landroid/graphics/Rect;
    .param p2, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 207
    new-instance v3, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 208
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v2, v4

    .line 209
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    .line 207
    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 210
    .local v3, "pipBounds":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 211
    .local v9, "newBounds":Landroid/graphics/Rect;
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 212
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 213
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v6, "tmpBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v11, v0, [Landroid/graphics/Point;

    .line 215
    .local v11, "snapTargets":[Landroid/graphics/Point;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 217
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 216
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 218
    new-instance v0, Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v11, v8

    .line 215
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 220
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v11}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    .line 221
    .local v10, "snapTarget":Landroid/graphics/Point;
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v10, v0, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v7

    .line 222
    .local v7, "distance":F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 223
    const v1, 0x3e99999a    # 0.3f

    .line 222
    mul-float v12, v0, v1

    .line 224
    .local v12, "thresh":F
    cmpg-float v0, v7, v12

    if-gez v0, :cond_2

    .line 225
    iget v0, v10, Landroid/graphics/Point;->x:I

    iget v1, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 244
    .end local v6    # "tmpBounds":Landroid/graphics/Rect;
    .end local v7    # "distance":F
    .end local v8    # "i":I
    .end local v10    # "snapTarget":Landroid/graphics/Point;
    .end local v11    # "snapTargets":[Landroid/graphics/Point;
    .end local v12    # "thresh":F
    :goto_1
    return-object v9

    .line 227
    .restart local v6    # "tmpBounds":Landroid/graphics/Rect;
    .restart local v7    # "distance":F
    .restart local v8    # "i":I
    .restart local v10    # "snapTarget":Landroid/graphics/Point;
    .restart local v11    # "snapTargets":[Landroid/graphics/Point;
    .restart local v12    # "thresh":F
    :cond_2
    invoke-direct {p0, p2, p1, v9}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 229
    .end local v6    # "tmpBounds":Landroid/graphics/Rect;
    .end local v7    # "distance":F
    .end local v8    # "i":I
    .end local v10    # "snapTarget":Landroid/graphics/Point;
    .end local v11    # "snapTargets":[Landroid/graphics/Point;
    .end local v12    # "thresh":F
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 231
    invoke-direct {p0, p2, p1, v9}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 234
    :cond_4
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 235
    .restart local v6    # "tmpBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v11, v0, [Landroid/graphics/Point;

    .line 236
    .restart local v11    # "snapTargets":[Landroid/graphics/Point;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 238
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 237
    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 239
    new-instance v0, Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v11, v8

    .line 236
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 241
    :cond_5
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v11}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    .line 242
    .restart local v10    # "snapTarget":Landroid/graphics/Point;
    iget v0, v10, Landroid/graphics/Point;->x:I

    iget v1, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "movementBounds"    # Landroid/graphics/Rect;
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .param p5, "dragStartPosition"    # Landroid/graphics/Point;

    .prologue
    .line 110
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v7, "intersectStackBounds":Landroid/graphics/Rect;
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 113
    .local v6, "intersect":Landroid/graphics/Point;
    iget v0, v6, Landroid/graphics/Point;->x:I

    iget v1, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 114
    invoke-virtual {p0, p1, v7}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 24
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;
    .param p3, "velX"    # F
    .param p4, "velY"    # F
    .param p5, "dragStartPosition"    # Landroid/graphics/Point;

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/4 v12, 0x1

    .line 125
    .local v12, "isLandscape":Z
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 126
    .local v17, "x":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    .line 129
    .local v18, "y":I
    div-float v14, p4, p3

    .line 130
    .local v14, "slope":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v14

    sub-float v19, v20, v21

    .line 133
    .local v19, "yIntercept":F
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 135
    .local v16, "vertPoint":Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 138
    .local v11, "horizPoint":Landroid/graphics/Point;
    const/16 v20, 0x0

    cmpl-float v20, p3, v20

    if-lez v20, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 140
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->findY(FFF)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 143
    const/16 v20, 0x0

    cmpl-float v20, p4, v20

    if-lez v20, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    :goto_2
    move/from16 v0, v20

    iput v0, v11, Landroid/graphics/Point;->y:I

    .line 145
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->findX(FFF)I

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Landroid/graphics/Point;->x:I

    .line 150
    if-eqz v12, :cond_5

    .line 151
    const/16 v20, 0x0

    cmpl-float v20, p3, v20

    if-lez v20, :cond_4

    .line 152
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 159
    .local v13, "maxDistance":I
    :goto_3
    if-lez v13, :cond_a

    .line 161
    if-eqz v12, :cond_7

    move-object/from16 v0, p5

    iget v15, v0, Landroid/graphics/Point;->y:I

    .line 162
    .local v15, "startPoint":I
    :goto_4
    if-eqz v12, :cond_8

    iget v10, v11, Landroid/graphics/Point;->y:I

    .line 163
    .local v10, "endPoint":I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 164
    .local v4, "center":I
    if-ge v15, v4, :cond_9

    if-ge v10, v4, :cond_9

    .line 168
    :cond_0
    if-eqz v12, :cond_b

    move/from16 v20, p3

    :goto_6
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    sub-double v20, v22, v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    .line 168
    div-int v5, v20, v21

    .line 170
    .local v5, "distance":I
    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 172
    if-eqz v12, :cond_d

    .line 173
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v21, p3, v21

    if-lez v21, :cond_c

    .end local v5    # "distance":I
    :goto_7
    add-int v20, v20, v5

    move/from16 v0, v20

    iput v0, v11, Landroid/graphics/Point;->x:I

    .line 177
    :goto_8
    return-object v11

    .line 124
    .end local v4    # "center":I
    .end local v10    # "endPoint":I
    .end local v11    # "horizPoint":Landroid/graphics/Point;
    .end local v12    # "isLandscape":Z
    .end local v13    # "maxDistance":I
    .end local v14    # "slope":F
    .end local v15    # "startPoint":I
    .end local v16    # "vertPoint":Landroid/graphics/Point;
    .end local v17    # "x":I
    .end local v18    # "y":I
    .end local v19    # "yIntercept":F
    :cond_1
    const/4 v12, 0x0

    .restart local v12    # "isLandscape":Z
    goto/16 :goto_0

    .line 138
    .restart local v11    # "horizPoint":Landroid/graphics/Point;
    .restart local v14    # "slope":F
    .restart local v16    # "vertPoint":Landroid/graphics/Point;
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    .restart local v19    # "yIntercept":F
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    goto/16 :goto_1

    .line 143
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    goto/16 :goto_2

    .line 153
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .restart local v13    # "maxDistance":I
    goto :goto_3

    .line 155
    .end local v13    # "maxDistance":I
    :cond_5
    const/16 v20, 0x0

    cmpl-float v20, p4, v20

    if-lez v20, :cond_6

    .line 156
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .restart local v13    # "maxDistance":I
    goto/16 :goto_3

    .line 157
    .end local v13    # "maxDistance":I
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .restart local v13    # "maxDistance":I
    goto/16 :goto_3

    .line 161
    :cond_7
    move-object/from16 v0, p5

    iget v15, v0, Landroid/graphics/Point;->x:I

    .restart local v15    # "startPoint":I
    goto/16 :goto_4

    .line 162
    :cond_8
    iget v10, v11, Landroid/graphics/Point;->x:I

    .restart local v10    # "endPoint":I
    goto/16 :goto_5

    .line 165
    .restart local v4    # "center":I
    :cond_9
    if-le v15, v4, :cond_a

    if-gt v10, v4, :cond_0

    .line 181
    .end local v4    # "center":I
    .end local v10    # "endPoint":I
    .end local v15    # "startPoint":I
    :cond_a
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v20, v20, v17

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v22, v22, v18

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 182
    .local v8, "distanceVert":D
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v20, v20, v17

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v22, v22, v18

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 184
    .local v6, "distanceHoriz":D
    const-wide/16 v20, 0x0

    cmpl-double v20, v8, v20

    if-nez v20, :cond_f

    .line 185
    return-object v11

    .end local v6    # "distanceHoriz":D
    .end local v8    # "distanceVert":D
    .restart local v4    # "center":I
    .restart local v10    # "endPoint":I
    .restart local v15    # "startPoint":I
    :cond_b
    move/from16 v20, p4

    .line 168
    goto/16 :goto_6

    .line 173
    .restart local v5    # "distance":I
    :cond_c
    neg-int v5, v5

    goto/16 :goto_7

    .line 175
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v21, p4, v21

    if-lez v21, :cond_e

    .end local v5    # "distance":I
    :goto_9
    add-int v20, v20, v5

    move/from16 v0, v20

    iput v0, v11, Landroid/graphics/Point;->y:I

    goto/16 :goto_8

    .restart local v5    # "distance":I
    :cond_e
    neg-int v5, v5

    goto :goto_9

    .line 187
    .end local v4    # "center":I
    .end local v5    # "distance":I
    .end local v10    # "endPoint":I
    .end local v15    # "startPoint":I
    .restart local v6    # "distanceHoriz":D
    .restart local v8    # "distanceVert":D
    :cond_f
    const-wide/16 v20, 0x0

    cmpl-double v20, v6, v20

    if-nez v20, :cond_10

    .line 188
    return-object v16

    .line 191
    :cond_10
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-lez v20, :cond_11

    .end local v11    # "horizPoint":Landroid/graphics/Point;
    :goto_a
    return-object v11

    .restart local v11    # "horizPoint":Landroid/graphics/Point;
    :cond_11
    move-object/from16 v11, v16

    goto :goto_a
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 3
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBoundsOut"    # Landroid/graphics/Rect;
    .param p4, "imeHeight"    # I

    .prologue
    .line 330
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 331
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 332
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 331
    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 333
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 334
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 333
    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 335
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p4

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 336
    return-void
.end method

.method public getSizeForAspectRatio(FFII)Landroid/util/Size;
    .locals 9
    .param p1, "aspectRatio"    # F
    .param p2, "minEdgeSize"    # F
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 344
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 345
    .local v3, "smallestDisplaySize":I
    int-to-float v6, v3

    iget v7, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    mul-float/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v1, v6

    .line 349
    .local v1, "minSize":I
    iget v6, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    cmpg-float v6, p1, v6

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    cmpl-float v6, p1, v6

    if-lez v6, :cond_2

    .line 351
    :cond_0
    cmpg-float v6, p1, v8

    if-gtz v6, :cond_1

    .line 353
    move v4, v1

    .line 354
    .local v4, "width":I
    int-to-float v6, v1

    div-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 369
    .local v0, "height":I
    :goto_0
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v0}, Landroid/util/Size;-><init>(II)V

    return-object v6

    .line 357
    .end local v0    # "height":I
    .end local v4    # "width":I
    :cond_1
    move v0, v1

    .line 358
    .restart local v0    # "height":I
    int-to-float v6, v1

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .restart local v4    # "width":I
    goto :goto_0

    .line 363
    .end local v0    # "height":I
    .end local v4    # "width":I
    :cond_2
    iget v6, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    int-to-float v7, v1

    mul-float v5, v6, v7

    .line 364
    .local v5, "widthAtMaxAspectRatioForMinSize":F
    int-to-float v6, v1

    invoke-static {v5, v6}, Landroid/graphics/PointF;->length(FF)F

    move-result v2

    .line 365
    .local v2, "radius":F
    mul-float v6, v2, v2

    .line 366
    mul-float v7, p1, p1

    add-float/2addr v7, v8

    .line 365
    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    .line 367
    .restart local v0    # "height":I
    int-to-float v6, v0

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .restart local v4    # "width":I
    goto :goto_0
.end method

.method public getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 275
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 276
    .local v1, "tmpBounds":Landroid/graphics/Rect;
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 277
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 278
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 277
    div-float v2, v3, v4

    .line 279
    .local v2, "widthFraction":F
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 280
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 279
    div-float v0, v3, v4

    .line 281
    .local v0, "heightFraction":F
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_0

    .line 282
    return v2

    .line 283
    :cond_0
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-ne v3, v4, :cond_1

    .line 284
    add-float v3, v5, v0

    return v3

    .line 285
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_2

    .line 286
    sub-float v3, v5, v2

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    return v3

    .line 288
    :cond_2
    sub-float v3, v5, v0

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v3, v4

    return v3
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    .line 92
    const v1, 0x10e0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    .line 93
    invoke-direct {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->calculateSnapTargets()V

    .line 94
    return-void
.end method

.method public setMinimized(Z)V
    .locals 0
    .param p1, "isMinimized"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    .line 101
    return-void
.end method
